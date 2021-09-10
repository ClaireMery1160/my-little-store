<?php

namespace App\EventDispatcher;

use Psr\Log\LoggerInterface;
use App\Event\ProductViewEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class ProductViewSubscriber implements EventSubscriberInterface
{
    protected $logger;

    public function __construct(LoggerInterface $logger)
    {
        $this->logger = $logger;
    }
    
    public static function getSubscribedEvents()
    {
        return [
            "product.view" => "sendProductViewEmail"
        ];
    }
    
    public function sendProductViewEmail(ProductViewEvent $productViewEvent)
    {
        $this->logger->info("message d'info du logger pour démo uniquement suite au visionnage de la page du produit id " . $productViewEvent->getProduct()->getId());
    }
}