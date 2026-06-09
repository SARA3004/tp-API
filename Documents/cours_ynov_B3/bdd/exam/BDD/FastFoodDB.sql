--Création de la base de données
CREATE DATABASE IF NOT EXISTS fastfood_db;
 
 --Création de la table des Clients
CREATE TABLE fastfood.Clients (
    Client_id INT AUTO_INCREMENT PRIMARY KEY,
    Client_nom VARCHAR(100) NOT NULL,
    Client_email VARCHAR(100) UNIQUE NOT NULL,
    Client_Numtelephone VARCHAR(15),
    Client_Adresse VARCHAR(250)
);

--Création de la table des Menus
CREATE TABLE fastfood.Menus (
    Menu_id INT AUTO_INCREMENT PRIMARY KEY,
    Menu_Nom VARCHAR(100) NOT NULL,
    Menu_Description VARCHAR(400),
    Menu_Prix DECIMAL(5,2) NOT NULL
);

--Création de la table des Produits (chaque produit fait partie d'un menu)
CREATE TABLE fastfood.Produits (
    Produit_id INT AUTO_INCREMENT PRIMARY KEY,
    produit_menu_id INT,
    Produit_nom VARCHAR(100) NOT NULL,
    Produit_description TEXT,
    Produit_prix DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (produit_menu_id) REFERENCES Menus(Menu_id)
);

--Création de la table des Commandes (chaque commande appartient à un client)
CREATE TABLE fastfood.Commandes (
    Commandes_id INT AUTO_INCREMENT PRIMARY KEY,
    Commandes_client_id INT,
    Commandes_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    Commandes_total DECIMAL(10,2) NOT NULL,
   FOREIGN KEY (Commandes_client_id) REFERENCES Clients(Client_id)

);

--Création de la table des Employés (pour gérer les employés du fast food)
CREATE TABLE fastfood.Employes (
    Employes_id INT AUTO_INCREMENT PRIMARY KEY,
	Employes_nom VARCHAR(100) NOT NULL,
	Employes_role VARCHAR(100),
     Employes_date_embauche DATE
);

-- Insertion des données dans la table fastfood.Clients
INSERT INTO fastfood.Clients (Client_nom, Client_email, Client_Numtelephone,  Client_Adresse) 
VALUES
('elise dubois', 'elise.dubois@hotmail.com', '0745855585', '95 rue  eubonne, Paris');
INSERT INTO fastfood.Clients (Client_nom, Client_email, Client_Numtelephone,  Client_Adresse) 
VALUES
('sara tararist', 'sara.tararist@outlook.fr', '0745855585', '18 rue henri dunant , lormont');
INSERT INTO fastfood.Clients (Client_nom, Client_email, Client_Numtelephone,  Client_Adresse) 
VALUES
('Pierre ethane', 'pierre.ethane@outlook.com', '0745855585', '12 rue de la Gare, strasborg');
INSERT INTO fastfood.Clients (Client_nom, Client_email, Client_Numtelephone,  Client_Adresse) 
VALUES
('Sophie charven', 'sophie.charven@outlook.fr', '0745855585', '5 avenue des Champs, Lyon');INSERT INTO fastfood.Clients (Client_nom, Client_email, Client_Numtelephone,  Client_Adresse) 
VALUES
('yanis tutu', 'yanis.tutu@hotmail.com', '0745855585', '18 rue de la boscat, bordeaux');

-- Insertion des données dans la table fastfood.Menus
INSERT INTO fastfood.Menus ( Menu_Nom, Menu_Description , Menu_Prix ) VALUES
('Menu Classique', 'Burger, Frites, Boisson', 8.50);
INSERT INTO fastfood.Menus ( Menu_Nom, Menu_Description , Menu_Prix ) VALUES
('Menu Végétarien', 'Burger végétarien, Frites, Boisson', 7.90);
INSERT INTO fastfood.Menus ( Menu_Nom, Menu_Description , Menu_Prix ) VALUES
('Menu Maxi', 'Burger XXL, Frites, Boisson', 11.50);
INSERT INTO fastfood.Menus ( Menu_Nom, Menu_Description , Menu_Prix ) VALUES
('Menu Poulet', 'Burger au poulet, Frites, Boisson', 9.00);
INSERT INTO fastfood.Menus ( Menu_Nom, Menu_Description , Menu_Prix ) VALUES
('Menu Enfant', 'Petite portion de frites, Chicken Nuggets, Boisson', 5.50);

-- Insertion des données dans la table fastfood.Produits
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(1, 'Burger Classique', 'Burger avec viande de boeuf, fromage', 5.00);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(1, 'Frites', 'Frites croustillantes', 2.00);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(1, 'Boisson', 'Soda au choix', 1.50);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(2, 'Burger Végétarien', 'Burger avec légumes et fromage', 4.50);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(2, 'Frites', 'Frites croustillantes', 2.00);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(2, 'Boisson', 'Soda au choix', 1.50);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(3, 'Burger XXL', 'Burger géant avec double viande, fromage', 7.00);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(3, 'Frites', 'Frites croustillantes', 2.00);
INSERT INTO fastfood.Produits (Produit_menu_id, Produit_nom, Produit_description, Produit_prix) VALUES
(3, 'Boisson', 'Soda au choix', 1.50);

-- Insertion des données dans la table fastfood.Commandes
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(1, '2023-08-26', 15.00);
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(1, '2023-08-26', 15.00);
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(2, '2023-12-30', 13.00);
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(3,'2024-04-18', 18.00);
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(4, '2024-04-26', 10.00);
INSERT INTO Commandes (Commandes_client_id, Commandes_date, Commandes_total) VALUES(5, '2024-06-08',9.00);

-- Insertion des données dans la table  fastfood.Employés

INSERT INTO Employes (Employes_nom,  Employes_role, Employes_date_embauche) VALUES('Alice renaud', 'Chef de cuisine', '2022-01-15');
INSERT INTO Employes (Employes_nom,  Employes_role, Employes_date_embauche) VALUES('lucas bunois', 'Caissier', '2023-03-01');
INSERT INTO Employes (Employes_nom,  Employes_role, Employes_date_embauche) VALUES('Chloé Martin', 'Serveur', '2023-06-10');
INSERT INTO Employes (Employes_nom,  Employes_role, Employes_date_embauche) VALUES('François Durand', 'Serveur', '2023-02-11');
INSERT INTO Employes (Employes_nom,  Employes_role, Employes_date_embauche) VALUES('Inès Dupont', 'Caissier', '2023-07-01');

--  Création de l'espace de tablespace pour la base de données
 create tablespace fastfood_tbs 
  ADD DATAFILE 'tbs_1.idb'
  AUTOEXTEND_SIZE 100M
  ENCRYPTION='N'
  ENGINE = INNODB;
  
 -- Création d'une table temporaire pour stocker les menus qui coute plus de 10£
  CREATE TEMPORARY TABLE fastfood_temporaire
AS
SELECT Menu_Prix FROM fastfood.Menus
WHERE Menu_Prix > 10;

--  Création de l'UNDO tablespace
CREATE UNDO TABLESPACE undo_fastfood
ADD DATAFILE 'undo_fastfood.ibu';

-- Création des utilisateurs pour la gestion de la base de données
CREATE USER 'admin_bdd'@'localhost' IDENTIFIED BY 'AdminPassword123!';
CREATE USER 'manipulation_commande'@'localhost' IDENTIFIED BY 'UserPassword123!';
CREATE USER 'chef_cuisinier'@'localhost' IDENTIFIED BY 'UserPassword123!';

-- Attribution des privilèges aux utilisateurs
-- Donne tous les privilèges à l'utilisateur admin_user sur toutes les bases de données
GRANT ALL  ON *.* TO 'admin_bdd'@'localhost' ;
-- Donne uniquement le privilège SELECT,UPDATE, DELETE  au clien sur la base de données '  fastfood.Commandes'
GRANT SELECT, INSERT, UPDATE, DELETE ON fastfood.Commandes  TO 'manipulation_commande'@'localhost';

--  Création des roles pour gérer les permissions des utilisateurs
CREATE ROLE 'client_commande';
GRANT SELECT ON fastfood.Commandes TO 'client_commande';

-- Créer un rôle pour les utilisateurs ayant des privilèges de lecture et d'écriture
CREATE ROLE 'gestionnaire_employé';
GRANT SELECT, INSERT, UPDATE, DELETE ON fastfood.Employes TO 'gestionnaire_employé';

CREATE ROLE 'gestionnaire_menu';
GRANT SELECT, INSERT, UPDATE, DELETE ON fastfood.Produits TO 'chef_cuisinier';

-- Attribuer le rôle de lecture uniquement à regular_user
GRANT 'gestionnaire_menu' TO 'chef_cuisinier'@'localhost';
SET DEFAULT ROLE 'gestionnaire_menu' TO 'chef_cuisinier'@'localhost';


-- Modifier le mot de passe de l'utilisateur client_commande
ALTER USER 'manipulation_commande'@'localhost' IDENTIFIED BY 'NewPassword!';

-- Forcer l'expiration du mot de passe tous les 90 jours pour admin_bdd
ALTER USER 'admin_bdd'@'localhost' PASSWORD EXPIRE INTERVAL 90 DAY;

-- Appliquer les privilèges à la base de données
FLUSH PRIVILEGES;

-- Contraintes pour valider l'email et le numéro de téléphone des clients
ALTER TABLE fastfood.Clients 
ADD CONSTRAINT chk_email CHECK (Client_email LIKE '%@%.%'),
ADD CONSTRAINT chk_phone CHECK (Client_Numtelephone REGEXP '^[0-9]{10,15}$');

-- Contraintes pour valider les prix dans les tables Menus et Produits
ALTER TABLE fastfood.Menus 
ADD CONSTRAINT chk_price CHECK (Menu_Prix > 0);

ALTER TABLE fastfood.Produits 
ADD CONSTRAINT chk_produit_price CHECK (Produit_prix > 0);

-- Partitionnement des commandes par année
ALTER TABLE fastfood.Commandes 
PARTITION BY RANGE (YEAR(Commandes_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p_futur VALUES LESS THAN MAXVALUE
);




-- Afficher les clients ayant dépensé plus de 50€ au total, avec leurs commandes
SELECT c.Client_nom, c.Client_email, COUNT(cmd.Commandes_id) AS nb_commandes, SUM(cmd.Commandes_total) AS total_de_dépense
FROM fastfood.Clients c
JOIN fastfood.Commandes cmd ON c.Client_id = cmd.Commandes_client_id
GROUP BY c.Client_id
HAVING total_de_dépense > 50
ORDER BY total_de_dépense DESC;

-- calcule le total des commandes effectuées par chaque client, ainsi que le nombre total de commandes.

SELECT c.Client_nom, c.Client_email, COUNT(cmd.Commandes_id) AS nb_commandes, SUM(cmd.Commandes_total) AS total_commandes
FROM fastfood.Clients c               
JOIN fastfood.Commandes cmd ON c.Client_id = cmd.Commandes_client_id  
GROUP BY c.Client_id                          
ORDER BY total_commandes DESC;             

-- Afficher les menus les plus populaires avec les produits associés et les quantités commandées
SELECT  m.Menu_Nom, m.Menu_Description, p.Produit_nom, SUM(cmd.Commandes_total) AS total_ventes, COUNT(cmd.Commandes_id) AS nb_commandes
FROM fastfood.Menus m
JOIN fastfood.Produits p ON p.produit_menu_id = m.Menu_id
JOIN fastfood.Commandes cmd ON cmd.Commandes_id = p.produit_menu_id
GROUP BY m.Menu_id, p.Produit_id
HAVING nb_commandes > 5
ORDER BY total_ventes DESC;

-- Comparaison des ventes entre les menus végétariens et non-végétariens en avril 2024
SELECT 
    CASE 
        WHEN m.Menu_Description LIKE '%végétarien%' THEN 'Menu Végétarien'
        ELSE 'Menu Non Végétarien'
    END AS type_menu,
    SUM(cmd.Commandes_total) AS total_ventes
FROM fastfood.Menus m
JOIN fastfood.Commandes cmd ON m.Menu_id = cmd.Commandes_menu_id
WHERE 
    cmd.Commandes_date BETWEEN '2024-04-01' AND '2024-04-30';
    
    
--  Création de vues pour simplifier les requêtes courantes
CREATE VIEW fastfood.vw_commandes_clients AS
SELECT  c.Client_email, cmd.Commandes_id, cmd.Commandes_date, cmd.Commandes_total
FROM fastfood.Clients c
JOIN fastfood.Commandes cmd ON c.Client_id = cmd.Commandes_client_id;


-- Création de la vue 'vue_clients_top' pour afficher les clients ayant le plus grand nombre de commandes et le total de leurs dépenses.
CREATE VIEW vue_clients_top AS
SELECT c.Client_nom, c.Client_email, COUNT(cmd.Commandes_id) AS nb_commandes, SUM(cmd.Commandes_total) AS total_commandes
FROM fastfood.Clients c
JOIN fastfood.Commandes cmd ON c.Client_id = cmd.Commandes_client_id
GROUP BY c.Client_id
ORDER BY total_commandes DESC;

-- Création de la vue 'total_ventes_par_menu' 

CREATE VIEW total_ventes_par_menu AS
SELECT m.Menu_id, m.Menu_Nom, SUM(cmd.Commandes_total) AS Total_Ventes
FROM fastfood.Commandes cmd
JOIN fastfood.Produits p ON cmd.Commandes_id = p.produit_menu_id
JOIN fastfood.Menus m ON p.produit_menu_id = m.Menu_id
GROUP BY m.Menu_id, m.Menu_Nom;


-- Accélérer les requêtes fréquentes en créant des index sur des colonnes utilisées fréquemment
CREATE INDEX idx_commandes ON fastfood.Commandes (Commandes_client_id, Commandes_date);
CREATE INDEX idx_client_email ON fastfood.Clients (Client_email);

-- Création de fonctions pour des calculs spécifiques sur les commandes et les menus
DELIMITER //
CREATE FUNCTION calcul_total_commande_client(client_id INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(Commandes_total) INTO total
    FROM fastfood.Commandes
    WHERE Commandes_client_id = client_id;
    RETURN total;
END //
DELIMITER ;

-- tester la fonction
SELECT calcul_total_commande_client(1) AS total_commande;


-- Fonction pour calculer le total des ventes d'un menu (en termes de prix) pour un menu spécifique.
DELIMITER //
CREATE FUNCTION total_commandes_menu(menu_id INT) 
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(Produit_prix) INTO total
    FROM fastfood.Produits
    WHERE produit_menu_id = menu_id;
    RETURN total;
END //
DELIMITER ;


-- Fonction pour appliquer une remise et un bonus sur les commandes
DELIMITER //

CREATE FUNCTION AppliquerRemiseEtBonus(ClientID INT) RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE commande_id INT;
    DECLARE commande_total DECIMAL(10,2);
    DECLARE total_apres_remise DECIMAL(10,2) DEFAULT 0;
    DECLARE compteur INT DEFAULT 0;

    -- Curseur pour récupérer toutes les commandes du client
    DECLARE cur CURSOR FOR 
        SELECT Commandes_id, Commandes_total 
        FROM fastfood.Commandes 
        WHERE Commandes_client_id = ClientID;
    
    -- Gestion d'erreur : Arrêter la boucle quand il n'y a plus de commandes
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

   
    OPEN cur;

    --  Appliquer une remise de 10%
    read_loop: WHILE done = 0 DO
        FETCH cur INTO commande_id, commande_total;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Appliquer la remise
        SET commande_total = commande_total * 0.90;
        UPDATE fastfood.Commandes 
        SET Commandes_total = commande_total
        WHERE Commandes_id = commande_id;
        SET total_apres_remise = total_apres_remise + commande_total;
    END WHILE;
    CLOSE cur;

    --  Afficher 3 fois un message de confirmation
    boucle_confirmation: LOOP
        SET compteur = compteur + 1;
        INSERT INTO fastfood.Logs (Message) VALUES ('Remise appliquée avec succès.');
        IF compteur >= 3 THEN
            LEAVE boucle_confirmation;
        END IF;
    END LOOP;

    --  Vérifier si le total dépasse 50€, sinon ajouter un bonus de 5€
    check_total: REPEAT
        IF total_apres_remise < 50 THEN
            SET total_apres_remise = total_apres_remise + 5;
        END IF;
    UNTIL total_apres_remise >= 50 END REPEAT;

    -- Retourner le total final après remise et bonus
    RETURN total_apres_remise;
END //

DELIMITER ;












