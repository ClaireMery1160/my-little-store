<?php

namespace App\DataFixtures;

use Faker\Factory;
use App\Entity\Product;
use App\Entity\Category;
use Doctrine\Persistence\ObjectManager;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Symfony\Component\String\Slugger\SluggerInterface;

class AppFixtures extends Fixture
{
    protected $slugger;

    public function __construct(SluggerInterface $slugger)
    {
        $this->slugger = $slugger;
    }

    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('fr-FR');
        // ci-dessous après ajout librairie liorchamla/faker-price
        // addProvider permet d'ajouter des méthodes
        // on veut ajouter une instance d'une extension qu'on vient d'installer : une nvle instance de prices
        // avecle code ci-essous, *faker a une nouvelle méthode price
        $faker->addProvider(new \Liior\Faker\Prices($faker)); // on passe l'instance de faker pour qu'elle soit enrichie par ce provider
        $faker->addProvider(new \Bezhanov\Faker\Provider\Commerce($faker));
        $faker->addProvider(new \Bluemmb\Faker\PicsumPhotosProvider($faker));

        // création de catégories
        for ($c = 0; $c < 3; $c++) {
            $category = new Category;
            $category->setName($faker->department) // department vient de la libraire Bezhanov,elle signifie categorie de produit, et non departement
                ->setSlug(strtolower($this->slugger->slug($category->getName())));

            $manager->persist($category);

            //Pour chaque categorie, je vais créer un nomre random entre 15 et 20 produits : 
            for ($p = 0; $p < mt_rand(15, 20); $p++) {
                $product = new Product;
                //$product->setName($faker->sentence(3))
                // A la place de setname($faker->sentence()) j'utilise la nvle méthode de $faker productName grace au provider Commerce de Bezahanov
                $product->setName($faker->productName($faker))
                    //->setPrice(mt_rand(100, 200))
                    // ci-dessous la nouvelle méthode price de $faker
                    ->setprice($faker->price(4000, 20000))
                    // ->setSlug($faker->slug());
                    //ci-dessous, 2eme façon de faire un slug : la nouvelle méthode slug du slugger installé avec le Slugger Interface du composant string
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
