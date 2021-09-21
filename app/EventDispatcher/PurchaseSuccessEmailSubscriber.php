<?php

namespace App\EventDispatcher;

use App\Entity\User;
use App\Entity\Purchase;
use Psr\Log\LoggerInterface;
use App\Event\PurchaseSuccessEvent;
use Symfony\Component\Mime\Address;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpKernel\Event\RequestEvent;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class PurchaseSuccessEmailSubscriber implements EventSubscriberInterface
{
    protected $logger;
    protected $mailer;
    protected $security;

    public function __construct(LoggerInterface $logger, MailerInterface $mailer, Security $security)
    {
        $this->logger = $logger;
        $this->mailer = $mailer;
        $this->security = $security;
    }
   
    public static function getSubscribedEvents(){
        return ["purchase.success" => "sendSuccessEmail"];
    }
    
    public function sendSuccessEmail(PurchaseSuccessEvent $purchaseSuccessEvent)
    {
        // 1. récupérer l'utilisateur actuellement connecté
        // on se fera livrer Security
        /**
         * @var User
         */
        $currentUser = $this->security->getUser();

        // 2. récupérer la commande
        // elle est contenue dans purchaseSuccessEvent
        /**
         * @var Purchase
         */
        $purchase = $purchaseSuccessEvent->getPurchase();

        // 3. Ecrire le mail
        // on aura besoin de TemplatedEmail
        $email = new TemplatedEmail;
        $email->to(new Address($currentUser->getEmail(), $currentUser->getFullName()))
            ->from("contact@mylittlestore.com")
            ->subject("Votre commande n° ({$purchase->getId()}) a bien été comfirmée")
            ->htmlTemplate("email/purchase_success.html.twig")
            ->context([
                "purchase" => $purchase,
                "user" => $currentUser
            ]);

        $this->mailer->send($email);

        // 4. Encoyer le mail 
        // on aura besoin de Mailer
        
        $this->logger->info("Email envoyé pour la commande n° ". $purchaseSuccessEvent->getPurchase()->getId());
    }
}