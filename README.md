
# Google Form Clone

Application web de gestion de sondages (login, inscription, réponses, affichage dynamique, création de sondages) avec HTML, CSS, JavaScript, PHP, MySQL et Bootstrap.

**Dernières mises à jour :**

- Organisation complète du projet : fichiers HTML dans `/html`, fichiers JS dans `/js`, endpoints PHP dans `/php`
- Création de sondages : formulaire dynamique avec ajout automatique d'inputs pour les questions
- Filtrage intelligent : les sondages auxquels l'utilisateur a déjà répondu ne s'affichent plus dans la liste
- Redirection automatique vers la liste des sondages après soumission des réponses
- Envoi sécurisé de `user_id` en POST (body JSON) au lieu de GET (URL)
- Headers CORS présents sur tous les endpoints PHP
- Vérification de l'authentification côté JavaScript avant les appels sensibles

## Fonctionnalités principales

- **Authentification sécurisée** : inscription, login, logout avec mots de passe hashés
- **Création de sondages** : formulaire dynamique avec ajout automatique de questions
- **Réponse aux sondages** : affichage des questions et persistance des réponses (liées à l'utilisateur)
- **Filtrage intelligent** : masquage des sondages déjà complétés par l'utilisateur
- **Limitation des tentatives de login** : système anti-bruteforce avec table `login_attempts`
- **Protection contre les injections SQL** : requêtes préparées partout
- **Navbar dynamique** : boutons adaptés selon l'état de connexion (Create, Logout, Register, Login)
- **Redirection automatique** : retour à la liste après soumission de réponses

## Structure du projet

### Fichiers HTML (`/html`)
- `index.html` : Formulaire de login
- `register.html` : Formulaire d'inscription
- `home.html` : Liste des sondages disponibles
- `questions.html` : Affichage des questions et saisie des réponses
- `create_survey.html` : Création de nouveaux sondages (utilisateurs connectés)

### Fichiers JavaScript (`/js`)
- `script.js` : Logique d'authentification et login
- `register.js` : Logique d'inscription
- `home.js` : Affichage dynamique des sondages (filtrés selon les réponses)
- `questions.js` : Affichage des questions et soumission des réponses
- `create_survey.js` : Gestion du formulaire de création (inputs dynamiques)

### Endpoints PHP (`/php`)
- `login_check.php` : Authentification utilisateur avec anti-bruteforce
- `register.php` : Inscription avec validation et hachage des mots de passe
- `get_sondage.php` : Récupération de la liste des sondages (filtrés par utilisateur)
- `get_questions.php` : Récupération des questions d'un sondage
- `save_answer.php` : Enregistrement des réponses aux questions
- `create_survey.php` : Création de sondages avec questions (transaction SQL)

### Autres
- `style.css` : Styles personnalisés
- `/sql` : Scripts de création et données de la base

## Démarrage

1. Importez la structure SQL et les données depuis le dossier `/sql` dans MySQL.
2. Placez le dossier dans `htdocs` de XAMPP.
3. Lancez Apache et MySQL via XAMPP.
4. Accédez à [http://localhost/google-form/html/index.html](http://localhost/google-form/html/index.html) dans votre navigateur.

## Librairies utilisées

- [Bootstrap 5](https://getbootstrap.com/)

## Sécurité & bonnes pratiques

- Mots de passe hashés (PHP `password_hash`/`password_verify`)
- Validation et assainissement des entrées côté serveur
- Requêtes préparées partout (anti-injection SQL)
- Limitation brute-force sur le login (table `login_attempts`)
- Authentification requise pour les actions sensibles
- Envoi sécurisé de `user_id` en POST (body JSON) au lieu de GET (URL)
- Vérification de la connexion côté client (clé `user_id` dans le localStorage)
- Les requêtes fetch JS ne partent que si l'utilisateur est authentifié
- CORS systématique sur tous les endpoints PHP
- Transactions SQL pour garantir la cohérence des données (création de sondages)
- Structure de projet organisée pour une meilleure maintenabilité

## Exemple de connexion

Après inscription, connectez-vous avec vos identifiants créés.

## TODO & améliorations possibles

Voir le fichier `todo.txt` pour les axes d'amélioration sécurité, validation, UX, etc.
