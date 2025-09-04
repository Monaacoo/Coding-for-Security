CREATE DATABASE lunabank;

USE lunabank;

CREATE TABLE CreditCards (
    CardID INT PRIMARY KEY AUTO_INCREMENT,
    CardNumber VARCHAR(255) NOT NULL,
    CardHolderName VARCHAR(255) NOT NULL,
    ExpirationDate VARCHAR(255),
    CVV VARCHAR(255) NOT NULL,
    BillingAddress VARCHAR(255),
    CreditLimit DECIMAL(10, 2),
    BankName VARCHAR(255)
);

INSERT INTO `CreditCards` (`CardID`, `CardNumber`, `CardHolderName`, `ExpirationDate`, `CVV`, `BillingAddress`, `CreditLimit`, `BankName`) VALUES (1,'Cza72Q92VYPhHtQwP4I6eQ==','e+i7lw2wjU8AxFQ=','CzXADJlviFTOXg==','Cza7','a9GEi9uJijeslA==',7000.00,'e/svu4q0Og=='),(2,'CnMt4pEGWcNcm5g+5CQ2Mg==','epkz4Dze0L8OlQ==','CzXADRzzPndCZw==','CnMt','a9GEi9qwnhYFHw==',10000.00,'e/svu5HGmw=='),(3,'DRgSA76hT/88CS1uUJ12Wg==','fWgLpPdB71NPcA==','CzXAD79LZ/r85g==','DRgS','a9GEi91SZzaO0Q==',15000.00,'e/svu5HGmw=='),(4,'DPXQFu5W2G+WI2Yk7lsxvA==','fDytz7bbMmGR','CzXADlDRS0wD7g==','DPXQ','a9GEi9xOcMBOZQ==',20000.00,'e/svu5HZd2f3'),(5,'D8ZqgmfN5caXtJsJkApvsQ==','f/Nz7LJKtd99bMfmLZI=','CzXAAW+T/c2uKA==','D8Zq','a9GEi99hxYzLLw==',25000.00,'e/svu5HZd2f3'),(6,'Dp2znXxNFx78R3C/VVvzbg==','fmsQL4yKuVEjKszwKV3Y','CzXAClptdtpQ6Q==','Dp2z','a9GEi95edXwiRQ==',30000.00,'e/svu4ORHDA='),(7,'AWVh909f4nltctYQcsyXIQ==','cSiRdSb48RdnChx4R+U=','CzXADRzyChIfLw==','AWVh','a9GEi9GrljqM5g==',35000.00,'e/svu4ORHDA='),(8,'AMdnm+uSDfNDNFX1fw/NzA==','cLcOxaTNoR5L42oMtXY=','CzXADJlvieFCeQ==','AMdn','a9GEi9AXliEJvw==',40000.00,'e/svu4OX130='),(9,'CeasSqVF8V558yhfUvlXKQ==','c9SxHKk6QGX8ghvsMg==','CzXAD79LYbOmtQ==','Ceas','a9GEi9OenmYGqQ==',45000.00,'e/svu4OX130='),(10,'CAlouOBaNc/BLbUb8ij0uQ==','dSKNT2hqp+Tk+dx/MnM=','CzXADlDRQfo/nQ==','CnMt','a9GEi9K+RtGjjQ==',5000.00,'e/svu4q0Og=='),(11,'Cza72Q92VYPhHtQwP4I6eQ==','dIyYlA3GR0QHRRsiDr6R7A==','CzXAAW+T+VRSmA==','DRgS','a9GEi9WLtN/dgg==',6000.00,'e/svu4q0Og=='),(12,'CnMt4pEGWcNcm5g+5CQ2Mg==','dyPE6dUahkEOAEQ=','CzXADRzzM0caWg==','DPXQ','a9GEi9Sr1sw//g==',7000.00,'e/svu5HGmw=='),(13,'DRgSA76hT/88CS1uUJ12Wg==','dg1iuFjqUeQkFzGuqA==','CzXAD79Lbdtxng==','D8Zq','a9GEi9fanb+D5A==',8000.00,'e/svu5HGmw=='),(14,'DPXQFu5W2G+WI2Yk7lsxvA==','aQ9b4OGG1dN/HQORGg==','CzXADlDQpBcXMQ==','Dp2z','a9GEi9a7hhbzhQ==',9000.00,'e/svu5HZd2f3'),(15,'D8ZqgmfN5caXtJsJkApvsQ==','aOhLb9fGcn1fVJ7YOA==','CzXAClpsNn9RgA==','AWVh','a9GEi8lir/pjxQ==',10000.00,'e/svu5HZd2f3'),(16,'Dp2znXxNFx78R3C/VVvzbg==','a8W1Vik6ViCmuch5NQ==','CzXADJluNDE9Kg==','AMdn','a9GEi8hoyDoHgQ==',11000.00,'e/svu4ORHDA='),(17,'AWVh909f4nltctYQcsyXIQ==','aqyfqIoBNrUVGhZExQ==','CzXAD79KU0AMXw==','Ceas','a9GEi8s/7oJPOA==',12000.00,'e/svu4ORHDA='),(18,'AMdnm+uSDfNDNFX1fw/NzA==','beRxozJQNpz1Y2Bi2XM=','CzXADlDRSnKCWw==','CAlo','a9GEi8o2/5SpQw==',13000.00,'e/svu4OX130='),(19,'CeasSqVF8V558yhfUvlXKQ==','b/RvF5amjc6+6Jy1','CzXAD79KUo8rIQ==','Cza7','a9GEi81HOzZCRA==',14000.00,'e/svu4OX130='),(20,'CAlouOBaNc/BLbUb8ij0uQ==','bliS0RdrHcXiT1bp2IM=','CzXADlDRTSujHw==','CnMt','a9GEi8wZ+QHlsg==',15000.00,'e/svu4q0Og=='),(21,'Cza72Q92VYPhHtQwP4I6eQ==','YSYLK//DT7aqBkstBQ==','CzXAAW+T+5LBuw==','DRgS','a9GEi8/Z0RBAnQ==',16000.00,'e/svu4q0Og=='),(22,'CnMt4pEGWcNcm5g+5CQ2Mg==','YM0wRjzyuoo3g0Y=','CzXADRzzMfli7w==','DPXQ','a9GEi87R4TfzTw==',17000.00,'e/svu5HGmw=='),(23,'DRgSA76hT/88CS1uUJ12Wg==','Y9ns2zG6uPQpda+SGA==','CzXAD79KUVz/ZA==','D8Zq','a9GEi8EtxyaByw==',18000.00,'e/svu5HGmw=='),(24,'DPXQFu5W2G+WI2Yk7lsxvA==','eDGle/nvfTUz','CzXADlDRQHlMGA==','Dp2z','a9GEi8BM0nicxA==',19000.00,'e/svu5HZd2f3'),(25,'D8ZqgmfN5caXtJsJkApvsQ==','e+irJqzeDIFKWiM=','CzXAClptc+HbBg==','AWVh','a9GEi8P3dIIe4g==',20000.00,'e/svu5HZd2f3'),(26,'Dp2znXxNFx78R3C/VVvzbg==','epkz4DIWxugt4hAW','CzXADJluNgRlXg==','AMdn','a9GEi9hKb7gfnQ==',21000.00,'e/svu4ORHDA='),(27,'AWVh909f4nltctYQcsyXIQ==','fcqzNXYgRNGYPwfsqw==','CzXAD79LbL+srQ==','Ceas','a9GEi9uJijRhew==',22000.00,'e/svu4ORHDA='),(28,'AMdnm+uSDfNDNFX1fw/NzA==','fC6qGOl3AjZRHvkJmw==','CzXADlDRTmrrDQ==','CAlo','a9GEi9qwnhngmA==',23000.00,'e/svu4OX130=');

SELECT * FROM CreditCards;
SELECT * FROM CreditCardsTrue;


CREATE TABLE CreditCardsTrue (
    CardID INT PRIMARY KEY AUTO_INCREMENT,
    CardNumber VARCHAR(255) NOT NULL,
    CardHolderName VARCHAR(255) NOT NULL,
    ExpirationDate VARCHAR(255),
    CVV VARCHAR(255) NOT NULL,
    BillingAddress VARCHAR(255),
    CreditLimit DECIMAL(10, 2),
    BankName VARCHAR(255)
);