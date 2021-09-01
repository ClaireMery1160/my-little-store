<?php

namespace App\Controller\Purchase;

use App\Entity\Purchase;
use App\Cart\CartService;
use App\Repository\PurchaseRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PurchasePaymentSuccessController extends AbstractController
{
    /**
     * @Route("purchase/terminate/{id}", name="purchase_payment_success")
     * @IsGranted("ROLE_USER")
     */   
    public function success($id, PurchaseRepository $purchaseRepository, EntityManagerInterface $em, CartService $cartService)
    {
        // 1. récupération de la commande

        $purchase = $purchaseRepository->find($id);

        // gestion du cas où 
                            // 1. il n'y a pas de purchase, 
                            // 2. l'utilisateur connecté n'est pas l'auteur de la commande
                            // 3. la commande a séjà été réglée
        if( 
            !$purchase || 
            ( $purchase && $purchase->getUser() !== $this->getUser()) || 
            ( $purchase && $purchase->getStatus() === Purchase::STATUS_PAID)
        ){
            $this->addFlash("warning", "Cette commande n'existe pas.");
            return $this->redirectToRoute("purchases_index");
        }

        // 2. passage de la purchase en statut paid et flush 
        $purchase->setStatus(Purchase::STATUS_PAID);
        $em->flush();

        // 3. vider le panier 
        $cartService->empty();


        // 4. message flash de succès et redirection
        $this->addFlash("success", "La commande a été confirmée et l'ordre de paiement a bien été transmis.");
        return $this->redirectToRoute("purchases_index");

    }

}