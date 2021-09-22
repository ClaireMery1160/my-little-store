<?php

namespace app\Event;

use app\Entity\Product;
use Symfony\Contracts\EventDispatcher\Event;

Class ProductViewEvent extends Event
{
    private $product;

    public function __construct(Product $product)
    {
        $this->product = $product;
    }

    public function getProduct(): Product
    {
        return $this->product;
    }


}