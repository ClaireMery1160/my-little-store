# My-little-store
***
Projet de démonstration d'une simulation de boutique en ligne construite en Symfony 5 et PHP 7.4. 
L'objectif est de créer une solution permettant de créer, modifier, afficher, commander des produits fictifs créés via une fixture en recourant aux principaux composants de Symfony et quelques librairies externes.
Le webdesign n'est pas ici l'objectif de la démonstration. Pour le layout, il a été simplement fait appel à un thème boostrap et à font awsome.
Pour accéder aux fonctionnalités de l'application, utiliser l'un ou l'autre des 2 types de comptes utilisateur:  un user admin : admin@gmail.com  et mot de passe "password", et un simple user : user0@gmail.com ou user1 à user4@gmail.com, et mot de passe "password" également.
***
## Installation du projet en local depuis Github
* modifier le fichier .env pour mettre à jour la connexion avec la bdd avec les paramètres de votre installation locale (type de base, user et mot de passe)
* créer la base de données à l'aide de la commande php bin/console doctrine:database:create et les tables et schémas de la base de données  avec la commande php bin/console make:migration, et php bin/console doctrine:migrations:migrate. Pour avoir les données fictives des produits, catégories et users, lancer la fixture avec la commande php/bin console doctrine:fixtures:load.
* faire la commande composer install pour installer les paquets du fichier composer.json
***
## Vue des principales fonctionnalités et composants mis en place
* HttpFoundation et Routing
* Twig
* Doctrine
* Debug Pack
* Le composant Form
* Evénements de formulaires
* Types de champs
* DataTransformer - pour démonstration uniquement
* Validation des données - recours à l'espace de nom Constraints (Assert)
* Composant Security - UserInterface - Création d'un authenticator spécifique - paramétrage de l'authenticator "form_login" de Symfony
* Formulaire de connexion
* AuthenticationUtils
* Création d'un Voter CategoryVoter - pour démonstration uniquement - pour modification d'une catégorie en fonction des droits de l'utilisateur
* Création d'un cartController et d'un CartService pour les actions d'ajout / suppression / modification dans le panier
* Mise en place du processus de commande : création d'entités Purchase, et PurchaseItem (commandes et lignes de commandes)
* Intégration d'un formulaire de saisie d'informations de livraison et de confirmation de commande
* Intégration d'une vue "Mes commandes"
* Recours à l'API Stripe (en mode dev) pour la gestion des payements via Stripe  -pour tester les paiements, saisir 4242 4242 4242 4242 dans l'input (voire la documentation Stripe pour plus d'informations) 
* Mise en place d'un subscriber pour l'envoi d'emails de confirmations de commande
* Mise en place de Doctrine Lifecycle Callbacks pour automatiser la date de création des commandes et le montant total des commandes
* Mise en place de Doctrine Entity Listeners pour automatiser la création des slugs des produits et catégories
* Ajout du composant Symfony mailer pour l'envoi d'emails suite après une commande passée avec succès
* Ajout d'un filtre twig pour le formatage des prix.
***

### Nota Bene
Certaines fonctionnalités ou fichiers sont présents pour démonstration uniquement, c'est par exemple le cas du fichier CategoryVoter.
