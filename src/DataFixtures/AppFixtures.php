<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Product;
use App\Entity\Category;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use App\Entity\User;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\Security\Core\User\UserInterface;

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
        for($u = 0; $u<5; $u++)
        {
            $user = new User();

            $hash = $this->encoder->encodePassword($user, "password");

            $user->setEmail("user$u@gmail.com")
            ->setFullName($faker->name())
            ->setPassword($hash);

            $manager->persist($user);
        }

        // création de catégories
        for ($c = 0; $c < 3; $c++) 
        {
            $category = new Category;
            $category->setName($faker->department) 
                ->setSlug(strtolower($this->slugger->slug($category->getName())));

            $manager->persist($category);

            //Pour chaque categorie, je vais créer un nombre random entre 15 et 20 produits : 
            for ($p = 0; $p < mt_rand(15, 20); $p++) {
                $product = new Product;
                $product->setName($faker->productName($faker))
                    ->setprice($faker->price(4000, 20000))
                    ->setSlug(strtolower($this->slugger->slug($product->getName())))
                    ->setCategory($category)
                    ->setShortDescription($faker->paragraph())
                    ->setMainPicture($faker->imageUrl(400, 400, true));
                $manager->persist($product);
            }
        }

        $manager->flush();
    }
}
