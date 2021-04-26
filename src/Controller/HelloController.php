<?php

namespace App\Controller;

use Twig\Environment;
use App\Taxes\Calculator;
use Cocur\Slugify\Slugify;
use Psr\Log\LoggerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HelloController
{
    protected $logger;
    protected $calculator;
    public function __construct(loggerInterface $logger, Calculator $calculator)
    {
        $this->logger = $logger;
        $this->calculator = $calculator;
    }
    /**
     * @Route("/hello/{nom?World}", name="hello")
     */
    public function sayHello($nom = "World", Slugify $slugify, Environment $twig)
    //public function sayHello($nom = World) est une alternative à l'annotation {nom?World}
    {
        $tva = $this->calculator->calcul(100);
        $slugify = new Slugify();
        dump($slugify->slugify("Hello $nom ! Ca va ? "));
        dump($tva);
        dump($twig);

        $this->logger->info("Mon message info de mon logger");
        return new Response("Hello " . $nom . "!");
    }
}
