<?php

namespace App\Form;

use App\Entity\Product;
use App\Entity\Category;
use App\Form\DataTransformer\CentimeTransformer;
use App\Form\Type\PriceType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\CallbackTransformer;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormEvent;
use Symfony\Component\Form\FormEvents;
use Symfony\Component\Form\Extension\Core\Type\NumberType;

class ProductType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, [
                'label' => 'Nom du produit',
                'attr' => [
                    'placeholder' => 'Tapez le nom du produit'
                ]
            ])
            ->add('shortDescription', TextareaType::class, [
                'label' => 'brève description',
                'attr' => [
                    'placeholder' => 'Saississez une description brève pour les utilisatrices / utilisateurs.'
                ]
            ])
            ->add('price', MoneyType::class, [
                'label' => 'prix',
                'attr' => [
                    'placeholder' => 'Renseignez le prix en euros.',
                ],
                'divisor' => 100
            ])
            ->add('mainPicture', UrlType::class, [
                'label' => 'image du produit',
                'attr' => [
                    'placeholder' => 'tapez une url d\'image'
                ]
            ])
            ->add('category', EntityType::class, [
                'label' => 'Catégorie',
                'placeholder' => '-- Choisir une catégorie --',
                'class' => Category::class,
                'choice_label' => function (Category $category) {
                    return strtoupper($category->getName());
                }
            ]);

        // $builder->get('price')->addModelTransformer(new CentimeTransformer);


        // $builder->addEventListener(FormEvents::POST_SUBMIT, function (FormEvent $event) {
        //     $product = $event->getData();
        //     if ($product->getPrice() !== null) {
        //         $product->setPrice($product->getPrice() * 100);
        //     }
        // });

        // $builder->addEventListener(FormEvents::PRE_SET_DATA, function (FormEvent $event) {
        //     //dd($event);
        //     $form = $event->getForm();

        //     /**@var Product */
        //     $product = $event->getData();
        //     if ($product->getPrice() !== null) {
        //         $product->setPrice($product->getPrice() / 100);
        //     }
        //dd($product);

        // if ($product->getId() === null) {
        //     $form->add('category', EntityType::class, [
        //         'label' => 'Catégorie',
        //         'placeholder' => '-- Choisir une catégorie --',
        //         'class' => Category::class,
        //         'choice_label' => function (Category $category) {
        //             return strtoupper($category->getName());
        //         }
        //     ]);
        // }
        // });
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
        ]);
    }
}