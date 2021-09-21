<?php

namespace App\Doctrine\Listener;

use App\Entity\Product;
use Doctrine\Persistence\Event\LifecycleEventArgs;
use Symfony\Component\String\Slugger\SluggerInterface;

Class ProductSlugListener
{
    protected $slugger;
    
    public function __construct(SluggerInterface $slugger)
    {
        $this->slugger = $slugger;
    }
    
    public function prePersist(Product $entity, LifecycleEventArgs $event)
    {
        // $entity = $event->getObject();

        // if(!$entity instanceof Product)
        // {
        //     return;
        // }

        if(empty($entity->getSlug()))
        {
            $entity->setSlug(strtolower($this->slugger->slug($entity->getName())));
        }
    }
}