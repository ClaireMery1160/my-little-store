<?php

namespace App\Controller\Purchase;

use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PurchasePaymentSuccessController extends AbstractController
{
    /**
     * @Route("purchase/terminate/{id}", name="purchase_payment_success")
     */   
    public function success()
    {

    }

}