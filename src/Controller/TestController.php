<?php

namespace App\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TestController
{
    /**
     * @Route("/", name="index")
     */
    public function index()
    {
        dd("ça fonctionne");
    }

    /**
     * @Route("/test/{age<\d+>?0}", name="test", methods={"GET", "POST"}, host="localhost", schemes={"http","https"})
     */
    public function test(Request $request, $age)
    {
        // la ligne ci-dessous est remplacée pat Request $request en param de test
        //$request = Request::createFromGlobals();
        // dump($request);

        // $age = 0;
        // if(!empty($_GET['age']))
        // {
        //     $age = $_GET['age'];
        // }
        // 1. le code ci-dessus est remplacé, avec createFromGobals, par le code ci-dessous
        // 2. si je ne trouve pas la globale age, je remplace par 0
        // $age = $request->query->get('age', 0); 
        //3/ plutôt que de s'intéresser à la query, on va s'interesser aux attributes 
        // de notre route pour trouver le paramètre de route age : 
        // $age = $request->attributes->get('age');
        // 4. on peut substituer la ligne ci-dessus par la mise de $age en param de la fonction test(Request $request, $age)
        // dump($request);
        return new Response("Vous avez $age ans.");


        // dd("vous avez $age ans");
    }
}
