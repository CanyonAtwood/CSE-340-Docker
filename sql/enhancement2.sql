--Query 1
INSERT INTO clients (clientFirstname, clientLastname, clientEmail, clientPassword, clientLevel, comment) VALUES ("Tony", "Stark", "tony@starkent.com", "Iam1ronM@n", 1, "I am the real Ironman");
--Query 2
UPDATE clients SET clientLevel = '3' WHERE clientId = 1;
--Query 3
UPDATE `inventory` SET invDescription = REPLACE(invDescription, 'small interiors', 'spacious interiors') WHERE invMake = 'GM' AND invModel = 'Hummer';
--Query 4
SELECT inventory.invModel, carclassification.classificationId FROM carclassification INNER JOIN inventory ON inventory.classificationId = carclassification.classificationId WHERE carclassification.classificationName = 'SUV'; 
--Query 5 
DELETE FROM inventory WHERE invModel = 'Wrangler' AND invMake = 'Jeep';
--Query 6
UPDATE inventory SET invImage = concat('/phpmotors',invImage), invThumbnail  = concat('/phpmotors', invThumbnail);