# Projet Gossip Sinatra

**Description du projet :**

Ce projet est une application web simple créée avec le framework Sinatra en Ruby. L'objectif principal du projet
est de développer un site web où les utilisateurs peuvent créer et consulter des potins (gossips).
Le projet comprend des fonctionnalités de création, de visualisation, de modification et de suppression de potins,
ainsi que la gestion des commentaires.

**Lancement du projet :**

1. Assurez-vous d'avoir Ruby installé sur votre ordinateur.

2. Exécutez la commande `bundle install` pour installer toutes les dépendances du projet.

3. Dans votre terminal, exécutez la commande `rackup` pour démarrer le serveur Sinatra.

Après avoir suivi ces étapes, vous pourrez accéder à l'application via votre navigateur web en utilisant
l'URL fournie par Sinatra (par défaut, http://localhost:9292/). Vous pourrez créer, consulter et gérer des potins sur le site.

# Gossip Sinatra Project

**Project Description:**

This project is a simple web application created using the Sinatra framework in Ruby. The main goal of the project is to develop
a website where users can create and view gossips. The project includes features for creating, viewing, editing, and deleting gossips,
as well as managing comments.

**Getting Started:**

1. Make sure you have Ruby installed on your computer.

2. Run the `bundle install` command to install all project dependencies.

3. In your terminal, run the `rackup` command to start the Sinatra server.

After following these steps, you'll be able to access the application through your web browser using the URL provided by Sinatra
(by default, http://localhost:9292/). You'll be able to create, view, and manage gossips on the site.


## Utilisation de Rerun à la place de Shotgun

Dans ce projet, j'utilise `rerun` à la place de `shotgun` pour le rechargement automatique d'application Sinatra en mode développement. Cela est dû à des problèmes potentiels qui peuvent survenir lors de l'utilisation de `shotgun` avec la version 1.3 de Rack. `shotgun` peut ne pas fonctionner correctement avec cette version de Rack, ce qui peut entraîner des comportements indésirables et des erreurs.

Je vous recommande d'utiliser `rerun`, car il fournit un mécanisme fiable de rechargement automatique de l'application et permet d'éviter les problèmes mentionnés avec `shotgun`. Pour exécuter votre application avec `rerun`, vous pouvez utiliser la commande suivante :

```bash
rerun -- rackup --port 4567 config.ru
```

## Why I Use Rerun Instead of Shotgun
In my development projects, I've found `rerun` to be a better choice compared to `shotgun` for automatically reloading my Sinatra application. This choice stems from an issue I encountered while using `shotgun` with Rack version 1.3. With this combination, `shotgun` didn't always work as expected, resulting in unexpected behaviors and errors.

To ensure smooth development, I recommend using `rerun` because it provides a dependable way to automatically reload the application without the issues associated with `shotgun`. To run your Sinatra application with `rerun`, simply use the following command:

```bash
rerun -- rackup --port 4567 config.ru
```