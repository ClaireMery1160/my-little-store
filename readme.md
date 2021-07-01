# My-little-store
***
Projet en développement d'une simulation de boutique en ligne construite en Symfony 5 et PHP 7.4. L'objectif est de créer une solution permettant de créer, modifier, afficher des produits fictifs en recourant aux principaux composants de Symfony et quelques librairies externes.
Warnings : 
Les catégories de produits dans le menu ne sont pas foncitonnelles car pas dynamisées encore.
Le lien d'inscription n'est pas encore effectif, c'est normal aussi.
Mais les login  et logout sont effectifs avec un user admin@gmail.com et mot de passe "password" - rappel : c'est une app fictive
ou avec un user simple user0@gmail.com et mot de passe, sans surprise "password"
***
## Installation du projet en local depuis Github
* modifier le fichier .env pour mettre à jour la connexion avec la bdd avec les paramètres de votre installation locale (type de base, user et mot de passe)
* créer la base de données à l'aide de la commande php bin/console doctrine:database:create et les tables et schémas de la base de données  avec la commande php bin/console make:migration, et php bin/console doctrine:migrations:migrate pour avoir les données produits, catégories et users.  
* ou injecter le fichier sql de la bdd en cas de problème de migrations.
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
* Validation des données 
* recours à l'space de nom Constraints (Assert)
* Composant Security - UserInterface - Création d'un authenticator spécifique - paramétrage de l'authenticator "form_login" de Symfony
* Formulaire de connexion
* AuthenticationUtils
* Création d'un Voter CategoryVoter - pour démonstration uniquement - pour modification d'une catégorie en fonction de l'utilisateur créateur de la catégorie (dans CategoryController, on se base en réalité sur un rôle ROLE_ADMIN)
* Création d'un cartController et d'un CartService pour les actions d'ajout / suppression / modification dans le panier
* Mise en place du processus de commande : création des entités Purchase, et PurchaseItem, liées aux entités Product et User
* Intégration d'un formulaire de saisie d'informations de livraison et de confirmation de commande
* Intégration d'une vue "Mes commandes"
***
### Nota Bene
Certaines fonctionnalités sont présentes pour démonstration uniquement, comme le CategoryVoter
