# Gestion de Ludothèque

## Table des matières

- [Description](#description)
- [Fonctionnalités](#fonctionnalités)
  - [Espace Public & Connexion](#espace-public--connexion)
  - [Espace Adhérents](#espace-adhérents)
  - [Espace Administrateur](#espace-administrateur)
- [Système Économique (Coins)](#système-économique-coins)
- [Architecture & Fonctionnement](#architecture--fonctionnement)
  - [Architecture Globale](#architecture-globale)
  - [Zoning de l'Interface](#zoning-de-linterface)
- [Technologies utilisées](#technologies-utilisées)
- [La base de données](#la-base-de-données)
  - [Configuration de la connexion](#configuration-de-la-connexion)
  - [Importation de la base de données (Laragon)](#importation-de-la-base-de-données-laragon)
- [Installation du projet](#installation-du-projet)
  - [Importation dans Eclipse](#importation-dans-eclipse)
  - [Ajout du connecteur JDBC (.JAR)](#ajout-du-connecteur-jdbc-jar)

---

## Description

Ce projet consiste en la conception et la réalisation d'une application de gestion complète pour une **Ludothèque**. L'objectif principal est de moderniser et d'informatiser l'ancien système (basé sur le papier et des tableurs) afin d'éviter les erreurs de saisie, les pertes de données et de centraliser le suivi des stocks et des adhérents.

L'application intègre une interface graphique (IHM) épurée et futuriste (aux tons blancs et gris), un cloisonnement strict des droits selon les rôles (Admin/Adhérent), ainsi qu'une économie interne basée sur une monnaie virtuelle.

---

## Fonctionnalités

### Espace Public & Connexion
- Écran d'accueil sécurisé permettant l'authentification des utilisateurs.
- Formulaire de création de compte pour les nouveaux adhérents.
- Sécurisation des données grâce au hachage des mots de passe.

### Espace Adhérents
- **Consultation du catalogue** : Visualisation des jeux de société, jeux vidéo et livres disponibles.
- **Recherche par filtres** : Tri et recherche rapide des produits dans le catalogue.
- **Gestion du panier** : Ajout de produits avant la validation de la transaction.
- **Espace Personnel** : Suivi du solde de "Coins", historique des achats et suivi des locations en cours (avec possibilité de rendre un produit).
- **Système d'avis** : Possibilité de laisser une note ou un commentaire sur les produits.

### Espace Administrateur
- **Gestion des produits** : Droits complets (CRUD : Ajouter, Modifier, Supprimer) sur le catalogue de jeux et livres.
- **Gestion des adhérents** : Suivi des profils, modification des informations et possibilité de promouvoir un utilisateur au rang d'administrateur.
- **Gestion des stocks et des transactions** : Suivi en temps réel des achats, locations et retours.

---

## Système Économique (Coins)

L'application intègre une monnaie virtuelle interne appelée **"Coins"** pour réguler les échanges :
- Les adhérents utilisent leurs Coins pour louer ou acheter des produits.
- Lors de la revente d'occasion d'un produit ou du retour d'une location, l'adhérent est automatiquement remboursé à la hauteur du prix initialement payé.

---

## Architecture & Fonctionnement

### Architecture Globale
L'application repose sur une architecture client-serveur locale. L'utilisateur interagit avec l'IHM Swing (sur la machine cliente), qui communique directement avec la base de données MySQL via le driver JDBC.

### Zoning de l'Interface
L'application est découpée de manière ergonomique et standardisée :
- **Barre supérieure (Navbar)** : Commune à tous les espaces, elle contient trois boutons de navigation : *Boutique*, *Votre Espace*, et *Déconnexion*.
- **Zone Principale (Boutique)** : Affiche le Panier à gauche et le Catalogue filtrable au centre. Si le compte est Administrateur, un panneau d'actions de gestion s'affiche sur la droite.
- **Zone Espace Personnel (Votre Espace)** : Sépare distinctement les produits achetés des produits en cours de location.

---

## Technologies utilisées

- **Java** — Langage de programmation orienté objet (Logique métier).
- **Java Swing** — Bibliothèque pour le développement de l'interface graphique (IHM).
- **MySQL** — Système de gestion de base de données relationnelle.
- **JDBC (Java Database Connectivity)** — API de connexion entre Java et la base de données.
- **Eclipse IDE** — Environnement de développement principal.
- **MAMP / Laragon** — Environnements de serveurs locaux pour l'hébergement MySQL.

---

## La base de données

La base de données s'appelle **ja_va**. Elle gère l'ensemble des relations entre les adhérents, les produits, les transactions et le système de monnaie virtuelle.

### Configuration de la connexion

Par défaut, le projet est configuré pour l'environnement **Laragon** (Port `3306`). Voici le code de la classe `base_de_donnee.java` :

```java
package ludotheque;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class base_de_donnee {

    private static final String URL = "jdbc:mysql://localhost:3306/ja_va?serverTimezone=UTC";
    private static final String LOGIN = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, LOGIN, PASSWORD);
    }
}
