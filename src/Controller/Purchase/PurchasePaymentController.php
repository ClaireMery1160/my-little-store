<?php

namespace app\Controller\Purchase;

use app\Entity\Purchase;
use app\Stripe\StripeService;
use app\Repository\PurchaseRepository;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PurchasePaymentController extends AbstractController
{
    /**
     * @Route("/purchase/pay/{id}", name="purchase_payment_form")
     * @IsGranted("ROLE_USER")
     */   
    public function showCardForm($id, PurchaseRepository $purchaseRepository, StripeService $stripeService)
    {
        $purchase = $purchaseRepository->find($id);  

        if( 
            !$purchase || 
            ( $purchase && $purchase->getUser() !== $this->getUser()) || 
            ( $purchase && $purchase->getStatus() === Purchase::STATUS_PAID)
        ){
            return $this->redirectToRoute('cart_show');
        }

       $intent = $stripeService->getPaymentIntent($purchase);

        return $this->render('purchases/payment.html.twig', [
            "clientSecret" => $intent->client_secret,
            "purchase" => $purchase
        ]);
    }
}