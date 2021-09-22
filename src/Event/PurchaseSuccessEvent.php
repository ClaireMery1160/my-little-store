<?php

namespace app\Event;


use app\Entity\Purchase;
use Symfony\Contracts\EventDispatcher\Event;

Class PurchaseSuccessEvent extends Event
{
    private $purchase;

    public function __construct(Purchase $purchase)
    {
        $this->purchase = $purchase;
    }

    public function getPurchase(): Purchase
    {
        return $this->purchase;
    }
}