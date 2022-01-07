-- Adminer 4.8.1 MySQL 5.5.5-10.3.31-MariaDB-0+deb10u1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `wnp` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `wnp`;

DROP TABLE IF EXISTS `agence`;
CREATE TABLE `agence` (
  `IdAgence` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Libelle` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Telephone` varchar(50) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Telephone2` varchar(50) NOT NULL,
  `Code_Region` int(11) NOT NULL,
  PRIMARY KEY (`IdAgence`),
  KEY `agence_Region_FK` (`Code_Region`),
  CONSTRAINT `agence_Region_FK` FOREIGN KEY (`Code_Region`) REFERENCES `Region` (`Code_Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `agence` (`IdAgence`, `Nom`, `Libelle`, `Adresse`, `Telephone`, `Mail`, `Telephone2`, `Code_Region`) VALUES
(0,	'Lorie',	'Lara',	'4 rue des Fleurs',	'0242064302',	'lorie@gmail.com',	'0132530456',	39),
(1,	'Agence Myriam',	'Mimi',	'34 rue de la Bérangère ',	'0532051040',	'mimi@gmail.com',	'0254206304',	59),
(2,	'Fifi',	'SFR',	'56 rue de Hyeres',	'0666666666',	'ymir@gmail.com',	'0234040510',	13),
(3,	'Samir',	'IBM',	'64 rue des Indignes',	'0543442940',	'samir@gmail.com',	'0343434343',	16),
(4,	'Paul',	'Maria',	'4 rue des morts',	'0454029302',	'paul@gmail.com',	'0325064939',	60),
(5,	'Salo',	'Mario',	'4 rue des Info',	'0343206430',	'salo@gmail.com',	'0245234500',	2),
(6,	'Sara',	'Sir',	'4 rue des Sires',	'0242054204',	'sara@gmail.com',	'0241050235',	29),
(7,	'Rali',	'Roi',	'45 rue des Reines',	'0234301340',	'rali@gmail.com',	'0324146374',	39),
(8,	'Thomas',	'Tomate',	'543 rue des Tomates',	'0132053052',	'thomas@gmail.com',	'0142057503',	42),
(9,	'Emi',	'Eimable',	'123 rue des Aimants',	'0242306450',	'emilie@gmail.com',	'0246487650',	59);

DROP TABLE IF EXISTS `Assistant_Telephonique`;
CREATE TABLE `Assistant_Telephonique` (
  `Num_Matricule` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `dateembauche` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Code_Region` int(11) NOT NULL,
  PRIMARY KEY (`Num_Matricule`),
  KEY `Assistant_Telephonique_Region0_FK` (`Code_Region`),
  CONSTRAINT `Assistant_Telephonique_Region0_FK` FOREIGN KEY (`Code_Region`) REFERENCES `Region` (`Code_Region`),
  CONSTRAINT `Assistant_Telephonique_employe_FK` FOREIGN KEY (`Num_Matricule`) REFERENCES `employe` (`Num_Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Assistant_Telephonique` (`Num_Matricule`, `Nom`, `Prenom`, `adresse`, `dateembauche`, `password`, `Code_Region`) VALUES
(0,	'Kamel',	'Pogba',	'3 rue de la Gorge',	'03022020',	'test',	14),
(1,	'SNCF',	'Jack',	'1 rue de la République',	'20092001',	'test',	59),
(2,	'Paul',	'Mira',	'3 rue de la Frod',	'20022000',	'test',	60),
(3,	'Hiron',	'Mathis',	'4 rue de Tartare',	'20032000',	'test',	7),
(4,	'Rick',	'Jack',	'3 rue de la Fefe',	'20122004',	'test',	42),
(5,	'Lucie',	'Marie',	'4 rue des Stats',	'20012001',	'test',	29),
(6,	'Max',	'Mix',	'2 rue de la Base',	'20032001',	'test',	13),
(7,	'Delle',	'Hp',	'5 rue de l\'Erreur',	'20042001',	'test',	39),
(8,	'Mic',	'Par',	'5 rue des Pirates',	'20052001',	'test',	39),
(9,	'Pab',	'Miral',	'4 rue de la Bar',	'30052001',	'test',	16);

DROP TABLE IF EXISTS `Client`;
CREATE TABLE `Client` (
  `Code_Client` int(11) NOT NULL,
  `Raison` varchar(50) NOT NULL,
  `Siren` varchar(50) NOT NULL,
  `Ape` varchar(50) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Num_tel` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `IdAgence` int(11) NOT NULL,
  PRIMARY KEY (`Code_Client`),
  KEY `Client_agence_FK` (`IdAgence`),
  CONSTRAINT `Client_agence_FK` FOREIGN KEY (`IdAgence`) REFERENCES `agence` (`IdAgence`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Client` (`Code_Client`, `Raison`, `Siren`, `Ape`, `Adresse`, `Num_tel`, `Email`, `IdAgence`) VALUES
(0,	'SFR',	'013T31858130583',	'FEUOB',	'4 rue du Quai',	'0402306503',	'paul@gmail.com',	0),
(1,	'Free',	'FPINRPI3R24T242',	'TOEZZ',	'5 rue de la Jij',	'0425043205',	'jiraya@gmail.com',	1),
(2,	'Orange',	'UBGU4BG2GUZRBF',	'EITDS',	'7 rue des Crapauds',	'0542040506',	'sasu@gmail.com',	2),
(3,	'Dell',	'UBGRUGBA842804',	'URUFD',	'7 rue des Uchiha',	'0458585858',	'uchiha@gmail.com',	3),
(4,	'HP',	'BUGROOURZABG45',	'UTIZE',	'7 rue de Gaara',	'0404040404',	'gaara@gmail.com',	4),
(5,	'Microsoft',	'FORUBGAURBG5',	'IRIFO',	'8 rue de Hinata',	'0505050505',	'hinata@gmail.com',	5),
(6,	'Apple',	'OUJBRGOUABG',	'JRJFO',	'5 rue de Kiba',	'0606060606',	'kiba@gmail.com',	6),
(7,	'Cisco',	'BOVFRBVAPUBV',	'PRIHJ',	'8 rue d\'Itachi',	'0101010101',	'itachi@gmail.com',	7),
(8,	'Intel',	'PIRBPIABVPIAPIVAB',	'IRUBF',	'8 rue de Sasori',	'0506060606',	'sasori@gmail.com',	8),
(9,	'Github',	'IVSNRV0IARVIA0I',	'IRFKA',	'8 rue de Pain',	'0740023030',	'pain@gmail.com',	9);

DROP TABLE IF EXISTS `Contrat_Maintenance`;
CREATE TABLE `Contrat_Maintenance` (
  `NumerodeContrat` int(11) NOT NULL,
  `dateSignature` varchar(50) NOT NULL,
  `dateEcheance` varchar(50) NOT NULL,
  `Date_Renouvellement` varchar(50) NOT NULL,
  `Code_Client` int(11) NOT NULL,
  `RefTypeContrat` int(11) NOT NULL,
  PRIMARY KEY (`NumerodeContrat`),
  UNIQUE KEY `Contrat_Maintenance_Client_AK` (`Code_Client`),
  KEY `Contrat_Maintenance_TypeContrat0_FK` (`RefTypeContrat`),
  CONSTRAINT `Contrat_Maintenance_Client_FK` FOREIGN KEY (`Code_Client`) REFERENCES `Client` (`Code_Client`),
  CONSTRAINT `Contrat_Maintenance_TypeContrat0_FK` FOREIGN KEY (`RefTypeContrat`) REFERENCES `TypeContrat` (`RefTypeContrat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Contrat_Maintenance` (`NumerodeContrat`, `dateSignature`, `dateEcheance`, `Date_Renouvellement`, `Code_Client`, `RefTypeContrat`) VALUES
(0,	'02022000',	'02022000',	'02022002',	0,	1),
(1,	'02022000',	'02022000',	'02022003',	1,	2),
(2,	'02022000',	'02022000',	'03022000',	2,	3),
(3,	'02022000',	'02022000',	'02022030',	3,	4),
(4,	'30102021',	'30102021',	'30102023',	4,	5),
(5,	'30102021',	'30102021',	'30102024',	5,	6),
(6,	'30102021',	'30102021',	'30102025',	6,	7),
(7,	'25072005',	'25072005',	'25072007',	7,	8),
(8,	'25072005',	'25072005',	'25072006',	8,	9),
(9,	'25072005',	'25072005',	'25072009',	9,	10);

DROP TABLE IF EXISTS `Controller`;
CREATE TABLE `Controller` (
  `NumSerie` int(11) NOT NULL,
  `Numero_Fiche` int(11) NOT NULL,
  `temps_passe` varchar(50) DEFAULT NULL,
  `commentaire` varchar(50) DEFAULT NULL,
  KEY `Controller_NumSerie_FK` (`NumSerie`),
  KEY `Controller_Numero_Fiche_FK` (`Numero_Fiche`),
  CONSTRAINT `Controller_NumSerie_FK` FOREIGN KEY (`NumSerie`) REFERENCES `Materiel` (`NumSerie`),
  CONSTRAINT `Controller_Numero_Fiche_FK` FOREIGN KEY (`Numero_Fiche`) REFERENCES `Intervention` (`Numero_Fiche`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Controller` (`NumSerie`, `Numero_Fiche`, `temps_passe`, `commentaire`) VALUES
(0,	0,	'1',	'Done'),
(1,	1,	'3',	'Done'),
(2,	2,	'4',	'Failed'),
(3,	3,	'10',	'Done'),
(4,	4,	'5',	'Failed'),
(5,	5,	'3,5',	'Failed'),
(6,	6,	'0,5',	'Done'),
(7,	7,	'25',	'Done'),
(8,	8,	'4',	'Done'),
(9,	9,	'1,5',	'Done');

DROP TABLE IF EXISTS `employe`;
CREATE TABLE `employe` (
  `Num_Matricule` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `dateembauche` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Num_Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `employe` (`Num_Matricule`, `Nom`, `Prenom`, `adresse`, `dateembauche`, `password`, `role`) VALUES
(0,	'Gallouj',	'Naim',	'6 rue des cranes',	'20012015',	'issou',	0),
(1,	'Vidrequin',	'Josue',	'6 rue des enceintes',	'30042003',	'muscu',	1),
(2,	'Jara',	'Mia',	'3 rue de la Joconde',	'20022003',	'test',	0),
(3,	'Jira',	'Pat',	'6 rue Carre',	'30022010',	'test',	0),
(4,	'Pi',	'Cube',	'4 rue des marchands',	'03032004',	'test',	1),
(5,	'Pa',	'Rat',	'3 rue des fontaines',	'20032003',	'test',	0),
(6,	'Paro',	'Miam',	'4 rue de la Coridor',	'04122004',	'test',	0),
(7,	'Salomon',	'Marie',	'5 rue des Vautours',	'03122020',	'test',	0),
(8,	'azerty',	'ytreza',	'4 rue de la Fontane',	'02032003',	'test',	0),
(9,	'UBEF',	'ZUBG',	'4 rue de la mirabelle',	'04042020',	'test',	0);

DROP TABLE IF EXISTS `Famille_de_produit`;
CREATE TABLE `Famille_de_produit` (
  `code_famille` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`code_famille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Famille_de_produit` (`code_famille`, `libelle`) VALUES
(0,	'Processeur'),
(1,	'Ordi'),
(2,	'Souris'),
(3,	'Switch'),
(4,	'Routeur'),
(5,	'Ecran'),
(6,	'Casque'),
(7,	'Ecouteurs'),
(8,	'Carte mère'),
(9,	'Carte graphique');

DROP TABLE IF EXISTS `Intervention`;
CREATE TABLE `Intervention` (
  `Numero_Fiche` int(11) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `date_visite` varchar(50) NOT NULL,
  `heure_visite` varchar(50) NOT NULL,
  `Num_Matricule` int(11) NOT NULL,
  `Code_Client` int(11) NOT NULL,
  PRIMARY KEY (`Numero_Fiche`),
  KEY `Intervention_Technicien_FK` (`Num_Matricule`),
  KEY `Intervention_Client0_FK` (`Code_Client`),
  CONSTRAINT `Intervention_Client0_FK` FOREIGN KEY (`Code_Client`) REFERENCES `Client` (`Code_Client`),
  CONSTRAINT `Intervention_Technicien_FK` FOREIGN KEY (`Num_Matricule`) REFERENCES `Technicien` (`Num_Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Intervention` (`Numero_Fiche`, `adresse`, `date_visite`, `heure_visite`, `Num_Matricule`, `Code_Client`) VALUES
(0,	'34 rue des Peupliers',	'01012000',	'2000',	0,	0),
(1,	'34 rue des Poulpes',	'20012000',	'2000',	1,	1),
(2,	'34 rue des Froces',	'20012000',	'2000',	2,	2),
(3,	'34 rue des Riz',	'20022001',	'2000',	3,	3),
(4,	'34 rue des Risoto',	'20012001',	'2000',	4,	4),
(5,	'52 rue des Cerises',	'20032001',	'1400',	5,	5),
(6,	'52 rue des Girondes',	'20052004',	'2000',	6,	6),
(7,	'52 rue des Surfers',	'12032004',	'1200',	7,	7),
(8,	'52 rue des Cellulaires',	'30022010',	'1500',	8,	8),
(9,	'52 rue des Templiers',	'20102003',	'1100',	9,	9);

DROP TABLE IF EXISTS `Materiel`;
CREATE TABLE `Materiel` (
  `NumSerie` int(11) NOT NULL,
  `date_vente` varchar(50) NOT NULL,
  `date_installation` varchar(50) NOT NULL,
  `prix_vente` varchar(50) NOT NULL,
  `emplacement` varchar(50) NOT NULL,
  `Ref` int(50) NOT NULL,
  `NumerodeContrat` int(50) NOT NULL,
  `Code_Client` int(50) NOT NULL,
  PRIMARY KEY (`NumSerie`),
  UNIQUE KEY `Materiel_Maintenance_AK` (`Code_Client`),
  KEY `Materiel_Ref_FK` (`Ref`),
  KEY `Materiel_NumerodeContrat_FK` (`NumerodeContrat`),
  CONSTRAINT `Materiel_NumerodeContrat_FK` FOREIGN KEY (`NumerodeContrat`) REFERENCES `Contrat_Maintenance` (`NumerodeContrat`),
  CONSTRAINT `Materiel_Ref_FK` FOREIGN KEY (`Ref`) REFERENCES `TypeMateriel` (`Ref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Materiel` (`NumSerie`, `date_vente`, `date_installation`, `prix_vente`, `emplacement`, `Ref`, `NumerodeContrat`, `Code_Client`) VALUES
(0,	'25072005',	'25072005',	'4000',	'Lille',	0,	0,	0),
(1,	'25072005',	'25072005',	'7492',	'Roubaix',	1,	1,	1),
(2,	'25102003',	'25102003',	'4729',	'Valenciennes',	2,	2,	2),
(3,	'25102003',	'25102003',	'7492',	'Lyon',	3,	3,	3),
(4,	'12092004',	'12092004',	'2039',	'Marseille',	4,	4,	4),
(5,	'12092004',	'12092004',	'7492',	'Paris',	5,	5,	5),
(6,	'12092004',	'12092004',	'7492',	'Grenoble',	6,	6,	6),
(7,	'12092004',	'12092004',	'1209',	'Armantières',	7,	7,	7),
(8,	'01102005',	'01102005',	'8749',	'Lille',	8,	8,	8),
(9,	'01102005',	'01102005',	'9402',	'Angouleme',	9,	9,	9);

DROP TABLE IF EXISTS `Region`;
CREATE TABLE `Region` (
  `Code_Region` int(11) NOT NULL,
  `Libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`Code_Region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Region` (`Code_Region`, `Libelle`) VALUES
(2,	'Aisne'),
(7,	'Ardèche'),
(13,	'Marseille'),
(14,	'Calvados'),
(16,	'Angouleme'),
(29,	'Finistere'),
(39,	'Jura'),
(42,	'Loire'),
(59,	'lille'),
(60,	'Oise');

DROP TABLE IF EXISTS `Technicien`;
CREATE TABLE `Technicien` (
  `Num_Matricule` int(11) NOT NULL,
  `Telephone_Mobile` varchar(50) NOT NULL,
  `Qualification` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `adresse_employe` varchar(50) NOT NULL,
  `dateembauche` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `IdAgence` int(11) NOT NULL,
  PRIMARY KEY (`Num_Matricule`),
  KEY `Technicien_agence0_FK` (`IdAgence`),
  CONSTRAINT `Technicien_agence0_FK` FOREIGN KEY (`IdAgence`) REFERENCES `agence` (`IdAgence`),
  CONSTRAINT `Technicien_employe_FK` FOREIGN KEY (`Num_Matricule`) REFERENCES `employe` (`Num_Matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `Technicien` (`Num_Matricule`, `Telephone_Mobile`, `Qualification`, `adresse`, `Nom`, `Prenom`, `adresse_employe`, `dateembauche`, `password`, `IdAgence`) VALUES
(0,	'0101010101',	'Done',	'7 rue des Silo',	'Malo',	'Mir',	'7 rue des Sili',	'01012000',	'TEST',	0),
(1,	'0404040404',	'Done',	'7 rue des Malheur',	'Malo',	'Mir',	'7 rue des Marons',	'01012000',	'TEST',	1),
(2,	'0404040404',	'Done',	'7 rue des Rapi',	'Raph',	'Ael',	'7 rue des Sara',	'03032000',	'TEST',	2),
(3,	'0404040404',	'Done',	'7 rue des Kara',	'Karr',	'Lary',	'7 rue des Salopette ',	'05032000',	'TEST',	3),
(4,	'0520202020',	'Done',	'7 rue des Rapaces',	'Rihanna',	'Lora',	'7 rue des Fil',	'04042000',	'TEST',	4),
(5,	'0402034020',	'Info',	'7 rue des Romaro',	'Rico',	'Farfelles',	'7 rue des Silicons',	'20022010',	'TEST',	5),
(6,	'0402030203',	'Immo',	'7 rue des Baki',	'Hugo',	'Bark',	'7 rue des Piece',	'02032000',	'TEST',	6),
(7,	'0202020202',	'Secretaire',	'7 rue des Academies',	'Baki',	'Bourse',	'7 rue des Choppers',	'02032010',	'TEST',	7),
(8,	'0402010203',	'Eco',	'7 rue des Jujutsu',	'Jira',	'Pat',	'7 rue des Pirlo',	'02032010',	'TEST',	8),
(9,	'Durable',	'Eco',	'7 rue des Sarcelles',	'Sara',	'Thimo',	'7 rue des Messi',	'02032001',	'TEST',	9);

DROP TABLE IF EXISTS `TypeContrat`;
CREATE TABLE `TypeContrat` (
  `RefTypeContrat` int(11) NOT NULL AUTO_INCREMENT,
  `Detailintervention` varchar(200) NOT NULL,
  `TauxApplicable` varchar(200) NOT NULL,
  PRIMARY KEY (`RefTypeContrat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `TypeContrat` (`RefTypeContrat`, `Detailintervention`, `TauxApplicable`) VALUES
(1,	'Done',	'1'),
(2,	'Done',	'20'),
(3,	'Done',	'21'),
(4,	'Failed',	'-2'),
(5,	'Done',	'1'),
(6,	'Done',	'0'),
(7,	'Failed',	'2'),
(8,	'Done',	'3'),
(9,	'Done',	'4'),
(10,	'Done',	'45');

DROP TABLE IF EXISTS `TypeMateriel`;
CREATE TABLE `TypeMateriel` (
  `Ref` int(11) NOT NULL,
  `Libelle` varchar(50) NOT NULL,
  `code_famille` int(11) NOT NULL,
  PRIMARY KEY (`Ref`),
  KEY `TypeMateriel_Famille_de_produit_FK` (`code_famille`),
  CONSTRAINT `TypeMateriel_Famille_de_produit_FK` FOREIGN KEY (`code_famille`) REFERENCES `Famille_de_produit` (`code_famille`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `TypeMateriel` (`Ref`, `Libelle`, `code_famille`) VALUES
(0,	'Disque de sauvegarde',	0),
(1,	'Alimentation',	1),
(2,	'Carte mère',	2),
(3,	'Processeur',	3),
(4,	'SSD',	4),
(5,	'Disque dur',	5),
(6,	'Lecteur DVD',	6),
(7,	'eMMC',	7),
(8,	'Carte graphique',	8),
(9,	'Memoire RAM',	9);

-- 2022-01-07 21:39:14
