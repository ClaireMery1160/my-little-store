# My-little-store
***
Projet en développement d'une simulation de boutique en ligne construite en Symfony 5 et PHP 7.4. L'objectif est de créer une solution permettant de créer, modifier, afficher des produits fictifs en recourant aux principaux composants de Symfony et quelques librairies externes.
***
## Installation du projet en local depuis Github
* modifier le fichier .env pour mettre à jour la connexion avec la bdd avec les paramètres de votre installation locale (type de base, user et mot de passe)
* créer la base de données à l'aide de la commande php bin/console doctrine:database:create
* créer les tables et schémas de la base de données avec la commande php bin/console make:migration, et php bin/console doctrine:migrations:migrate pour la mise à jour de la base avec les données produits et catégories
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
***
### Nota Bene
Certaines interfaces et classes ont délibérément été laissées dans la liste des importations, même si elles ne sont pas utilisées dans les contrôleurs concernés, pour laisser une trace des services utilisés et connus dans des version antérieures des fichiers. Le code ayant ensuite été refactorisé à plusieurs occasions, pour se rapprocher des best practices, certaines portions de code faisant appel à ces classes et interfaces ont été soit commentées soit retirées. Si les use ont été maintenus, en revanche, c'est essentiellement dans le but d'informer sur les services vus et connus des composants de Symfony ou de librairies, pour chaque contrôleur.

