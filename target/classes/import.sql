INSERT INTO `client` (`adresse`, `mail`, `nom`, `photo`, `prenom`, `sexe`) VALUES ('11 rue ', 'toto@toto.fr', 'TOTO', 'garcon.png', 'toto', 'Homme');
INSERT INTO `client` (`adresse`, `mail`, `nom`, `photo`, `prenom`, `sexe`) VALUES  ('12 rue', 'tata@tata.fr', 'TATA', 'fille.jpg', 'tata', 'Femme');
INSERT INTO `client` (`adresse`, `mail`, `nom`, `photo`, `prenom`, `sexe`) VALUES  ('13 rue', 'inconnue@inconnue.fr', 'INCONNUE', 'inconnue.jpg', 'inconnue', 'non renseigné');

INSERT INTO `fournisseur` (`adresse`, `mail`, `nom`, `photo`, `prenom`) VALUES ('14 rue ', 'f1@f1.fr', 'F1', 'f1.png', 'f1');
INSERT INTO `fournisseur` (`adresse`, `mail`, `nom`, `photo`, `prenom`) VALUES  ('15 rue', 'f2@f2.fr', 'F2', 'f2.jpg', 'f2');
INSERT INTO `fournisseur` (`adresse`, `mail`, `nom`, `photo`, `prenom`) VALUES  ('16 rue', 'f3@f3.fr', 'F3', 'f3.png', 'f3');

INSERT INTO `categorie` (`code_categorie`, `description`) VALUES ('Cat1', 'Description 1');
INSERT INTO `categorie` (`code_categorie`, `description`) VALUES ('Cat2', 'Description 2');
INSERT INTO `categorie` (`code_categorie`, `description`) VALUES ('Cat3', 'Description 3');

INSERT INTO `utilisateur` (`actived`, `mail`, `motDePasse`, `nom`, `photo`, `prenom`) VALUES (b'1', 'admin@mail.com', 'admin', 'admin', NULL, 'admin');
INSERT INTO `utilisateur` (`actived`, `mail`, `motDePasse`, `nom`, `photo`, `prenom`) VALUES (b'1', 'user@mail.com', 'user', 'user', NULL, 'user');

INSERT INTO `role` (`nom_role`, `id_utilisateur`) VALUES ('ROLE_ADMIN', '1');
INSERT INTO `role` (`nom_role`, `id_utilisateur`) VALUES ('ROLE_USER', '2');
INSERT INTO `commande_client` (`codeCommande`, `dateCommande`, `id_client`) VALUES ('azerty', '2019-07-22 00:00:00', '1');