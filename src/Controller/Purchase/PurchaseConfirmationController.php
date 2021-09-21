<?php

namespace App\Controller\Purchase;

use DateTime;
use App\Entity\Purchase;
use App\Cart\CartService;
use App\Entity\PurchaseItem;
use App\Form\CartConfirmationType;
use App\Purchase\PurchasePersister;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class PurchaseConfirmationController extends AbstractController
{
    protected $cartService;
    protected $em;
    protected $persister;
    
    public function __construct(CartService $cartService, EntityManagerInterface $em, PurchasePersister $persister)
    {
        $this->cartService = $cartService;
        $this->em = $em;
        $this->persister = $persister;
    }
    
    /**
     * @Route("/purchase/confirm", name="purchase_confirm")
     * @IsGranted("ROLE_USER", message="Vous devez vous authentifier pour valider votre commande.")
     */  
    public function confirm(Request $request)
    {
        //1. lire les données du formulaire :
        $form =  $this->createForm(CartConfirmationType::class);

        $form->handleRequest($request);

        //2.Si le formulaire n'a pas été soumis - gestion de sortie
        if(!$form->isSubmitted())
        {
            //Message Flash 
            $this->addFlash('warning','Vous devez d\'abord remplir le formulaire de confirmation pour valider votre commande.');
            // Redirection
            $this->redirectToRoute('cart_show');
        }

        //3. User connecté 
        $user = $this->getuser();

        //4. formulaire soumis, user connecté, mais panier vide : gestion de sortie -  
        $cartItems = $this->cartService->getDetailedCartItems();

        if(count($cartItems) === 0)
        {
            $this->addFlash("warning", "Vous ne pouvez pas confirmer de commande si le panier est vide.");
            return $this->redirectToRoute('cart_show');

        }

        //.5 Si tout se passe bien, on crée une Purchase
        /**
         * @var Purchase
         */
        $purchase = $form->getData();

        $this->persister->storePurchase($purchase);
        return $this->redirectToRoute('purchase_payment_form', [
            'id'=>$purchase->getId()
        ]);

    }

}