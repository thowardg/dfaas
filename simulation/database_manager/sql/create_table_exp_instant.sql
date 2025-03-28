CREATE TABLE IF NOT EXISTS `EXPERIMENT_INSTANT` (
    `ID` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Timestamp` DATETIME NOT NULL,
    `NodeID` INTEGER NOT NULL,
    CONSTRAINT `NodeID`
        FOREIGN KEY (`NodeID`)
        REFERENCES `NODE` (`ID`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
);