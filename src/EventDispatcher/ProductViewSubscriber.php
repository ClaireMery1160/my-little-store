<?php

namespace App\EventDispatcher;

use Psr\Log\LoggerInterface;
use App\Event\ProductViewEvent;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mime\Email;
use Symfony\Component\Mime\Address;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class ProductViewSubscriber implements EventSubscriberInterface
{
    protected $logger;
    protected $mailer;

    public function __construct(LoggerInterface $logger, MailerInterface $mailer)
    {
        $this->logger = $logger;
        $this->mailer = $mailer;
    }
    
    public static function getSubscribedEvents()
    {
        return [
            "product.view" => "sendProductViewEmail"
        ];
    }
    
    public function sendProductViewEmail(ProductViewEvent $productViewEvent)
    {
        
        // $email = new Email();
        // $email = new TemplatedEmail;
        // $email->from(new Address("contact@mylittlestore.com", "visite de my little store"))
        // ->to("admin@mylittlestore.com")
        // ->text("un visiteur est sur la page du produit n° " . $productViewEvent->getProduct()->getId())
        // ->subject("visite du produit n°" . $productViewEvent->getProduct()->getId())
        // ->htmlTemplate("email/product_view.html.twig")
        // ->context([
        //     "product" => $productViewEvent->getProduct()
        // ]);

        // $this->mailer->send($email);

        $this->logger->info("message d'info du logger pour démo uniquement suite au visionnage de la page du produit id " . $productViewEvent->getProduct()->getId());
    
    }
}