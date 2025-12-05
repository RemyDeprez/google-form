-- Données de test pour la table `question`
INSERT INTO `question` (`id`, `form_id`, `question_text`) VALUES
-- Sondage Satisfaction (form_id = 1)
(1, 1, 'Êtes-vous satisfait de notre service ?'),
(2, 1, 'Recommanderiez-vous notre entreprise à un ami ?'),
(3, 1, 'Comment évalueriez-vous la rapidité de notre support ?'),
-- Sondage Produit (form_id = 2)
(4, 2, 'Le produit répond-il à vos attentes ?'),
(5, 2, 'Quelle fonctionnalité préférez-vous dans le produit ?'),
(6, 2, 'Avez-vous rencontré des problèmes avec le produit ?'),
-- Sondage Événement (form_id = 3)
(7, 3, 'Comment avez-vous entendu parler de l’événement ?'),
(8, 3, 'L’organisation de l’événement était-elle satisfaisante ?'),
(9, 3, 'Participeriez-vous à un prochain événement ?'),
-- Sondage Service (form_id = 4)
(10, 4, 'Le service a-t-il répondu à vos besoins ?'),
(11, 4, 'Comment jugez-vous la qualité du service ?'),
(12, 4, 'Avez-vous des suggestions pour améliorer le service ?'),
-- Sondage Expérience (form_id = 5)
(13, 5, 'Votre expérience globale a-t-elle été positive ?'),
(14, 5, 'Qu’est-ce qui vous a le plus marqué lors de votre expérience ?'),
(15, 5, 'Reviendriez-vous utiliser nos services ?');
