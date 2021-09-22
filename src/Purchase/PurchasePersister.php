<?php

namespace app\Purchase;

use app\Cart\CartService;
use DateTime;
use app\Entity\Purchase;
use app\Entity\PurchaseItem;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Security;

class PurchasePersister
{
    protected $security;
    protected $cartService;
    protected $em;

    public function __construct(Security $security, CartService $cartService, EntityManagerInterface $em)
    {
        $this->security = $security;
        $this->cartService = $cartService;
        $this->em = $em;
    }
    
    public function storePurchase(Purchase $purchase)
    {
        //6. On lie la Purchase créée à l'utilisateur connecté
        $user = $this->security->getUser();
        $purchase->setUser($user);

        // $purchase->setTotal($this->cartService->getTotal());
        // ligne ci-dessus remplacée par un callback ORM preflush
        
        $this->em->persist($purchase);

        //7. On lie la Purchase aux produits qui sont dans le panier
        foreach($this->cartService->getDetailedCartItems() as $cartItem)
        {
            $purchaseItem = new PurchaseItem;
            $purchaseItem->setPurchase($purchase)
                        ->setProduct($cartItem->product)
                        ->setProductName($cartItem->product->getName())
                        ->setQuantity($cartItem->qty)
                        ->setTotal($cartItem->getTotal())
                        ->setProductPrice($cartItem->product->getPrice());
            
            $this->em->persist($purchaseItem);
        }

        //8. On enregistre la commande 
        $this->em->flush();
    }

}