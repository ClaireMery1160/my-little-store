<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\User;
use App\Entity\Product;
use App\Entity\Category;
use App\Entity\Purchase;
use App\Entity\PurchaseItem;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    protected $slugger;
    protected $encoder;

    public function __construct(SluggerInterface $slugger, UserPasswordEncoderInterface $encoder)
    {
        $this->slugger = $slugger;
        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('fr-FR');

        $faker->addProvider(new \Liior\Faker\Prices($faker)); 
        $faker->addProvider(new \Bezhanov\Faker\Provider\Commerce($faker));
        $faker->addProvider(new \Bluemmb\Faker\PicsumPhotosProvider($faker));

        // création d'un user Admin
        $admin = new User();

        $hash = $this->encoder->encodePassword($admin, "password");
        
        $admin->setEmail("admin@gmail.com")
        ->setFullName("Admin")
        ->setPassword($hash)
        ->setRoles(["ROLE_ADMIN"]);

        $manager->persist($admin);


        
        // création de 5 users
        $users= [];

        for($u = 0; $u<5; $u++)
        {
            $user = new User();

            $hash = $this->encoder->encodePassword($user, "password");

            $user->setEmail("user$u@gmail.com")
            ->setFullName($faker->name())
            ->setPassword($hash)
            ->setRoles(["ROLE_USER"]);
            
            $users[] = $user;

            $manager->persist($user);
        }

        // création de catégories
        for ($c = 0; $c < 3; $c++) 
        {
            $category = new Category;
            $category->setName($faker->department);
                // ->setSlug(strtolower($this->slugger->slug($category->getName())));

            $manager->persist($category);

            //Pour chaque categorie, je vais créer un nombre random entre 4 et 8 produits : 
            $products=[];

            for ($p = 0; $p < mt_rand(4, 8); $p++) {
                $product = new Product;
                $product->setName($faker->productName($faker))
                    ->setprice($faker->price(4000, 20000))
                    // ->setSlug(strtolower($this->slugger->slug($product->getName())))
                    ->setCategory($category)
                    ->setShortDescription($faker->paragraph())
                    ->setMainPicture($faker->imageUrl(400, 400, true));
                
                    $products[]=$product;

                $manager->persist($product);
            }
        }

        // création de commandes : 
        for ($p =0; $p < mt_rand(3,10); $p++)
        {
            $purchase = new Purchase;

            $purchase->setFullName($faker->name)
                ->setAddress($faker->streetAddress)
                ->setPostalCode($faker->postcode)
                ->setCity($faker->city)
                // ->setTotal(mt_rand(2000,30000))
                ->setUser($faker->randomElement($users))
                ->setPurchasedAt($faker->dateTimeBetween('-3 months'));

            $selectedProducts = $faker->randomElements($products, mt_rand(1, 3));    

            $totalItems = 0;

            foreach ($selectedProducts as $product) {

                $purchaseItem = new PurchaseItem;
                
                $purchaseItem->setProduct($product)
                    ->setQuantity(mt_rand(1, 3))
                    ->setProductName($product->getName())
                    ->setProductPrice($product->getPrice())
                    ->setTotal(
                        $purchaseItem->getProductPrice() * $purchaseItem->getQuantity()
                    )
                    ->setPurchase($purchase);
                
                $totalItems += $purchaseItem->getTotal();
                
                $manager->persist($purchaseItem);

            }


            if($faker->boolean(90))
            {
                $purchase->setStatus(Purchase::STATUS_PAID);
            }
            
            $purchase->setTotal($totalItems);
            
            $manager->persist($purchase);
        }

        $manager->flush();
    }
}
