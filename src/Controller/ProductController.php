<?php

namespace App\Controller;

use App\Entity\Product;
use App\Entity\Category;
use App\Form\ProductType;
use App\Repository\ProductRepository;
use App\Repository\CategoryRepository;
use Doctrine\ORM\EntityManager;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Form\FormFactoryInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\FormType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Symfony\Component\String\Slugger\SluggerInterface;

class ProductController extends AbstractController
{
    /**
     * @Route("/{slug}", name="product_category")
     */
    public function category($slug, CategoryRepository $categoryRepo)
    {
        $category = $categoryRepo->findOneBy([
            'slug' => $slug
        ]);
        // IL faut prévoir la gestion d'erreur si la catégorie saise est erronée
        if (!$category) {
            //throw new NotFoundHttpException("La catégorie demandée n'existe pas.");
            // alternative : 
            throw $this->createNotFoundException("La catégorie demandée n'existe pas.");
        }

        return $this->render('product/category.html.twig', [
            'slug' => $slug,
            'category' => $category
        ]);
    }

    /**
     * @Route("/{category_slug}/{slug}", name="product_show")
     */
    public function show($slug, ProductRepository $productRepository)
    // public function show($slug, ProductRepository $productRepository, UrlGeneratorInterface $urlGenerator)  
    //-- UrlGeneratorInterfaceest remplacé par la fonction path() de twig qui a son générateur d'url
    {
        // dd($urlGenerator->generate('product_category', ['slug' => 'test-de-slug']));

        $product = $productRepository->findOneBy([
            'slug' => $slug
        ]);

        if (!$product) {
            throw $this->createNotFoundException("Le produit demandé n'existe pas");
        }

        return $this->render('product/show.html.twig', [
            'product' => $product
            // 'urlGenerator' => $urlGenerator  -- ceci est remplacé par la fonction path() de twig qui a son générateur d'url
        ]);
    }

    /**
     * @Route("/admin/product/create", name="product_create")
     */
    //public function create(FormFactoryInterface $formFactory,  CategoryRepository $categoryRepo)<= le categoryRepo a servi à générer le tableau d'$options avant d'utiliser EntityType
    public function create(FormFactoryInterface $formFactory, Request $request, SluggerInterface $slugger, EntityManagerInterface $em)
    {
        // $builder = $formFactory->createBuilder(FormType::class, null, ["data_class" => Product::class]);

        // Ce qui est au-dessus est remplacé ci-dessous car la création du formulaire a été confiée à un nouveau FormType ProductType : 
        //$builder = $formFactory->createBuilder(ProductType::class);
        $product = new Product;
        $form = $this->createForm(ProductType::class, $product);

        // $builder->add('name', TextType::class, [
        //     'label' => 'Nom du produit',
        //     'attr' => [
        //         // 'class' => 'form-control',
        //         'placeholder' => 'Tapez le nom du produit'
        //     ]
        // ])
        //     ->add('shortDescription', TextareaType::class, [
        //         'label' => 'brève description',
        //         'attr' => [
        //             // 'class ' => 'form-control',
        //             'placeholder' => 'Saississez une description brève pour les utilisatrices / utilisateurs.'
        //         ]
        //     ])
        //     ->add('price', MoneyType::class, [
        //         'label' => 'prix',
        //         'attr' => [
        //             // 'class ' => 'form-control',
        //             'placeholder' => 'Renseignez le prix en euros.'
        //         ]
        //     ])

        //     ->add('mainPicture', UrlType::class, ['label' => 'image du produit', 'attr' => ['placeholder' => 'tapez une url d\'image']])

        //     // Ce qui se trouve ci-dessous est rendu plus simple avec l'EntityType
        //     // $options = [];

        //     // foreach ($categoryRepo->findAll() as $category) {
        //     //     $options[$category->getName()] = $category->getId();
        //     // };

        //     //$builder->add('category', ChoiceType::class,[...
        //     ->add('category', EntityType::class, [
        //         'label' => 'Catégorie',
        //         // 'attr' => [
        //         //     'class ' => 'form-control'
        //         // ],
        //         'placeholder' => '-- Choisir une catégorie --',
        //         // 'choices' => $options
        //         // [
        //         //     'catégorie 1' => 1,
        //         //     'catégorie 2' => 2
        //         // ]
        //         'class' => Category::class,
        //         // 'choice_label' => 'name'
        //         'choice_label' => function (Category $category) {
        //             return strtoupper($category->getName());
        //         }
        //     ]);

        //$form = $builder->getForm();

        $form->handlerequest($request);
        // $data = $form->getData();
        if ($form->isSubmitted()) {
            // puisque je passe par FormType::class et data_class : Peoduct::class, je peux appeler mon retour $product
            // puisque c'est une entité Product désormais, et non plus un tableau associatif

            //$product = $form->getData();
            // la ligne avec getData() peut-être retirée, car notre $form est capable de travailler directement sur l'objet $produit.
            // pour cela on passe $product en param e createForm, et on créée un produit vide à la base $product = New product;
            $product->setSlug(strtolower($slugger->slug($product->getName())));
            //$data = $form->getData();
            // $product = new Product;
            // $product->setName($data['name'])
            //     ->setshortDescription($data['shortDescription'])
            //     ->setPrice($data['price'])
            //     ->setCategory($data['category']);

            $em->persist($product);
            $em->flush();

            return $this->redirectToRoute('product_show', [
                'category_slug' => $product->getCategory()->getSlug(),
                'slug' => $product->getSlug()
            ]);
        }


        $formView = $form->createView();

        return $this->render('product/create.html.twig', ['formView' => $formView]);
    }

    /**
     * @Route("/admin/product/{id}/edit", name = "product_edit")
     */
    public function edit($id, ProductRepository $productRepository, Request $request, EntityManagerInterface $em, UrlGeneratorInterface $urlGenerator)
    {
        $product = $productRepository->find($id);

        $form = $this->createForm(ProductType::class, $product);

        // $form->setData($product); 
        // cette ligne est remplacée par $product en 2eme argument de createForm, qui rend le mm resultat
        $form->handleRequest($request);

        if ($form->isSubmitted()) {
            // $product = $form->getData();
            // dd($product);
            $em->flush();

            $response = new Response();

            // La partie ci-dessous peut être fusionnée avec la redirection dans la métode redirectToRoute()
            // $url = $urlGenerator->generate('product_show', [
            //     'category_slug' => $product->getCategory()->getSlug(),
            //     'slug' => $product->getSlug()
            // ]);

            //     $response->headers->set('Location', $url);
            //     $response->setStatusCode(302);
            //     return $response;

            // Les 3 lignes de code ci-dessus peuvent être remplacées par un raccourci de AbstractController : $this->redirect($url)
            // return $this->redirect($url);

            // je peux fusionner le travail de l'urlGenerator pour créer $url plus haut, 
            // ET ma redirection, avec juste redirectToRoute
            // redirectToRoute('nom_de_route', 
            // ["param1deRoute" => $product->getParam1(), 
            // ["param2deRoute" => $product->getParam2()])

            return $this->redirectToRoute('product_show', [
                'category_slug' => $product->getCategory()->getSlug(),
                'slug' => $product->getSlug()
            ]);
        }

        // 

        $formView = $form->createView();


        return $this->render('product/edit.html.twig', [
            "product" => $product,
            "formView" => $formView
        ]);
    }
}
