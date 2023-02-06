CREATE TABLE `5fdca422f5f14142fe678936_inferred` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `query` LONGTEXT,
    `module` LONGTEXT,
    `predicate` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;



-- { _id: 5fdca128cdbb4f1c4134023b }
INSERT INTO `5fdca422f5f14142fe678936_inferred` (`ID`, `_id`, `query`, `module`, `predicate`)
    VALUES
        (0, x'5FDCA128CDBB4F1C4134023B', 'subclass_of(''http://www.ease-crc.org/ont/SOMA.owl#Item'',value(''http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter'',''_''))', 'owl_reasoner', 'subclass_of');

