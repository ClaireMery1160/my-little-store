<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class HomeController extends AbstractController
{

    /**
     * @Route("/", name="homepage")
     */
    //public function homepage(EntityManagerInterface $em)
    public function homepage(ProductRepository $productRepo, EntityManagerInterface $em)
    {
        //1. Les méthodes de repository - partie 27

        //$count = $productRepo->count(["price" => 2000]);
        //$product = $productRepo->find(1);
        // dump($product);

        //dump($product->getUpperCaseName());
        //dump($product->getSlug());

        // $products = $productRepo->findAll();
        // dump($products);

        // $products = $productRepo->findBy([
        //     "slug" => 'chaise-en-bois'
        // ]);

        // $products = $productRepo->findBy([], ['name' => "DESC"]);
        // dump($products);


        // 2. Création d'un produit

        //$product = new Product;

        // $product->setName('lit en bois');
        // $product->setPrice(30000);
        // $product->setSlug('lit-en-bois');
        // $product
        //     ->setName('lit en bois')
        //     ->setPrice(30000)
        //     ->setSlug('lit-en-bois');


        // $em->persist($product);
        // $em->flush();

        // dd($product);


        // 3. Modification d'un objet

        // $productRepository = $em->getRepository(Product::class);
        // $product = $productRepository->find(3);
        // dd($product);

        // $productRepository = $em->getRepository(Product::class);

        // Update
        // $product = $productRepository->find(1);
        // $product->setPrice(35000);

        // $em->flush();

        // Delete
        // $product = $productRepository->find(3);
        // $em->remove($product);
        // $em->flush();

        // dd($product);

        // 4. utiliser nos entités dans un template twig partie 34
        $products = $productRepo->findBy([], [], 3);

        return $this->render('home.html.twig', [
            'products' => $products
        ]);
    }
}
