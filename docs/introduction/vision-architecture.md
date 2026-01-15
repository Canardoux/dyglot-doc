# Dyglot — Vision & Architecture

## Vision

Dyglot est avant tout un **outil d’apprentissage fondé sur un moteur**, et non sur une accumulation de fonctionnalités visibles.

Ce moteur a un objectif simple :
> présenter la bonne carte, au bon moment, à l’utilisateur.

Dyglot n’est :
- ni une base de données,
- ni un lecteur audio,
- ni un coach pédagogique autoritaire.

Il peut **s’appuyer** sur ces éléments, mais ils ne constituent pas son cœur.

Le projet est né d’un rejet de solutions existantes jugées trop complexes ou trop configurables, en particulier Anki, où l’utilisateur doit prendre trop de décisions qu’il ne maîtrise pas réellement.

---

## Principes fondateurs

### 1. Simplicité côté utilisateur
L’utilisateur ne doit pas :
- comprendre l’algorithme,
- régler des paramètres abstraits,
- faire des choix techniques.

Il doit seulement répondre honnêtement à une question simple :
> « Est-ce que j’ai compris cette carte ? »

### 2. Le moteur avant l’interface
Dyglot est conçu comme un **moteur de sélection de cartes** :
- indépendant du support (web, desktop, mobile),
- indépendant du stockage,
- indépendant du réseau.

L’interface n’est qu’une **projection** du moteur.

### 3. Pas d’“usine à gaz”
Même si Dyglot peut évoluer :
- plusieurs “classrooms”,
- plusieurs langues,
- plusieurs stratégies pédagogiques,

il est essentiel de **résister à la tentation de tout généraliser trop tôt**.

Chaque complexité doit être justifiée par un usage réel.

---

## Architecture générale

Dyglot est conçu comme un système **multi-cibles**, mais avec un cœur commun.

### Couches principales
┌─────────────────────────┐
│        UI / Frontend    │  (Svelte / SvelteKit)
├─────────────────────────┤
│   Application Logic     │
├─────────────────────────┤
│     Dyglot Engine       │  ← cœur du projet
├─────────────────────────┤
│   Storage Abstraction   │  (SQLite / IndexedDB / Server)
└─────────────────────────┘
### Le moteur Dyglot
Le moteur :
- décide **quelle carte proposer**,
- maintient l’état des cartes (stacks, répétitions, délais),
- est **déterministe et testable**.

Il ne sait rien :
- de l’UI,
- du réseau,
- du support d’exécution.

---

## Cibles de déploiement

Dyglot est pensé pour fonctionner dans plusieurs environnements :

- **Web** (PWA, SSR ou SPA)
- **Desktop** (Electron)
- **Mobile** (Capacitor / iOS / Android)

L’objectif est de **réutiliser exactement le même moteur**, avec le minimum de code spécifique par plateforme.

---

## Stockage des données

Dyglot utilise principalement :
- **SQLite** (desktop, mobile),
- ou un stockage local équivalent (IndexedDB).

Le stockage distant (serveur) n’est **pas une obligation** :
- Dyglot peut fonctionner 100 % offline,
- la synchronisation est un sujet séparé.

---

## État du projet

Dyglot est actuellement :
- en phase d’architecture,
- en exploration technique,
- volontairement non figé.

La priorité n’est pas la complétude fonctionnelle,
mais la **solidité conceptuelle**.

---

## Positionnement open source

Dyglot est distribué sous licence **GPL v3**.

Le projet privilégie :
- la lisibilité du code,
- la pérennité,
- la liberté de modification pour l’utilisateur.

---

## À venir

Cette documentation sera enrichie progressivement :
- description détaillée du moteur,
- format des cartes,
- stratégie de répétition,
- choix techniques par plateforme.

Elle est volontairement **écrite au fil du projet**, et non a posteriori.
