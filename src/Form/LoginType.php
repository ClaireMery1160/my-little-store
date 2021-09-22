<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class LoginType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('email', EmailType::class, [
                'label'=>'adresse email',
                'attr'=>[
                    'placeholder'=>'adresse test : user0@gmail.com ou admin@gmail.com'
                ]
            ])
            ->add('password', PasswordType::class, [
                'label'=>'mot de passe', 
                'attr'=>[
                    'placeholder'=>'mot de passe de test: password'
                ]
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            // Configure your form options here
        ]);
    }
}
