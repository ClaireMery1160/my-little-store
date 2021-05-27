# My-little-store
***
Projet en développement d'une simulation de butique en ligne construite en Symfony 5 et PHP 7.4. L'objectif est de créer une solution permettant de créer, modifier, afficher des produits fictifs en recourant aux principaux composants de Symfony et quelques librairies externes.
***
## Installation du projet en local depuis Github
* modifier le fichier .env pour mettre à jour la connexion avec la bdd avec les paramètres de votre installation locale
* créer la base de données à l'aide de la commande doctrine:database:create
* remplir la base de données avec doctrine:migrations:migrate
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
* DataTransformer
* Validation des données via le composant Validator
* Espace de nom Constraints (Assert)

