<?php

namespace App\Controller\Purchase;

use App\Repository\PurchaseRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PurchasePaymentController extends AbstractController
{
    /**
     * @Route("/purchase/pay/{id}", name="purchase_payment_form")
     */
    
    public function showCardForm($id, PurchaseRepository $purchaseRepository)
    {
        $purchase = $purchaseRepository->find($id);  

        if(!$purchase)
        {
            return $this->redirectToRoute('cart_show');
        }

        \Stripe\Stripe::setApiKey('sk_test_51J8msaGMEl0Mnl7vSkbBjzhWcwwASWO36KpKHdh0LNm8CjGh7OXhEQqc1TILJj1yyoUvBRvZdcP62jzi3t7aF5Oo00OKJzxpKx');
       $intent =  \Stripe\PaymentIntent::create([
            "amount"=> $purchase->getTotal(),
            "currency"=>"eur"
        ]);

        // dd($intent->client_secret);

        return $this->render('purchases/payment.html.twig', [
            "clientSecret"=>$intent->client_secret
        ]);
    }
}