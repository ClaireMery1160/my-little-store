<?php

namespace app\Controller\Purchase;

use app\Entity\User;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PurchasesListController extends AbstractController
{   
    /**
     * @Route("/purchases", name="purchases_index")
     * @IsGranted("ROLE_USER", message="Vous devez vous connecter pour voir vos commandes.")
     */    
    public function index()
    {
        /**
         * @var User
         */
        $user = $this->getUser();

        return $this->render('purchases/index.html.twig', [
                'purchases'=> $user->getPurchases()
            ]);

    }
}