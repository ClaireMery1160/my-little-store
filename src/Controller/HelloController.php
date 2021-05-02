<?php

namespace App\Controller;

use Twig\Environment;
use App\Taxes\Calculator;
use App\Taxes\Detector;
use Cocur\Slugify\Slugify;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class HelloController
{
    // protected $logger;
    // protected $calculator;
    // public function __construct(loggerInterface $logger, Calculator $calculator)

    protected $twig;

    public function __construct(Environment $twig)
    {
        $this->twig = $twig;
        // $this->logger = $logger;
        // $this->calculator = $calculator;
    }

    /**
     * @Route("/hello/{prenom?World}", name="hello")
     */
    public function hello($prenom)
    {
        return $this->render('hello2.html.twig', ["prenom" => $prenom]);
    }
    //1.
    // public function sayHello($nom = World) est une alternative à l'annotation {nom?World}

    //2.
    //public function hello($prenom = "World", Environment $twig)

    //3.
    //public function sayHello($prenom, Slugify $slugify, Environment $twig, Detector $detector)
    // {
    // $slugify = new Slugify();
    // dump($slugify->slugify("Hello $prenom ! Ca va ? "));
    // dump($detector->detect(101, 20));
    // dump($detector->detect(10, 5));
    //return new Response("Hello " . $prenom . "!");

    // 4.
    // $tva = $this->calculator->calcul(100);
    // $this->logger->info("Mon message info de mon logger");

    // 5.
    // $html = $twig->render('hello.html.twig', [
    //     'prenom' => $prenom,
    //     'formateur' => [
    //         "prenom" => "Lior",
    //         "nom" => "chamla",
    //         "age" => 33
    //       ]
    //      'ages' => [
    //        12, 18, 29, 15
    //     ]
    // 'prenom' => $prenom,            
    // 'age' => 13,
    // 'prenoms' => [
    //     'Claire',
    //     'Edith',
    //     'Fabrice',
    //     'Christian'
    // ]
    // ]);

    // $html = $twig->render('hello2.html.twig', [
    //     'prenom' => $prenom,
    //     'formatrice1' => ['prenom' => 'claire', 'nom' => 'dupont'],
    //     'formatrice2' => ['prenom' => 'marie', 'nom' => 'durand']
    // ]);
    //return new Response($html);
    // }


    /**
     *@Route("/example", name="example") 
     */
    public function example()
    {

        return $this->render('example.html.twig', ["age" => 43]);
    }

    protected function render(string $path, array $variables = [])
    {
        $html = $this->twig->render($path, $variables);
        return new Response($html);
    }
}
