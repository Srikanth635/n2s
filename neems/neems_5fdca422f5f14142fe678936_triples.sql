CREATE TABLE `5fdca422f5f14142fe678936_triples` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `graph` LONGTEXT,
    `s` LONGTEXT,
    `p` LONGTEXT,
    `o` LONGTEXT,
    `scope_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_triples_p*` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `String` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_triples_scope` (
    `ID` INTEGER NOT NULL,
    `time_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_triples_scope_time` (
    `ID` INTEGER NOT NULL,
    `since` DOUBLE,
    `until` DOUBLE,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_triples_o*` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `String` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `5fdca422f5f14142fe678936_triples`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__0` FOREIGN KEY (`scope_fk`) REFERENCES `5fdca422f5f14142fe678936_triples_scope`(`ID`);


ALTER TABLE `5fdca422f5f14142fe678936_triples_p*`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__1` FOREIGN KEY (`parent_fk`) REFERENCES `5fdca422f5f14142fe678936_triples`(`ID`);


ALTER TABLE `5fdca422f5f14142fe678936_triples_scope`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__2` FOREIGN KEY (`time_fk`) REFERENCES `5fdca422f5f14142fe678936_triples_scope_time`(`ID`);


ALTER TABLE `5fdca422f5f14142fe678936_triples_o*`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__3` FOREIGN KEY (`parent_fk`) REFERENCES `5fdca422f5f14142fe678936_triples`(`ID`);



-- { _id: 5fdca08ccdbb4f1c41337254 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (0, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (0, 0);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (0, x'5FDCA08CCDBB4F1C41337254', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'tripledbVersionString', '1606751634.0', 0);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (0, 0, 0, 'tripledbVersionString');


-- { _id: 5fdca08ccdbb4f1c41337255 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (1, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (1, 1);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (1, x'5FDCA08CCDBB4F1C41337255', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Ontology', 1);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (0, 1, 0, 'http://www.w3.org/2002/07/owl#Ontology');


-- { _id: 5fdca08ccdbb4f1c41337257 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (2, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (2, 2);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (2, x'5FDCA08CCDBB4F1C41337257', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/2000/01/rdf-schema#label', 'DOLCE+DnS Ultralite', 2);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (1, 2, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133725b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (3, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (3, 3);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (3, x'5FDCA08CCDBB4F1C4133725B', 'DUL', 'http://www.w3.org/2000/01/rdf-schema#comment', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#AnnotationProperty', 3);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (1, 3, 0, 'http://www.w3.org/2002/07/owl#AnnotationProperty');


-- { _id: 5fdca08ccdbb4f1c4133725c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (4, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (4, 4);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (4, x'5FDCA08CCDBB4F1C4133725C', 'DUL', 'http://www.w3.org/2000/01/rdf-schema#label', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#AnnotationProperty', 4);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (2, 4, 0, 'http://www.w3.org/2002/07/owl#AnnotationProperty');


-- { _id: 5fdca08ccdbb4f1c4133725d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (5, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (5, 5);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (5, x'5FDCA08CCDBB4F1C4133725D', 'DUL', 'http://www.w3.org/2002/07/owl#versionInfo', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#AnnotationProperty', 5);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (3, 5, 0, 'http://www.w3.org/2002/07/owl#AnnotationProperty');


-- { _id: 5fdca08ccdbb4f1c4133725e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (6, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (6, 6);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (6, x'5FDCA08CCDBB4F1C4133725E', 'DUL', 'http://www.w3.org/2001/XMLSchema#dateTime', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2000/01/rdf-schema#Datatype', 6);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (4, 6, 0, 'http://www.w3.org/2000/01/rdf-schema#Datatype');


-- { _id: 5fdca08ccdbb4f1c4133725f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (7, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (7, 7);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (7, x'5FDCA08CCDBB4F1C4133725F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 7);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (5, 7, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337260 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (8, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (8, 8);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (8, x'5FDCA08CCDBB4F1C41337260', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 8);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (6, 8, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (7, 8, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (8, 8, 2, 'http://www.w3.org/2002/07/owl#SymmetricProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (9, 8, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c41337261 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (9, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (9, 9);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (9, x'5FDCA08CCDBB4F1C41337261', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 9);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (2, 9, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337262 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (10, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (10, 10);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (10, x'5FDCA08CCDBB4F1C41337262', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 10);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (3, 10, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337263 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (11, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (11, 11);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (11, x'5FDCA08CCDBB4F1C41337263', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 11);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (4, 11, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337265 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (12, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (12, 12);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (12, x'5FDCA08CCDBB4F1C41337265', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 12);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (5, 12, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337266 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (13, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (13, 13);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (13, x'5FDCA08CCDBB4F1C41337266', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''acts for'')', 13);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (6, 13, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337267 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (14, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (14, 14);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (14, x'5FDCA08CCDBB4F1C41337267', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''agisce per'')', 14);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (7, 14, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337268 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (15, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (15, 15);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (15, x'5FDCA08CCDBB4F1C41337268', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 15);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (10, 15, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337269 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (16, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (16, 16);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (16, x'5FDCA08CCDBB4F1C41337269', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 16);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (11, 16, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (12, 16, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (13, 16, 2, 'http://www.w3.org/2002/07/owl#SymmetricProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (14, 16, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c4133726a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (17, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (17, 17);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (17, x'5FDCA08CCDBB4F1C4133726A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 17);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (8, 17, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133726b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (18, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (18, 18);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (18, x'5FDCA08CCDBB4F1C4133726B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 18);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (9, 18, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133726d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (19, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (19, 19);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (19, x'5FDCA08CCDBB4F1C4133726D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 19);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (10, 19, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133726e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (20, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (20, 20);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (20, x'5FDCA08CCDBB4F1C4133726E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''acts through'')', 20);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (11, 20, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133726f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (21, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (21, 21);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (21, x'5FDCA08CCDBB4F1C4133726F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''agisce mediante'')', 21);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (12, 21, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337270 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (22, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (22, 22);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (22, x'5FDCA08CCDBB4F1C41337270', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 22);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (15, 22, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337271 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (23, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (23, 23);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (23, x'5FDCA08CCDBB4F1C41337271', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 23);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (13, 23, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337272 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (24, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (24, 24);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (24, x'5FDCA08CCDBB4F1C41337272', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 24);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (16, 24, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c41337273 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (25, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (25, 25);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (25, x'5FDCA08CCDBB4F1C41337273', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 25);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (17, 25, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c41337274 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (26, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (26, 26);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (26, x'5FDCA08CCDBB4F1C41337274', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 26);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (14, 26, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337275 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (27, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (27, 27);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (27, x'5FDCA08CCDBB4F1C41337275', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 27);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (15, 27, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337277 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (28, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (28, 28);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (28, x'5FDCA08CCDBB4F1C41337277', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 28);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (16, 28, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337278 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (29, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (29, 29);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (29, x'5FDCA08CCDBB4F1C41337278', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2000/01/rdf-schema#label', 'associatedWith', 29);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (17, 29, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337279 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (30, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (30, 30);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (30, x'5FDCA08CCDBB4F1C41337279', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 30);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (18, 30, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133727a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (31, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (31, 31);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (31, x'5FDCA08CCDBB4F1C4133727A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 31);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (19, 31, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133727b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (32, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (32, 32);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (32, x'5FDCA08CCDBB4F1C4133727B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 32);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (18, 32, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133727c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (33, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (33, 33);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (33, x'5FDCA08CCDBB4F1C4133727C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 33);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (19, 33, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133727d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (34, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (34, 34);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (34, x'5FDCA08CCDBB4F1C4133727D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 34);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (20, 34, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133727f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (35, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (35, 35);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (35, x'5FDCA08CCDBB4F1C4133727F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 35);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (21, 35, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337280 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (36, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (36, 36);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (36, x'5FDCA08CCDBB4F1C41337280', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,caratterizza)', 36);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (22, 36, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337281 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (37, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (37, 37);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (37, x'5FDCA08CCDBB4F1C41337281', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,characterizes)', 37);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (23, 37, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337282 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (38, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (38, 38);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (38, x'5FDCA08CCDBB4F1C41337282', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 38);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (20, 38, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337283 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (39, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (39, 39);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (39, x'5FDCA08CCDBB4F1C41337283', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 39);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (21, 39, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337284 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (40, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (40, 40);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (40, x'5FDCA08CCDBB4F1C41337284', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 40);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (24, 40, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337285 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (41, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (41, 41);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (41, x'5FDCA08CCDBB4F1C41337285', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 41);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (25, 41, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337286 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (42, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (42, 42);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (42, x'5FDCA08CCDBB4F1C41337286', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 42);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (26, 42, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337288 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (43, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (43, 43);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (43, x'5FDCA08CCDBB4F1C41337288', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 43);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (27, 43, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337289 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (44, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (44, 44);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (44, x'5FDCA08CCDBB4F1C41337289', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,classifica)', 44);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (28, 44, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133728a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (45, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (45, 45);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (45, x'5FDCA08CCDBB4F1C4133728A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,classifies)', 45);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (29, 45, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133728b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (46, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (46, 46);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (46, x'5FDCA08CCDBB4F1C4133728B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 46);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (22, 46, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133728c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (47, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (47, 47);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (47, x'5FDCA08CCDBB4F1C4133728C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 47);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (23, 47, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133728d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (48, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (48, 48);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (48, x'5FDCA08CCDBB4F1C4133728D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 48);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (30, 48, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133728e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (49, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (49, 49);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (49, x'5FDCA08CCDBB4F1C4133728E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 49);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (31, 49, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133728f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (50, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (50, 50);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (50, x'5FDCA08CCDBB4F1C4133728F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 50);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (32, 50, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337291 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (51, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (51, 51);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (51, x'5FDCA08CCDBB4F1C41337291', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 51);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (33, 51, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337292 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (52, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (52, 52);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (52, x'5FDCA08CCDBB4F1C41337292', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,conceptualizes)', 52);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (34, 52, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337293 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (53, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (53, 53);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (53, x'5FDCA08CCDBB4F1C41337293', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,concettualizza)', 53);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (35, 53, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337294 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (54, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (54, 54);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (54, x'5FDCA08CCDBB4F1C41337294', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 54);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (24, 54, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337295 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (55, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (55, 55);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (55, x'5FDCA08CCDBB4F1C41337295', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 55);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (25, 55, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337296 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (56, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (56, 56);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (56, x'5FDCA08CCDBB4F1C41337296', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 56);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (36, 56, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337297 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (57, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (57, 57);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (57, x'5FDCA08CCDBB4F1C41337297', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 57);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (37, 57, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337298 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (58, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (58, 58);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (58, x'5FDCA08CCDBB4F1C41337298', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 58);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (38, 58, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133729a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (59, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (59, 59);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (59, x'5FDCA08CCDBB4F1C4133729A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 59);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (39, 59, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133729b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (60, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (60, 60);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (60, x'5FDCA08CCDBB4F1C4133729B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''concretely expresses'')', 60);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (40, 60, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133729c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (61, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (61, 61);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (61, x'5FDCA08CCDBB4F1C4133729C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''esprime concretamente'')', 61);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (41, 61, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133729d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (62, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (62, 62);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (62, x'5FDCA08CCDBB4F1C4133729D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 62);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (26, 62, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133729e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (63, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (63, 63);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (63, x'5FDCA08CCDBB4F1C4133729E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 63);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (27, 63, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133729f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (64, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (64, 64);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (64, x'5FDCA08CCDBB4F1C4133729F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 64);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (42, 64, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372a0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (65, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (65, 65);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (65, x'5FDCA08CCDBB4F1C413372A0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 65);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (28, 65, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c413372a1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (66, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (66, 66);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (66, x'5FDCA08CCDBB4F1C413372A1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 66);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (43, 66, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372a2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (67, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (67, 67);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (67, x'5FDCA08CCDBB4F1C413372A2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 67);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (44, 67, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372a4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (68, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (68, 68);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (68, x'5FDCA08CCDBB4F1C413372A4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 68);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (45, 68, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372a5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (69, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (69, 69);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (69, x'5FDCA08CCDBB4F1C413372A5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''co-participates with'')', 69);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (46, 69, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372a6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (70, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (70, 70);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (70, x'5FDCA08CCDBB4F1C413372A6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''copartecipa con'')', 70);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (47, 70, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372a7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (71, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (71, 71);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (71, x'5FDCA08CCDBB4F1C413372A7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 71);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (29, 71, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372a8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (72, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (72, 72);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (72, x'5FDCA08CCDBB4F1C413372A8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 72);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (30, 72, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372a9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (73, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (73, 73);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (73, x'5FDCA08CCDBB4F1C413372A9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 73);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (48, 73, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372aa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (74, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (74, 74);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (74, x'5FDCA08CCDBB4F1C413372AA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 74);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (49, 74, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372ab }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (75, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (75, 75);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (75, x'5FDCA08CCDBB4F1C413372AB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 75);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (50, 75, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372ad }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (76, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (76, 76);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (76, x'5FDCA08CCDBB4F1C413372AD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 76);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (51, 76, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372ae }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (77, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (77, 77);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (77, x'5FDCA08CCDBB4F1C413372AE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,covers)', 77);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (52, 77, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372af }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (78, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (78, 78);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (78, x'5FDCA08CCDBB4F1C413372AF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,ricopre)', 78);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (53, 78, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372b0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (79, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (79, 79);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (79, x'5FDCA08CCDBB4F1C413372B0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 79);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (31, 79, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372b1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (80, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (80, 80);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (80, x'5FDCA08CCDBB4F1C413372B1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 80);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (32, 80, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (33, 80, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (34, 80, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372b2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (81, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (81, 81);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (81, x'5FDCA08CCDBB4F1C413372B2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 81);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (54, 81, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372b3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (82, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (82, 82);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (82, x'5FDCA08CCDBB4F1C413372B3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 82);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (55, 82, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372b4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (83, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (83, 83);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (83, x'5FDCA08CCDBB4F1C413372B4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 83);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (56, 83, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372b6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (84, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (84, 84);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (84, x'5FDCA08CCDBB4F1C413372B6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 84);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (57, 84, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372b7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (85, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (85, 85);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (85, x'5FDCA08CCDBB4F1C413372B7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,defines)', 85);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (58, 85, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372b8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (86, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (86, 86);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (86, x'5FDCA08CCDBB4F1C413372B8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,definisce)', 86);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (59, 86, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372b9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (87, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (87, 87);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (87, x'5FDCA08CCDBB4F1C413372B9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 87);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (35, 87, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372ba }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (88, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (88, 88);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (88, x'5FDCA08CCDBB4F1C413372BA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 88);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (36, 88, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (37, 88, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (38, 88, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (39, 88, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372bb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (89, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (89, 89);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (89, x'5FDCA08CCDBB4F1C413372BB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 89);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (60, 89, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372bc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (90, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (90, 90);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (90, x'5FDCA08CCDBB4F1C413372BC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 90);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (61, 90, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372bd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (91, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (91, 91);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (91, x'5FDCA08CCDBB4F1C413372BD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 91);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (62, 91, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372bf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (92, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (92, 92);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (92, x'5FDCA08CCDBB4F1C413372BF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 92);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (63, 92, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372c0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (93, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (93, 93);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (93, x'5FDCA08CCDBB4F1C413372C0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''defines role'')', 93);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (64, 93, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372c1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (94, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (94, 94);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (94, x'5FDCA08CCDBB4F1C413372C1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''definisce il ruolo'')', 94);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (65, 94, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372c2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (95, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (95, 95);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (95, x'5FDCA08CCDBB4F1C413372C2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 95);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (40, 95, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372c3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (96, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (96, 96);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (96, x'5FDCA08CCDBB4F1C413372C3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 96);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (41, 96, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (42, 96, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (43, 96, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (44, 96, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372c4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (97, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (97, 97);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (97, x'5FDCA08CCDBB4F1C413372C4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 97);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (66, 97, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372c5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (98, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (98, 98);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (98, x'5FDCA08CCDBB4F1C413372C5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 98);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (67, 98, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372c6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (99, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (99, 99);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (99, x'5FDCA08CCDBB4F1C413372C6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 99);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (68, 99, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372c8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (100, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (100, 100);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (100, x'5FDCA08CCDBB4F1C413372C8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 100);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (69, 100, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372c9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (101, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (101, 101);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (101, x'5FDCA08CCDBB4F1C413372C9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''defines task'')', 101);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (70, 101, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372ca }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (102, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (102, 102);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (102, x'5FDCA08CCDBB4F1C413372CA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''definisce il task'')', 102);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (71, 102, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372cb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (103, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (103, 103);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (103, x'5FDCA08CCDBB4F1C413372CB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 103);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (45, 103, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372cc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (104, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (104, 104);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (104, x'5FDCA08CCDBB4F1C413372CC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 104);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (46, 104, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372cd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (105, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (105, 105);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (105, x'5FDCA08CCDBB4F1C413372CD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 105);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (72, 105, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372ce }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (106, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (106, 106);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (106, x'5FDCA08CCDBB4F1C413372CE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 106);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (73, 106, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372cf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (107, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (107, 107);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (107, x'5FDCA08CCDBB4F1C413372CF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 107);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (74, 107, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372d1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (108, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (108, 108);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (108, x'5FDCA08CCDBB4F1C413372D1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 108);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (75, 108, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372d2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (109, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (109, 109);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (109, x'5FDCA08CCDBB4F1C413372D2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,describes)', 109);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (76, 109, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372d3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (110, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (110, 110);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (110, x'5FDCA08CCDBB4F1C413372D3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,descrive)', 110);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (77, 110, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372d4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (111, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (111, 111);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (111, x'5FDCA08CCDBB4F1C413372D4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 111);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (47, 111, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372d5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (112, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (112, 112);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (112, x'5FDCA08CCDBB4F1C413372D5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 112);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (48, 112, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (49, 112, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (50, 112, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (51, 112, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c413372d6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (113, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (113, 113);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (113, x'5FDCA08CCDBB4F1C413372D6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 113);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (78, 113, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372d7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (114, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (114, 114);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (114, x'5FDCA08CCDBB4F1C413372D7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 114);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (79, 114, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372d8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (115, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (115, 115);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (115, x'5FDCA08CCDBB4F1C413372D8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 115);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (80, 115, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372da }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (116, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (116, 116);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (116, x'5FDCA08CCDBB4F1C413372DA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 116);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (81, 116, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372db }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (117, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (117, 117);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (117, x'5FDCA08CCDBB4F1C413372DB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''directly follows'')', 117);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (82, 117, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372dc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (118, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (118, 118);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (118, x'5FDCA08CCDBB4F1C413372DC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''segue direttamente'')', 118);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (83, 118, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372dd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (119, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (119, 119);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (119, x'5FDCA08CCDBB4F1C413372DD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 119);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (52, 119, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372de }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (120, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (120, 120);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (120, x'5FDCA08CCDBB4F1C413372DE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 120);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (53, 120, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (54, 120, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (55, 120, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (56, 120, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c413372df }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (121, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (121, 121);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (121, x'5FDCA08CCDBB4F1C413372DF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 121);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (84, 121, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372e0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (122, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (122, 122);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (122, x'5FDCA08CCDBB4F1C413372E0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 122);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (85, 122, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372e2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (123, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (123, 123);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (123, x'5FDCA08CCDBB4F1C413372E2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 123);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (86, 123, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372e3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (124, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (124, 124);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (124, x'5FDCA08CCDBB4F1C413372E3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''directly precedes'')', 124);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (87, 124, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372e4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (125, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (125, 125);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (125, x'5FDCA08CCDBB4F1C413372E4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''precede direttamente'')', 125);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (88, 125, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372e5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (126, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (126, 126);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (126, x'5FDCA08CCDBB4F1C413372E5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 126);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (57, 126, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372e6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (127, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (127, 127);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (127, x'5FDCA08CCDBB4F1C413372E6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 127);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (58, 127, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (59, 127, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (60, 127, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372e7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (128, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (128, 128);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (128, x'5FDCA08CCDBB4F1C413372E7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 128);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (89, 128, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372e8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (129, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (129, 129);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (129, x'5FDCA08CCDBB4F1C413372E8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 129);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (90, 129, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372e9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (130, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (130, 130);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (130, x'5FDCA08CCDBB4F1C413372E9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 130);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (91, 130, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372eb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (131, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (131, 131);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (131, x'5FDCA08CCDBB4F1C413372EB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 131);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (92, 131, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372ec }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (132, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (132, 132);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (132, x'5FDCA08CCDBB4F1C413372EC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''esegue il task'')', 132);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (93, 132, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372ed }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (133, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (133, 133);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (133, x'5FDCA08CCDBB4F1C413372ED', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''executes task'')', 133);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (94, 133, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372ee }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (134, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (134, 134);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (134, x'5FDCA08CCDBB4F1C413372EE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 134);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (61, 134, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372f0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (135, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (135, 135);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (135, x'5FDCA08CCDBB4F1C413372F0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 135);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (62, 135, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (63, 135, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (64, 135, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (65, 135, 3, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c413372f1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (136, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (136, 136);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (136, x'5FDCA08CCDBB4F1C413372F1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 136);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (95, 136, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372f2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (137, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (137, 137);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (137, x'5FDCA08CCDBB4F1C413372F2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 137);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (96, 137, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372f3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (138, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (138, 138);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (138, x'5FDCA08CCDBB4F1C413372F3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 138);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (97, 138, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372f5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (139, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (139, 139);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (139, x'5FDCA08CCDBB4F1C413372F5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 139);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (98, 139, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413372f6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (140, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (140, 140);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (140, x'5FDCA08CCDBB4F1C413372F6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,espande)', 140);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (99, 140, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372f7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (141, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (141, 141);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (141, x'5FDCA08CCDBB4F1C413372F7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,expands)', 141);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (100, 141, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413372f8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (142, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (142, 142);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (142, x'5FDCA08CCDBB4F1C413372F8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 142);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (66, 142, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413372f9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (143, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (143, 143);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (143, x'5FDCA08CCDBB4F1C413372F9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 143);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (67, 143, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413372fa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (144, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (144, 144);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (144, x'5FDCA08CCDBB4F1C413372FA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 144);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (101, 144, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413372fb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (145, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (145, 145);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (145, x'5FDCA08CCDBB4F1C413372FB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 145);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (102, 145, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413372fc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (146, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (146, 146);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (146, x'5FDCA08CCDBB4F1C413372FC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 146);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (103, 146, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413372ff }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (147, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (147, 147);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (147, x'5FDCA08CCDBB4F1C413372FF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 147);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (104, 147, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337306 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (148, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (148, 148);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (148, x'5FDCA08CCDBB4F1C41337306', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,esprime)', 148);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (105, 148, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133730e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (149, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (149, 149);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (149, x'5FDCA08CCDBB4F1C4133730E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,expresses)', 149);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (106, 149, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337318 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (150, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (150, 150);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (150, x'5FDCA08CCDBB4F1C41337318', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 150);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (68, 150, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337325 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (151, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (151, 151);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (151, x'5FDCA08CCDBB4F1C41337325', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 151);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (69, 151, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (70, 151, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337330 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (152, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (152, 152);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (152, x'5FDCA08CCDBB4F1C41337330', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 152);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (107, 152, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337338 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (153, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (153, 153);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (153, x'5FDCA08CCDBB4F1C41337338', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 153);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (108, 153, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337341 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (154, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (154, 154);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (154, x'5FDCA08CCDBB4F1C41337341', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 154);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (109, 154, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133734c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (155, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (155, 155);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (155, x'5FDCA08CCDBB4F1C4133734C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 155);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (110, 155, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337355 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (156, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (156, 156);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (156, x'5FDCA08CCDBB4F1C41337355', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''esprime il concetto'')', 156);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (111, 156, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133735d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (157, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (157, 157);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (157, x'5FDCA08CCDBB4F1C4133735D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''expresses concept'')', 157);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (112, 157, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337366 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (158, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (158, 158);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (158, x'5FDCA08CCDBB4F1C41337366', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 158);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (71, 158, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337372 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (159, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (159, 159);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (159, x'5FDCA08CCDBB4F1C41337372', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 159);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (72, 159, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337374 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (160, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (160, 160);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (160, x'5FDCA08CCDBB4F1C41337374', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 160);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (113, 160, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337375 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (161, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (161, 161);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (161, x'5FDCA08CCDBB4F1C41337375', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 161);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (73, 161, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c41337376 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (162, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (162, 162);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (162, x'5FDCA08CCDBB4F1C41337376', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 162);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (114, 162, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337377 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (163, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (163, 163);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (163, x'5FDCA08CCDBB4F1C41337377', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 163);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (115, 163, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337379 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (164, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (164, 164);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (164, x'5FDCA08CCDBB4F1C41337379', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 164);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (116, 164, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133737a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (165, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (165, 165);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (165, x'5FDCA08CCDBB4F1C4133737A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''far from'')', 165);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (117, 165, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133737b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (166, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (166, 166);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (166, x'5FDCA08CCDBB4F1C4133737B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 166);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (74, 166, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133737c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (167, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (167, 167);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (167, x'5FDCA08CCDBB4F1C4133737C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 167);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (75, 167, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133737d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (168, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (168, 168);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (168, x'5FDCA08CCDBB4F1C4133737D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 168);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (118, 168, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133737e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (169, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (169, 169);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (169, x'5FDCA08CCDBB4F1C4133737E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 169);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (76, 169, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c4133737f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (170, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (170, 170);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (170, x'5FDCA08CCDBB4F1C4133737F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 170);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (119, 170, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337380 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (171, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (171, 171);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (171, x'5FDCA08CCDBB4F1C41337380', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 171);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (120, 171, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337382 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (172, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (172, 172);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (172, x'5FDCA08CCDBB4F1C41337382', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 172);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (121, 172, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337383 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (173, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (173, 173);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (173, x'5FDCA08CCDBB4F1C41337383', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,follows)', 173);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (122, 173, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337384 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (174, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (174, 174);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (174, x'5FDCA08CCDBB4F1C41337384', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,segue)', 174);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (123, 174, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337385 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (175, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (175, 175);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (175, x'5FDCA08CCDBB4F1C41337385', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 175);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (77, 175, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337386 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (176, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (176, 176);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (176, x'5FDCA08CCDBB4F1C41337386', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 176);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (78, 176, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337387 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (177, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (177, 177);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (177, x'5FDCA08CCDBB4F1C41337387', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 177);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (124, 177, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337388 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (178, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (178, 178);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (178, x'5FDCA08CCDBB4F1C41337388', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 178);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (79, 178, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c41337389 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (179, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (179, 179);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (179, x'5FDCA08CCDBB4F1C41337389', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 179);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (125, 179, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133738a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (180, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (180, 180);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (180, x'5FDCA08CCDBB4F1C4133738A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 180);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (126, 180, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133738c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (181, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (181, 181);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (181, x'5FDCA08CCDBB4F1C4133738C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 181);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (127, 181, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133738d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (182, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (182, 182);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (182, x'5FDCA08CCDBB4F1C4133738D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has common boundary'')', 182);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (128, 182, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133738e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (183, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (183, 183);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (183, x'5FDCA08CCDBB4F1C4133738E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 183);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (80, 183, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133738f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (184, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (184, 184);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (184, x'5FDCA08CCDBB4F1C4133738F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 184);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (81, 184, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (82, 184, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (83, 184, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (84, 184, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c41337390 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (185, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (185, 185);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (185, x'5FDCA08CCDBB4F1C41337390', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 185);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (129, 185, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337391 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (186, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (186, 186);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (186, x'5FDCA08CCDBB4F1C41337391', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 186);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (130, 186, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337392 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (187, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (187, 187);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (187, x'5FDCA08CCDBB4F1C41337392', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 187);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (131, 187, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337395 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (188, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (188, 188);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (188, x'5FDCA08CCDBB4F1C41337395', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 188);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (132, 188, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337397 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (189, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (189, 189);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (189, x'5FDCA08CCDBB4F1C41337397', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha componente'')', 189);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (133, 189, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337398 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (190, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (190, 190);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (190, x'5FDCA08CCDBB4F1C41337398', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has component'')', 190);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (134, 190, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337399 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (191, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (191, 191);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (191, x'5FDCA08CCDBB4F1C41337399', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 191);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (85, 191, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133739a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (192, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (192, 192);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (192, x'5FDCA08CCDBB4F1C4133739A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 192);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (86, 192, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133739b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (193, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (193, 193);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (193, x'5FDCA08CCDBB4F1C4133739B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 193);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (135, 193, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133739c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (194, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (194, 194);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (194, x'5FDCA08CCDBB4F1C4133739C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 194);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (136, 194, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133739d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (195, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (195, 195);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (195, x'5FDCA08CCDBB4F1C4133739D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 195);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (137, 195, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133739f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (196, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (196, 196);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (196, x'5FDCA08CCDBB4F1C4133739F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 196);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (138, 196, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373a0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (197, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (197, 197);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (197, x'5FDCA08CCDBB4F1C413373A0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha costituente'')', 197);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (139, 197, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373a1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (198, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (198, 198);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (198, x'5FDCA08CCDBB4F1C413373A1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has constituent'')', 198);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (140, 198, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373a2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (199, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (199, 199);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (199, x'5FDCA08CCDBB4F1C413373A2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 199);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (87, 199, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373a3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (200, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (200, 200);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (200, x'5FDCA08CCDBB4F1C413373A3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 200);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (88, 200, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (89, 200, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (90, 200, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413373a4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (201, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (201, 201);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (201, x'5FDCA08CCDBB4F1C413373A4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 201);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (141, 201, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373a5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (202, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (202, 202);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (202, x'5FDCA08CCDBB4F1C413373A5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 202);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (142, 202, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373a6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (203, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (203, 203);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (203, x'5FDCA08CCDBB4F1C413373A6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 203);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (143, 203, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373a9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (204, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (204, 204);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (204, x'5FDCA08CCDBB4F1C413373A9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 204);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (144, 204, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373aa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (205, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (205, 205);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (205, x'5FDCA08CCDBB4F1C413373AA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha vincolo'')', 205);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (145, 205, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373ab }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (206, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (206, 206);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (206, x'5FDCA08CCDBB4F1C413373AB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has constraint'')', 206);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (146, 206, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373ac }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (207, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (207, 207);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (207, x'5FDCA08CCDBB4F1C413373AC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 207);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (91, 207, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373ad }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (208, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (208, 208);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (208, x'5FDCA08CCDBB4F1C413373AD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 208);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (92, 208, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413373ae }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (209, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (209, 209);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (209, x'5FDCA08CCDBB4F1C413373AE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 209);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (147, 209, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373af }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (210, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (210, 210);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (210, x'5FDCA08CCDBB4F1C413373AF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 210);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (148, 210, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373b0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (211, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (211, 211);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (211, x'5FDCA08CCDBB4F1C413373B0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 211);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (149, 211, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373b2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (212, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (212, 212);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (212, x'5FDCA08CCDBB4F1C413373B2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 212);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (150, 212, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373b3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (213, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (213, 213);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (213, x'5FDCA08CCDBB4F1C413373B3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha localizzazione'')', 213);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (151, 213, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373b4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (214, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (214, 214);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (214, x'5FDCA08CCDBB4F1C413373B4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has location'')', 214);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (152, 214, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373b5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (215, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (215, 215);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (215, x'5FDCA08CCDBB4F1C413373B5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 215);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (93, 215, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373b6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (216, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (216, 216);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (216, x'5FDCA08CCDBB4F1C413373B6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 216);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (94, 216, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413373b7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (217, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (217, 217);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (217, x'5FDCA08CCDBB4F1C413373B7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 217);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (153, 217, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373b8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (218, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (218, 218);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (218, x'5FDCA08CCDBB4F1C413373B8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 218);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (154, 218, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373b9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (219, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (219, 219);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (219, x'5FDCA08CCDBB4F1C413373B9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 219);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (155, 219, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373bb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (220, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (220, 220);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (220, x'5FDCA08CCDBB4F1C413373BB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 220);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (156, 220, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373bc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (221, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (221, 221);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (221, x'5FDCA08CCDBB4F1C413373BC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha membro'')', 221);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (157, 221, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373bd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (222, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (222, 222);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (222, x'5FDCA08CCDBB4F1C413373BD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has member'')', 222);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (158, 222, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373be }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (223, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (223, 223);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (223, x'5FDCA08CCDBB4F1C413373BE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 223);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (95, 223, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373bf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (224, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (224, 224);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (224, x'5FDCA08CCDBB4F1C413373BF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 224);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (96, 224, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (97, 224, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (98, 224, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (99, 224, 3, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c413373c0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (225, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (225, 225);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (225, x'5FDCA08CCDBB4F1C413373C0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 225);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (159, 225, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373c1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (226, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (226, 226);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (226, x'5FDCA08CCDBB4F1C413373C1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 226);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (160, 226, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373c2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (227, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (227, 227);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (227, x'5FDCA08CCDBB4F1C413373C2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 227);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (161, 227, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373c4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (228, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (228, 228);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (228, x'5FDCA08CCDBB4F1C413373C4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 228);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (162, 228, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373c5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (229, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (229, 229);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (229, x'5FDCA08CCDBB4F1C413373C5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha parametro'')', 229);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (163, 229, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373c6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (230, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (230, 230);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (230, x'5FDCA08CCDBB4F1C413373C6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has parameter'')', 230);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (164, 230, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373c7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (231, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (231, 231);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (231, x'5FDCA08CCDBB4F1C413373C7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 231);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (100, 231, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373c8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (232, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (232, 232);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (232, x'5FDCA08CCDBB4F1C413373C8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 232);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (101, 232, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413373c9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (233, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (233, 233);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (233, x'5FDCA08CCDBB4F1C413373C9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 233);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (165, 233, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373ca }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (234, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (234, 234);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (234, x'5FDCA08CCDBB4F1C413373CA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 234);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (102, 234, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c413373cd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (235, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (235, 235);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (235, x'5FDCA08CCDBB4F1C413373CD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 235);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (166, 235, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373ce }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (236, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (236, 236);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (236, x'5FDCA08CCDBB4F1C413373CE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 236);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (167, 236, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373d0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (237, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (237, 237);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (237, x'5FDCA08CCDBB4F1C413373D0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 237);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (168, 237, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373d1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (238, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (238, 238);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (238, x'5FDCA08CCDBB4F1C413373D1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha parte'')', 238);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (169, 238, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373d2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (239, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (239, 239);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (239, x'5FDCA08CCDBB4F1C413373D2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has part'')', 239);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (170, 239, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373d3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (240, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (240, 240);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (240, x'5FDCA08CCDBB4F1C413373D3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 240);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (103, 240, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373d4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (241, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (241, 241);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (241, x'5FDCA08CCDBB4F1C413373D4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 241);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (104, 241, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c413373d5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (242, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (242, 242);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (242, x'5FDCA08CCDBB4F1C413373D5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 242);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (171, 242, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373d6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (243, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (243, 243);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (243, x'5FDCA08CCDBB4F1C413373D6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 243);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (172, 243, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373d7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (244, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (244, 244);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (244, x'5FDCA08CCDBB4F1C413373D7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 244);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (173, 244, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373d9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (245, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (245, 245);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (245, x'5FDCA08CCDBB4F1C413373D9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 245);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (174, 245, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373da }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (246, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (246, 246);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (246, x'5FDCA08CCDBB4F1C413373DA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha come partecipante'')', 246);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (175, 246, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373db }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (247, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (247, 247);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (247, x'5FDCA08CCDBB4F1C413373DB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has participant'')', 247);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (176, 247, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373dc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (248, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (248, 248);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (248, x'5FDCA08CCDBB4F1C413373DC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 248);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (105, 248, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373dd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (249, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (249, 249);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (249, x'5FDCA08CCDBB4F1C413373DD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 249);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (106, 249, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (107, 249, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (108, 249, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (109, 249, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (110, 249, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c413373de }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (250, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (250, 250);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (250, x'5FDCA08CCDBB4F1C413373DE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 250);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (177, 250, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373df }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (251, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (251, 251);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (251, x'5FDCA08CCDBB4F1C413373DF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description972', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 251);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (111, 251, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08ccdbb4f1c413373e0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (252, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (252, 252);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (252, x'5FDCA08CCDBB4F1C413373E0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description972', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List281', 252);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (178, 252, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08ccdbb4f1c413373e1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (253, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (253, 253);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (253, x'5FDCA08CCDBB4F1C413373E1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List281', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 253);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (112, 253, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c413373e2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (254, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (254, 254);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (254, x'5FDCA08CCDBB4F1C413373E2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List281', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 254);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (179, 254, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c413373e3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (255, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (255, 255);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (255, x'5FDCA08CCDBB4F1C413373E3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List281', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List282', 255);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (180, 255, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c413373e4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (256, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (256, 256);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (256, x'5FDCA08CCDBB4F1C413373E4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List282', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 256);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (113, 256, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c413373e5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (257, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (257, 257);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (257, x'5FDCA08CCDBB4F1C413373E5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List282', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 257);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (181, 257, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c413373e6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (258, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (258, 258);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (258, x'5FDCA08CCDBB4F1C413373E6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List282', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 258);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (182, 258, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c413373e7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (259, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (259, 259);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (259, x'5FDCA08CCDBB4F1C413373E7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description972', 259);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (183, 259, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c413373e8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (260, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (260, 260);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (260, x'5FDCA08CCDBB4F1C413373E8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description973', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 260);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (114, 260, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08ccdbb4f1c413373e9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (261, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (261, 261);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (261, x'5FDCA08CCDBB4F1C413373E9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description973', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List283', 261);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (184, 261, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08ccdbb4f1c413373ea }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (262, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (262, 262);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (262, x'5FDCA08CCDBB4F1C413373EA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List283', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 262);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (115, 262, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c413373eb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (263, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (263, 263);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (263, x'5FDCA08CCDBB4F1C413373EB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List283', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 263);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (185, 263, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c413373ed }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (264, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (264, 264);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (264, x'5FDCA08CCDBB4F1C413373ED', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List283', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List284', 264);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (186, 264, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c413373ef }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (265, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (265, 265);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (265, x'5FDCA08CCDBB4F1C413373EF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List284', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 265);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (116, 265, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c413373f0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (266, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (266, 266);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (266, x'5FDCA08CCDBB4F1C413373F0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List284', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 266);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (187, 266, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c413373f1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (267, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (267, 267);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (267, x'5FDCA08CCDBB4F1C413373F1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List284', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 267);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (188, 267, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c413373f2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (268, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (268, 268);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (268, x'5FDCA08CCDBB4F1C413373F2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description973', 268);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (189, 268, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c413373f4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (269, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (269, 269);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (269, x'5FDCA08CCDBB4F1C413373F4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 269);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (190, 269, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c413373f5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (270, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (270, 270);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (270, x'5FDCA08CCDBB4F1C413373F5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha postcondizione'')', 270);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (191, 270, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373f6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (271, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (271, 271);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (271, x'5FDCA08CCDBB4F1C413373F6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has postcondition'')', 271);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (192, 271, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c413373f7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (272, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (272, 272);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (272, x'5FDCA08CCDBB4F1C413373F7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 272);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (117, 272, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c413373f8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (273, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (273, 273);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (273, x'5FDCA08CCDBB4F1C413373F8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 273);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (118, 273, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (119, 273, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (120, 273, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (121, 273, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (122, 273, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08ccdbb4f1c413373f9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (274, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (274, 274);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (274, x'5FDCA08CCDBB4F1C413373F9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 274);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (193, 274, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c413373fa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (275, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (275, 275);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (275, x'5FDCA08CCDBB4F1C413373FA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description974', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 275);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (123, 275, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08ccdbb4f1c413373fb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (276, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (276, 276);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (276, x'5FDCA08CCDBB4F1C413373FB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description974', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List285', 276);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (194, 276, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08ccdbb4f1c413373fc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (277, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (277, 277);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (277, x'5FDCA08CCDBB4F1C413373FC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List285', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 277);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (124, 277, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c413373fd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (278, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (278, 278);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (278, x'5FDCA08CCDBB4F1C413373FD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List285', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 278);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (195, 278, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c413373fe }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (279, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (279, 279);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (279, x'5FDCA08CCDBB4F1C413373FE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List285', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List286', 279);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (196, 279, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c41337401 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (280, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (280, 280);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (280, x'5FDCA08CCDBB4F1C41337401', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List286', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 280);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (125, 280, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c41337402 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (281, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (281, 281);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (281, x'5FDCA08CCDBB4F1C41337402', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List286', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 281);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (197, 281, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c41337403 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (282, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (282, 282);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (282, x'5FDCA08CCDBB4F1C41337403', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List286', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 282);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (198, 282, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c41337404 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (283, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (283, 283);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (283, x'5FDCA08CCDBB4F1C41337404', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description974', 283);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (199, 283, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337405 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (284, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (284, 284);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (284, x'5FDCA08CCDBB4F1C41337405', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description975', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 284);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (126, 284, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08ccdbb4f1c41337406 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (285, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (285, 285);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (285, x'5FDCA08CCDBB4F1C41337406', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description975', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List287', 285);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (200, 285, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08ccdbb4f1c41337407 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (286, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (286, 286);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (286, x'5FDCA08CCDBB4F1C41337407', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List287', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 286);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (127, 286, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c41337408 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (287, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (287, 287);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (287, x'5FDCA08CCDBB4F1C41337408', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List287', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 287);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (201, 287, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c41337409 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (288, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (288, 288);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (288, x'5FDCA08CCDBB4F1C41337409', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List287', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List288', 288);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (202, 288, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c4133740a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (289, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (289, 289);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (289, x'5FDCA08CCDBB4F1C4133740A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List288', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 289);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (128, 289, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08ccdbb4f1c4133740b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (290, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (290, 290);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (290, x'5FDCA08CCDBB4F1C4133740B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List288', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 290);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (203, 290, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08ccdbb4f1c4133740c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (291, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (291, 291);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (291, x'5FDCA08CCDBB4F1C4133740C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List288', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 291);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (204, 291, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08ccdbb4f1c4133740d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (292, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (292, 292);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (292, x'5FDCA08CCDBB4F1C4133740D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description975', 292);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (205, 292, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133740f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (293, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (293, 293);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (293, x'5FDCA08CCDBB4F1C4133740F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 293);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (206, 293, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337410 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (294, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (294, 294);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (294, x'5FDCA08CCDBB4F1C41337410', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha precondizione'')', 294);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (207, 294, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337411 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (295, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (295, 295);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (295, x'5FDCA08CCDBB4F1C41337411', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has precondition'')', 295);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (208, 295, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337412 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (296, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (296, 296);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (296, x'5FDCA08CCDBB4F1C41337412', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 296);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (129, 296, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337413 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (297, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (297, 297);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (297, x'5FDCA08CCDBB4F1C41337413', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 297);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (130, 297, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337414 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (298, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (298, 298);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (298, x'5FDCA08CCDBB4F1C41337414', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 298);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (209, 298, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337415 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (299, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (299, 299);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (299, x'5FDCA08CCDBB4F1C41337415', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 299);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (210, 299, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337416 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (300, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (300, 300);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (300, x'5FDCA08CCDBB4F1C41337416', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Quality', 300);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (211, 300, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337418 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (301, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (301, 301);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (301, x'5FDCA08CCDBB4F1C41337418', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 301);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (212, 301, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337419 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (302, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (302, 302);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (302, x'5FDCA08CCDBB4F1C41337419', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha qualit�'')', 302);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (213, 302, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133741a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (303, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (303, 303);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (303, x'5FDCA08CCDBB4F1C4133741A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has quality'')', 303);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (214, 303, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133741b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (304, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (304, 304);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (304, x'5FDCA08CCDBB4F1C4133741B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 304);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (131, 304, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133741c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (305, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (305, 305);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (305, x'5FDCA08CCDBB4F1C4133741C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 305);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (132, 305, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133741d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (306, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (306, 306);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (306, x'5FDCA08CCDBB4F1C4133741D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 306);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (215, 306, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133741e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (307, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (307, 307);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (307, x'5FDCA08CCDBB4F1C4133741E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 307);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (216, 307, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133741f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (308, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (308, 308);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (308, x'5FDCA08CCDBB4F1C4133741F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 308);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (217, 308, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337421 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (309, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (309, 309);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (309, x'5FDCA08CCDBB4F1C41337421', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 309);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (218, 309, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337422 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (310, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (310, 310);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (310, x'5FDCA08CCDBB4F1C41337422', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha attributo'')', 310);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (219, 310, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337423 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (311, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (311, 311);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (311, x'5FDCA08CCDBB4F1C41337423', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has region'')', 311);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (220, 311, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337424 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (312, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (312, 312);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (312, x'5FDCA08CCDBB4F1C41337424', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 312);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (133, 312, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337425 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (313, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (313, 313);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (313, x'5FDCA08CCDBB4F1C41337425', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 313);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (134, 313, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (135, 313, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (136, 313, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337426 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (314, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (314, 314);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (314, x'5FDCA08CCDBB4F1C41337426', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 314);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (221, 314, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337427 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (315, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (315, 315);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (315, x'5FDCA08CCDBB4F1C41337427', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 315);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (222, 315, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337428 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (316, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (316, 316);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (316, x'5FDCA08CCDBB4F1C41337428', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 316);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (223, 316, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133742a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (317, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (317, 317);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (317, x'5FDCA08CCDBB4F1C4133742A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 317);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (224, 317, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133742b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (318, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (318, 318);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (318, x'5FDCA08CCDBB4F1C4133742B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha ruolo'')', 318);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (225, 318, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133742c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (319, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (319, 319);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (319, x'5FDCA08CCDBB4F1C4133742C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has role'')', 319);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (226, 319, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133742d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (320, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (320, 320);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (320, x'5FDCA08CCDBB4F1C4133742D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 320);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (137, 320, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133742e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (321, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (321, 321);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (321, x'5FDCA08CCDBB4F1C4133742E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 321);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (138, 321, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133742f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (322, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (322, 322);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (322, x'5FDCA08CCDBB4F1C4133742F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 322);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (227, 322, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337430 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (323, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (323, 323);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (323, x'5FDCA08CCDBB4F1C41337430', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 323);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (228, 323, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337431 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (324, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (324, 324);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (324, x'5FDCA08CCDBB4F1C41337431', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 324);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (229, 324, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337433 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (325, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (325, 325);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (325, x'5FDCA08CCDBB4F1C41337433', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 325);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (230, 325, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337434 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (326, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (326, 326);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (326, x'5FDCA08CCDBB4F1C41337434', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has setting'')', 326);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (231, 326, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337435 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (327, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (327, 327);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (327, x'5FDCA08CCDBB4F1C41337435', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� nel contesto di'')', 327);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (232, 327, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337436 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (328, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (328, 328);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (328, x'5FDCA08CCDBB4F1C41337436', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 328);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (139, 328, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337437 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (329, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (329, 329);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (329, x'5FDCA08CCDBB4F1C41337437', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 329);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (140, 329, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (141, 329, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (142, 329, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (143, 329, 3, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08ccdbb4f1c41337438 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (330, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (330, 330);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (330, x'5FDCA08CCDBB4F1C41337438', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 330);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (233, 330, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133743a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (331, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (331, 331);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (331, x'5FDCA08CCDBB4F1C4133743A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 331);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (234, 331, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133743b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (332, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (332, 332);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (332, x'5FDCA08CCDBB4F1C4133743B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 332);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (235, 332, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133743d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (333, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (333, 333);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (333, x'5FDCA08CCDBB4F1C4133743D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 333);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (236, 333, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c4133743e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (334, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (334, 334);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (334, x'5FDCA08CCDBB4F1C4133743E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha come obiettivo'')', 334);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (237, 334, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133743f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (335, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (335, 335);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (335, x'5FDCA08CCDBB4F1C4133743F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has task'')', 335);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (238, 335, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337440 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (336, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (336, 336);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (336, x'5FDCA08CCDBB4F1C41337440', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 336);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (144, 336, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337441 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (337, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (337, 337);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (337, x'5FDCA08CCDBB4F1C41337441', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 337);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (145, 337, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (146, 337, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337442 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (338, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (338, 338);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (338, x'5FDCA08CCDBB4F1C41337442', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 338);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (239, 338, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337443 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (339, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (339, 339);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (339, x'5FDCA08CCDBB4F1C41337443', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 339);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (240, 339, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337444 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (340, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (340, 340);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (340, x'5FDCA08CCDBB4F1C41337444', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 340);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (241, 340, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337446 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (341, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (341, 341);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (341, x'5FDCA08CCDBB4F1C41337446', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 341);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (242, 341, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337447 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (342, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (342, 342);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (342, x'5FDCA08CCDBB4F1C41337447', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha intervallo temporale'')', 342);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (243, 342, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337448 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (343, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (343, 343);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (343, x'5FDCA08CCDBB4F1C41337448', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has time interval'')', 343);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (244, 343, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337449 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (344, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (344, 344);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (344, x'5FDCA08CCDBB4F1C41337449', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 344);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (147, 344, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133744a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (345, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (345, 345);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (345, x'5FDCA08CCDBB4F1C4133744A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 345);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (148, 345, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (149, 345, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (150, 345, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (151, 345, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133744b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (346, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (346, 346);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (346, x'5FDCA08CCDBB4F1C4133744B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 346);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (245, 346, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133744c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (347, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (347, 347);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (347, x'5FDCA08CCDBB4F1C4133744C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 347);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (246, 347, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133744d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (348, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (348, 348);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (348, x'5FDCA08CCDBB4F1C4133744D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 348);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (247, 348, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c4133744f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (349, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (349, 349);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (349, x'5FDCA08CCDBB4F1C4133744F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 349);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (248, 349, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337450 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (350, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (350, 350);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (350, x'5FDCA08CCDBB4F1C41337450', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''include azione'')', 350);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (249, 350, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337451 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (351, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (351, 351);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (351, x'5FDCA08CCDBB4F1C41337451', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''includes action'')', 351);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (250, 351, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337452 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (352, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (352, 352);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (352, x'5FDCA08CCDBB4F1C41337452', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 352);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (152, 352, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c41337453 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (353, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (353, 353);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (353, x'5FDCA08CCDBB4F1C41337453', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 353);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (153, 353, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (154, 353, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (155, 353, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (156, 353, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c41337454 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (354, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (354, 354);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (354, x'5FDCA08CCDBB4F1C41337454', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 354);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (251, 354, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c41337455 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (355, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (355, 355);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (355, x'5FDCA08CCDBB4F1C41337455', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 355);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (252, 355, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c41337456 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (356, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (356, 356);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (356, x'5FDCA08CCDBB4F1C41337456', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 356);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (253, 356, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337458 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (357, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (357, 357);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (357, x'5FDCA08CCDBB4F1C41337458', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 357);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (254, 357, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337459 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (358, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (358, 358);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (358, x'5FDCA08CCDBB4F1C41337459', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''include l''''agente'')', 358);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (255, 358, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133745a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (359, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (359, 359);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (359, x'5FDCA08CCDBB4F1C4133745A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''includes agent'')', 359);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (256, 359, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c4133745b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (360, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (360, 360);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (360, x'5FDCA08CCDBB4F1C4133745B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 360);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (157, 360, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08ccdbb4f1c4133745c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (361, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (361, 361);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (361, x'5FDCA08CCDBB4F1C4133745C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 361);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (158, 361, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (159, 361, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (160, 361, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08ccdbb4f1c4133745d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (362, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (362, 362);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (362, x'5FDCA08CCDBB4F1C4133745D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 362);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (257, 362, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08ccdbb4f1c4133745e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (363, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (363, 363);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (363, x'5FDCA08CCDBB4F1C4133745E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 363);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (258, 363, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08ccdbb4f1c4133745f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (364, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (364, 364);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (364, x'5FDCA08CCDBB4F1C4133745F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 364);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (259, 364, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08ccdbb4f1c41337461 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (365, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (365, 365);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (365, x'5FDCA08CCDBB4F1C41337461', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 365);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (260, 365, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08ccdbb4f1c41337462 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (366, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (366, 366);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (366, x'5FDCA08CCDBB4F1C41337462', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''include l''''evento'')', 366);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (261, 366, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337463 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (367, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (367, 367);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (367, x'5FDCA08CCDBB4F1C41337463', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''includes event'')', 367);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (262, 367, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08ccdbb4f1c41337464 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (368, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (368, 368);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (368, x'5FDCA08CCDBB4F1C41337464', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 368);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (161, 368, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337465 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (369, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (369, 369);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (369, x'5FDCA08DCDBB4F1C41337465', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 369);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (162, 369, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (163, 369, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (164, 369, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337466 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (370, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (370, 370);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (370, x'5FDCA08DCDBB4F1C41337466', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 370);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (263, 370, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337467 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (371, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (371, 371);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (371, x'5FDCA08DCDBB4F1C41337467', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 371);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (264, 371, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337468 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (372, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (372, 372);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (372, x'5FDCA08DCDBB4F1C41337468', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 372);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (265, 372, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133746a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (373, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (373, 373);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (373, x'5FDCA08DCDBB4F1C4133746A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 373);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (266, 373, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133746b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (374, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (374, 374);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (374, x'5FDCA08DCDBB4F1C4133746B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''include l''''oggetto'')', 374);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (267, 374, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133746c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (375, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (375, 375);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (375, x'5FDCA08DCDBB4F1C4133746C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''includes object'')', 375);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (268, 375, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133746d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (376, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (376, 376);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (376, x'5FDCA08DCDBB4F1C4133746D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 376);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (165, 376, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133746e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (377, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (377, 377);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (377, x'5FDCA08DCDBB4F1C4133746E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 377);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (166, 377, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (167, 377, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (168, 377, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133746f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (378, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (378, 378);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (378, x'5FDCA08DCDBB4F1C4133746F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 378);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (269, 378, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337470 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (379, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (379, 379);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (379, x'5FDCA08DCDBB4F1C41337470', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 379);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (270, 379, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337471 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (380, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (380, 380);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (380, x'5FDCA08DCDBB4F1C41337471', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 380);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (271, 380, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337473 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (381, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (381, 381);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (381, x'5FDCA08DCDBB4F1C41337473', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 381);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (272, 381, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337474 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (382, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (382, 382);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (382, x'5FDCA08DCDBB4F1C41337474', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''include tempo'')', 382);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (273, 382, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337475 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (383, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (383, 383);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (383, x'5FDCA08DCDBB4F1C41337475', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''includes time'')', 383);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (274, 383, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337476 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (384, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (384, 384);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (384, x'5FDCA08DCDBB4F1C41337476', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 384);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (169, 384, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337477 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (385, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (385, 385);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (385, x'5FDCA08DCDBB4F1C41337477', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 385);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (170, 385, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133747c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (386, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (386, 386);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (386, x'5FDCA08DCDBB4F1C4133747C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 386);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (275, 386, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133747d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (387, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (387, 387);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (387, x'5FDCA08DCDBB4F1C4133747D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 387);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (276, 387, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133747e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (388, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (388, 388);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (388, x'5FDCA08DCDBB4F1C4133747E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 388);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (277, 388, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337480 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (389, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (389, 389);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (389, x'5FDCA08DCDBB4F1C41337480', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 389);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (278, 389, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337481 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (390, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (390, 390);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (390, x'5FDCA08DCDBB4F1C41337481', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,introduce)', 390);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (279, 390, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337482 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (391, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (391, 391);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (391, x'5FDCA08DCDBB4F1C41337482', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,introduces)', 391);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (280, 391, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337483 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (392, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (392, 392);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (392, x'5FDCA08DCDBB4F1C41337483', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 392);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (171, 392, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337484 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (393, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (393, 393);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (393, x'5FDCA08DCDBB4F1C41337484', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 393);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (172, 393, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (173, 393, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337485 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (394, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (394, 394);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (394, x'5FDCA08DCDBB4F1C41337485', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 394);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (281, 394, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337486 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (395, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (395, 395);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (395, x'5FDCA08DCDBB4F1C41337486', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 395);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (282, 395, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337487 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (396, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (396, 396);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (396, x'5FDCA08DCDBB4F1C41337487', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 396);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (283, 396, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337489 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (397, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (397, 397);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (397, x'5FDCA08DCDBB4F1C41337489', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 397);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (284, 397, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133748a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (398, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (398, 398);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (398, x'5FDCA08DCDBB4F1C4133748A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''coinvolge agente'')', 398);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (285, 398, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133748b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (399, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (399, 399);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (399, x'5FDCA08DCDBB4F1C4133748B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''involves agent'')', 399);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (286, 399, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133748c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (400, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (400, 400);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (400, x'5FDCA08DCDBB4F1C4133748C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 400);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (174, 400, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133748d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (401, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (401, 401);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (401, x'5FDCA08DCDBB4F1C4133748D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 401);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (175, 401, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133748e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (402, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (402, 402);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (402, x'5FDCA08DCDBB4F1C4133748E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 402);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (287, 402, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133748f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (403, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (403, 403);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (403, x'5FDCA08DCDBB4F1C4133748F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 403);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (288, 403, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337490 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (404, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (404, 404);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (404, x'5FDCA08DCDBB4F1C41337490', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 404);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (289, 404, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337492 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (405, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (405, 405);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (405, x'5FDCA08DCDBB4F1C41337492', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 405);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (290, 405, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337493 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (406, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (406, 406);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (406, x'5FDCA08DCDBB4F1C41337493', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is about'')', 406);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (291, 406, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337494 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (407, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (407, 407);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (407, x'5FDCA08DCDBB4F1C41337494', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''si riferisce a'')', 407);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (292, 407, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337495 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (408, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (408, 408);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (408, x'5FDCA08DCDBB4F1C41337495', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 408);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (176, 408, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337496 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (409, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (409, 409);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (409, x'5FDCA08DCDBB4F1C41337496', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 409);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (177, 409, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (178, 409, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (179, 409, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (180, 409, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337497 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (410, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (410, 410);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (410, x'5FDCA08DCDBB4F1C41337497', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 410);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (293, 410, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337498 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (411, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (411, 411);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (411, x'5FDCA08DCDBB4F1C41337498', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 411);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (294, 411, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337499 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (412, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (412, 412);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (412, x'5FDCA08DCDBB4F1C41337499', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 412);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (295, 412, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133749a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (413, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (413, 413);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (413, x'5FDCA08DCDBB4F1C4133749A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is action included in'')', 413);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (296, 413, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133749b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (414, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (414, 414);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (414, x'5FDCA08DCDBB4F1C4133749B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isActionIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un''''azione nel contesto di'')', 414);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (297, 414, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133749c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (415, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (415, 415);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (415, x'5FDCA08DCDBB4F1C4133749C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 415);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (181, 415, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133749d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (416, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (416, 416);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (416, x'5FDCA08DCDBB4F1C4133749D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 416);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (182, 416, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (183, 416, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (184, 416, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (185, 416, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133749e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (417, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (417, 417);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (417, x'5FDCA08DCDBB4F1C4133749E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 417);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (298, 417, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133749f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (418, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (418, 418);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (418, x'5FDCA08DCDBB4F1C4133749F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 418);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (299, 418, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374a0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (419, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (419, 419);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (419, x'5FDCA08DCDBB4F1C413374A0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 419);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (300, 419, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374a1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (420, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (420, 420);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (420, x'5FDCA08DCDBB4F1C413374A1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is agent included in'')', 420);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (301, 420, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374a2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (421, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (421, 421);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (421, x'5FDCA08DCDBB4F1C413374A2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un agente nel contesto di'')', 421);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (302, 421, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374a3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (422, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (422, 422);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (422, x'5FDCA08DCDBB4F1C413374A3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 422);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (186, 422, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374a4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (423, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (423, 423);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (423, x'5FDCA08DCDBB4F1C413374A4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 423);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (187, 423, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (188, 423, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (189, 423, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374a5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (424, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (424, 424);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (424, x'5FDCA08DCDBB4F1C413374A5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 424);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (303, 424, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374a6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (425, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (425, 425);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (425, x'5FDCA08DCDBB4F1C413374A6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 425);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (304, 425, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374a8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (426, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (426, 426);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (426, x'5FDCA08DCDBB4F1C413374A8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 426);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (305, 426, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374a9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (427, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (427, 427);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (427, x'5FDCA08DCDBB4F1C413374A9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is agent involved in'')', 427);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (306, 427, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374aa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (428, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (428, 428);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (428, x'5FDCA08DCDBB4F1C413374AA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un agente coinvolto in'')', 428);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (307, 428, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374ab }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (429, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (429, 429);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (429, x'5FDCA08DCDBB4F1C413374AB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 429);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (190, 429, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374ac }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (430, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (430, 430);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (430, x'5FDCA08DCDBB4F1C413374AC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 430);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (191, 430, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374ad }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (431, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (431, 431);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (431, x'5FDCA08DCDBB4F1C413374AD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 431);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (308, 431, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374ae }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (432, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (432, 432);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (432, x'5FDCA08DCDBB4F1C413374AE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 432);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (309, 432, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374af }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (433, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (433, 433);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (433, x'5FDCA08DCDBB4F1C413374AF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 433);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (310, 433, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374b0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (434, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (434, 434);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (434, x'5FDCA08DCDBB4F1C413374B0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is characterized by'')', 434);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (311, 434, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374b1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (435, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (435, 435);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (435, x'5FDCA08DCDBB4F1C413374B1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'is characterized by {@en-us}', 435);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (312, 435, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374b2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (436, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (436, 436);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (436, x'5FDCA08DCDBB4F1C413374B2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCharacterizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� caratterizzato da'')', 436);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (313, 436, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374b3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (437, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (437, 437);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (437, x'5FDCA08DCDBB4F1C413374B3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 437);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (192, 437, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374b4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (438, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (438, 438);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (438, x'5FDCA08DCDBB4F1C413374B4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 438);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (193, 438, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374b5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (439, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (439, 439);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (439, x'5FDCA08DCDBB4F1C413374B5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 439);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (314, 439, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374b6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (440, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (440, 440);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (440, x'5FDCA08DCDBB4F1C413374B6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 440);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (315, 440, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374ba }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (441, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (441, 441);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (441, x'5FDCA08DCDBB4F1C413374BA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 441);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (316, 441, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374bf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (442, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (442, 442);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (442, x'5FDCA08DCDBB4F1C413374BF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is classified by'')', 442);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (317, 442, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374c0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (443, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (443, 443);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (443, x'5FDCA08DCDBB4F1C413374C0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� classificato da'')', 443);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (318, 443, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374c1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (444, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (444, 444);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (444, x'5FDCA08DCDBB4F1C413374C1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 444);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (194, 444, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374c2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (445, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (445, 445);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (445, x'5FDCA08DCDBB4F1C413374C2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 445);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (195, 445, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (196, 445, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (197, 445, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (198, 445, 3, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c413374c3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (446, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (446, 446);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (446, x'5FDCA08DCDBB4F1C413374C3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 446);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (319, 446, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374c4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (447, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (447, 447);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (447, x'5FDCA08DCDBB4F1C413374C4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 447);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (320, 447, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374c6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (448, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (448, 448);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (448, x'5FDCA08DCDBB4F1C413374C6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 448);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (321, 448, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374c7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (449, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (449, 449);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (449, x'5FDCA08DCDBB4F1C413374C7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is component of'')', 449);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (322, 449, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374c8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (450, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (450, 450);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (450, x'5FDCA08DCDBB4F1C413374C8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� componente di'')', 450);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (323, 450, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374c9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (451, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (451, 451);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (451, x'5FDCA08DCDBB4F1C413374C9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 451);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (199, 451, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374ca }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (452, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (452, 452);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (452, x'5FDCA08DCDBB4F1C413374CA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 452);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (200, 452, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (201, 452, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (202, 452, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374cb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (453, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (453, 453);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (453, x'5FDCA08DCDBB4F1C413374CB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 453);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (324, 453, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374cc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (454, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (454, 454);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (454, x'5FDCA08DCDBB4F1C413374CC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 454);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (325, 454, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374ce }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (455, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (455, 455);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (455, x'5FDCA08DCDBB4F1C413374CE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 455);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (326, 455, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374cf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (456, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (456, 456);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (456, x'5FDCA08DCDBB4F1C413374CF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is concept expressed by'')', 456);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (327, 456, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374d0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (457, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (457, 457);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (457, x'5FDCA08DCDBB4F1C413374D0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un concetto espresso da'')', 457);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (328, 457, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374d1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (458, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (458, 458);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (458, x'5FDCA08DCDBB4F1C413374D1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 458);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (203, 458, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374d2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (459, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (459, 459);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (459, x'5FDCA08DCDBB4F1C413374D2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 459);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (204, 459, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374d3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (460, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (460, 460);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (460, x'5FDCA08DCDBB4F1C413374D3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 460);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (329, 460, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413374d4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (461, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (461, 461);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (461, x'5FDCA08DCDBB4F1C413374D4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 461);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (330, 461, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374d5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (462, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (462, 462);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (462, x'5FDCA08DCDBB4F1C413374D5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 462);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (331, 462, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374d7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (463, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (463, 463);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (463, x'5FDCA08DCDBB4F1C413374D7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 463);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (332, 463, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374d8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (464, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (464, 464);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (464, x'5FDCA08DCDBB4F1C413374D8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is concept used in'')', 464);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (333, 464, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374d9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (465, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (465, 465);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (465, x'5FDCA08DCDBB4F1C413374D9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un concetto usato in'')', 465);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (334, 465, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374da }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (466, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (466, 466);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (466, x'5FDCA08DCDBB4F1C413374DA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 466);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (205, 466, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374db }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (467, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (467, 467);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (467, x'5FDCA08DCDBB4F1C413374DB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 467);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (206, 467, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374dc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (468, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (468, 468);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (468, x'5FDCA08DCDBB4F1C413374DC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 468);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (335, 468, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374dd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (469, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (469, 469);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (469, x'5FDCA08DCDBB4F1C413374DD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 469);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (336, 469, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374df }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (470, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (470, 470);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (470, x'5FDCA08DCDBB4F1C413374DF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 470);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (337, 470, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374e0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (471, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (471, 471);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (471, x'5FDCA08DCDBB4F1C413374E0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is conceptualized by'')', 471);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (338, 471, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374e1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (472, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (472, 472);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (472, x'5FDCA08DCDBB4F1C413374E1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� concettualizzato da'')', 472);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (339, 472, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374e2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (473, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (473, 473);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (473, x'5FDCA08DCDBB4F1C413374E2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 473);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (207, 473, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374e3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (474, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (474, 474);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (474, x'5FDCA08DCDBB4F1C413374E3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 474);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (208, 474, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374e4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (475, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (475, 475);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (475, x'5FDCA08DCDBB4F1C413374E4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 475);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (340, 475, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374e5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (476, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (476, 476);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (476, x'5FDCA08DCDBB4F1C413374E5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 476);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (341, 476, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374e7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (477, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (477, 477);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (477, x'5FDCA08DCDBB4F1C413374E7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 477);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (342, 477, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374e8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (478, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (478, 478);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (478, x'5FDCA08DCDBB4F1C413374E8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is concretely expressed by'')', 478);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (343, 478, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374e9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (479, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (479, 479);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (479, x'5FDCA08DCDBB4F1C413374E9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� espresso concretamente da'')', 479);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (344, 479, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374ea }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (480, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (480, 480);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (480, x'5FDCA08DCDBB4F1C413374EA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 480);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (209, 480, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374eb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (481, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (481, 481);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (481, x'5FDCA08DCDBB4F1C413374EB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 481);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (210, 481, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374ec }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (482, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (482, 482);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (482, x'5FDCA08DCDBB4F1C413374EC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 482);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (345, 482, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374ed }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (483, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (483, 483);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (483, x'5FDCA08DCDBB4F1C413374ED', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 483);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (346, 483, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374ef }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (484, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (484, 484);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (484, x'5FDCA08DCDBB4F1C413374EF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 484);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (347, 484, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374f0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (485, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (485, 485);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (485, x'5FDCA08DCDBB4F1C413374F0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is constituent of'')', 485);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (348, 485, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374f1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (486, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (486, 486);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (486, x'5FDCA08DCDBB4F1C413374F1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� costituente di'')', 486);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (349, 486, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374f2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (487, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (487, 487);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (487, x'5FDCA08DCDBB4F1C413374F2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 487);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (211, 487, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374f3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (488, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (488, 488);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (488, x'5FDCA08DCDBB4F1C413374F3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 488);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (212, 488, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (213, 488, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374f4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (489, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (489, 489);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (489, x'5FDCA08DCDBB4F1C413374F4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 489);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (350, 489, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374f5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (490, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (490, 490);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (490, x'5FDCA08DCDBB4F1C413374F5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 490);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (351, 490, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374f7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (491, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (491, 491);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (491, x'5FDCA08DCDBB4F1C413374F7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 491);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (352, 491, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413374f8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (492, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (492, 492);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (492, x'5FDCA08DCDBB4F1C413374F8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is constraint for'')', 492);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (353, 492, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374f9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (493, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (493, 493);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (493, x'5FDCA08DCDBB4F1C413374F9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un vincolo per'')', 493);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (354, 493, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413374fa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (494, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (494, 494);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (494, x'5FDCA08DCDBB4F1C413374FA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 494);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (214, 494, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413374fb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (495, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (495, 495);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (495, x'5FDCA08DCDBB4F1C413374FB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 495);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (215, 495, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413374fc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (496, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (496, 496);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (496, x'5FDCA08DCDBB4F1C413374FC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 496);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (355, 496, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413374fd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (497, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (497, 497);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (497, x'5FDCA08DCDBB4F1C413374FD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 497);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (356, 497, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413374ff }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (498, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (498, 498);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (498, x'5FDCA08DCDBB4F1C413374FF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 498);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (357, 498, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337500 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (499, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (499, 499);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (499, x'5FDCA08DCDBB4F1C41337500', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is covered by'')', 499);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (358, 499, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337501 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (500, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (500, 500);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (500, x'5FDCA08DCDBB4F1C41337501', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� ricoperto da'')', 500);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (359, 500, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337502 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (501, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (501, 501);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (501, x'5FDCA08DCDBB4F1C41337502', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 501);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (216, 501, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337503 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (502, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (502, 502);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (502, x'5FDCA08DCDBB4F1C41337503', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 502);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (217, 502, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (218, 502, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337504 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (503, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (503, 503);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (503, x'5FDCA08DCDBB4F1C41337504', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 503);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (360, 503, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337505 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (504, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (504, 504);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (504, x'5FDCA08DCDBB4F1C41337505', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 504);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (361, 504, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133750b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (505, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (505, 505);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (505, x'5FDCA08DCDBB4F1C4133750B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 505);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (362, 505, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133750c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (506, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (506, 506);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (506, x'5FDCA08DCDBB4F1C4133750C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is defined in'')', 506);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (363, 506, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133750d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (507, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (507, 507);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (507, x'5FDCA08DCDBB4F1C4133750D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� definito in'')', 507);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (364, 507, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133750e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (508, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (508, 508);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (508, x'5FDCA08DCDBB4F1C4133750E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 508);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (219, 508, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133750f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (509, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (509, 509);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (509, x'5FDCA08DCDBB4F1C4133750F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 509);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (220, 509, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337510 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (510, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (510, 510);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (510, x'5FDCA08DCDBB4F1C41337510', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 510);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (365, 510, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337511 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (511, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (511, 511);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (511, x'5FDCA08DCDBB4F1C41337511', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 511);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (366, 511, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337513 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (512, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (512, 512);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (512, x'5FDCA08DCDBB4F1C41337513', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 512);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (367, 512, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337514 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (513, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (513, 513);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (513, x'5FDCA08DCDBB4F1C41337514', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is described by'')', 513);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (368, 513, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337515 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (514, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (514, 514);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (514, x'5FDCA08DCDBB4F1C41337515', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� descritto da'')', 514);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (369, 514, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337516 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (515, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (515, 515);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (515, x'5FDCA08DCDBB4F1C41337516', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 515);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (221, 515, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337517 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (516, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (516, 516);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (516, x'5FDCA08DCDBB4F1C41337517', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 516);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (222, 516, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (223, 516, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337518 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (517, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (517, 517);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (517, x'5FDCA08DCDBB4F1C41337518', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 517);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (370, 517, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337519 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (518, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (518, 518);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (518, x'5FDCA08DCDBB4F1C41337519', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 518);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (371, 518, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133751a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (519, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (519, 519);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (519, x'5FDCA08DCDBB4F1C4133751A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 519);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (372, 519, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133751b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (520, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (520, 520);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (520, x'5FDCA08DCDBB4F1C4133751B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is event included in'')', 520);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (373, 520, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133751c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (521, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (521, 521);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (521, x'5FDCA08DCDBB4F1C4133751C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isEventIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un evento nel contesto di'')', 521);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (374, 521, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133751d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (522, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (522, 522);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (522, x'5FDCA08DCDBB4F1C4133751D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 522);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (224, 522, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133751e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (523, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (523, 523);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (523, x'5FDCA08DCDBB4F1C4133751E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 523);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (225, 523, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (226, 523, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133751f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (524, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (524, 524);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (524, x'5FDCA08DCDBB4F1C4133751F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 524);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (375, 524, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337520 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (525, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (525, 525);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (525, x'5FDCA08DCDBB4F1C41337520', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 525);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (376, 525, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337522 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (526, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (526, 526);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (526, x'5FDCA08DCDBB4F1C41337522', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 526);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (377, 526, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337523 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (527, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (527, 527);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (527, x'5FDCA08DCDBB4F1C41337523', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is executed in'')', 527);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (378, 527, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337524 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (528, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (528, 528);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (528, x'5FDCA08DCDBB4F1C41337524', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� eseguito mediante'')', 528);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (379, 528, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337525 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (529, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (529, 529);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (529, x'5FDCA08DCDBB4F1C41337525', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 529);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (227, 529, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337526 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (530, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (530, 530);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (530, x'5FDCA08DCDBB4F1C41337526', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 530);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (228, 530, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (229, 530, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (230, 530, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (231, 530, 3, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c41337527 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (531, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (531, 531);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (531, x'5FDCA08DCDBB4F1C41337527', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 531);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (380, 531, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337528 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (532, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (532, 532);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (532, x'5FDCA08DCDBB4F1C41337528', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 532);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (381, 532, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133752a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (533, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (533, 533);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (533, x'5FDCA08DCDBB4F1C4133752A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 533);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (382, 533, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133752b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (534, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (534, 534);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (534, x'5FDCA08DCDBB4F1C4133752B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is expanded in'')', 534);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (383, 534, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133752c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (535, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (535, 535);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (535, x'5FDCA08DCDBB4F1C4133752C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� espansa in'')', 535);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (384, 535, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133752d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (536, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (536, 536);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (536, x'5FDCA08DCDBB4F1C4133752D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 536);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (232, 536, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133752e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (537, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (537, 537);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (537, x'5FDCA08DCDBB4F1C4133752E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 537);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (233, 537, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133752f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (538, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (538, 538);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (538, x'5FDCA08DCDBB4F1C4133752F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 538);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (385, 538, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337530 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (539, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (539, 539);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (539, x'5FDCA08DCDBB4F1C41337530', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 539);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (386, 539, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337532 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (540, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (540, 540);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (540, x'5FDCA08DCDBB4F1C41337532', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 540);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (387, 540, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337533 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (541, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (541, 541);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (541, x'5FDCA08DCDBB4F1C41337533', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is expressed by'')', 541);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (388, 541, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337534 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (542, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (542, 542);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (542, x'5FDCA08DCDBB4F1C41337534', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� espresso da'')', 542);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (389, 542, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337535 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (543, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (543, 543);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (543, x'5FDCA08DCDBB4F1C41337535', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 543);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (234, 543, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337536 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (544, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (544, 544);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (544, x'5FDCA08DCDBB4F1C41337536', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 544);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (235, 544, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337537 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (545, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (545, 545);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (545, x'5FDCA08DCDBB4F1C41337537', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 545);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (390, 545, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337538 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (546, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (546, 546);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (546, x'5FDCA08DCDBB4F1C41337538', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 546);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (391, 546, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133753a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (547, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (547, 547);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (547, x'5FDCA08DCDBB4F1C4133753A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 547);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (392, 547, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133753b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (548, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (548, 548);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (548, x'5FDCA08DCDBB4F1C4133753B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is introduced by'')', 548);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (393, 548, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133753c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (549, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (549, 549);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (549, x'5FDCA08DCDBB4F1C4133753C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� introdotto da'')', 549);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (394, 549, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133753f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (550, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (550, 550);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (550, x'5FDCA08DCDBB4F1C4133753F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 550);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (236, 550, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337540 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (551, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (551, 551);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (551, x'5FDCA08DCDBB4F1C41337540', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 551);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (237, 551, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337541 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (552, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (552, 552);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (552, x'5FDCA08DCDBB4F1C41337541', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 552);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (395, 552, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337542 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (553, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (553, 553);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (553, x'5FDCA08DCDBB4F1C41337542', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 553);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (396, 553, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337544 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (554, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (554, 554);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (554, x'5FDCA08DCDBB4F1C41337544', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 554);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (397, 554, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337545 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (555, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (555, 555);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (555, x'5FDCA08DCDBB4F1C41337545', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is location of'')', 555);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (398, 555, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337546 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (556, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (556, 556);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (556, x'5FDCA08DCDBB4F1C41337546', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� una localizzazione di'')', 556);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (399, 556, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337547 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (557, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (557, 557);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (557, x'5FDCA08DCDBB4F1C41337547', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 557);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (238, 557, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337548 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (558, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (558, 558);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (558, x'5FDCA08DCDBB4F1C41337548', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 558);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (239, 558, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337549 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (559, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (559, 559);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (559, x'5FDCA08DCDBB4F1C41337549', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 559);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (400, 559, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133754a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (560, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (560, 560);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (560, x'5FDCA08DCDBB4F1C4133754A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 560);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (401, 560, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133754c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (561, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (561, 561);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (561, x'5FDCA08DCDBB4F1C4133754C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 561);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (402, 561, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133754d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (562, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (562, 562);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (562, x'5FDCA08DCDBB4F1C4133754D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is member of'')', 562);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (403, 562, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133754e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (563, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (563, 563);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (563, x'5FDCA08DCDBB4F1C4133754E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� membro di'')', 563);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (404, 563, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133754f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (564, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (564, 564);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (564, x'5FDCA08DCDBB4F1C4133754F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 564);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (240, 564, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337550 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (565, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (565, 565);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (565, x'5FDCA08DCDBB4F1C41337550', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 565);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (241, 565, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (242, 565, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337551 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (566, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (566, 566);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (566, x'5FDCA08DCDBB4F1C41337551', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 566);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (405, 566, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337552 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (567, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (567, 567);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (567, x'5FDCA08DCDBB4F1C41337552', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 567);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (406, 567, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337553 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (568, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (568, 568);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (568, x'5FDCA08DCDBB4F1C41337553', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 568);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (407, 568, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337554 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (569, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (569, 569);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (569, x'5FDCA08DCDBB4F1C41337554', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is object included in'')', 569);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (408, 569, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337555 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (570, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (570, 570);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (570, x'5FDCA08DCDBB4F1C41337555', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObjectIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un oggetto nel contesto di'')', 570);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (409, 570, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337556 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (571, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (571, 571);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (571, x'5FDCA08DCDBB4F1C41337556', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 571);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (243, 571, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337557 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (572, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (572, 572);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (572, x'5FDCA08DCDBB4F1C41337557', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 572);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (244, 572, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (245, 572, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337558 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (573, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (573, 573);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (573, x'5FDCA08DCDBB4F1C41337558', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 573);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (410, 573, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337559 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (574, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (574, 574);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (574, x'5FDCA08DCDBB4F1C41337559', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 574);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (411, 574, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133755a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (575, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (575, 575);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (575, x'5FDCA08DCDBB4F1C4133755A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 575);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (412, 575, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133755c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (576, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (576, 576);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (576, x'5FDCA08DCDBB4F1C4133755C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 576);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (413, 576, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133755d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (577, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (577, 577);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (577, x'5FDCA08DCDBB4F1C4133755D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is observable at'')', 577);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (414, 577, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133755e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (578, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (578, 578);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (578, x'5FDCA08DCDBB4F1C4133755E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� osservabile a'')', 578);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (415, 578, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133755f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (579, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (579, 579);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (579, x'5FDCA08DCDBB4F1C4133755F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 579);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (246, 579, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337560 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (580, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (580, 580);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (580, x'5FDCA08DCDBB4F1C41337560', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 580);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (247, 580, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (248, 580, 1, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (249, 580, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (250, 580, 3, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c41337561 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (581, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (581, 581);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (581, x'5FDCA08DCDBB4F1C41337561', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 581);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (416, 581, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337562 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (582, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (582, 582);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (582, x'5FDCA08DCDBB4F1C41337562', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 582);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (417, 582, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337564 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (583, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (583, 583);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (583, x'5FDCA08DCDBB4F1C41337564', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 583);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (418, 583, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337565 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (584, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (584, 584);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (584, x'5FDCA08DCDBB4F1C41337565', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is parameter for'')', 584);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (419, 584, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337566 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (585, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (585, 585);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (585, x'5FDCA08DCDBB4F1C41337566', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un parametro per'')', 585);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (420, 585, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337567 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (586, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (586, 586);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (586, x'5FDCA08DCDBB4F1C41337567', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 586);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (251, 586, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337568 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (587, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (587, 587);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (587, x'5FDCA08DCDBB4F1C41337568', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 587);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (252, 587, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (253, 587, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337569 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (588, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (588, 588);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (588, x'5FDCA08DCDBB4F1C41337569', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 588);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (421, 588, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133756a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (589, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (589, 589);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (589, x'5FDCA08DCDBB4F1C4133756A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 589);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (422, 589, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133756b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (590, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (590, 590);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (590, x'5FDCA08DCDBB4F1C4133756B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 590);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (423, 590, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133756d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (591, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (591, 591);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (591, x'5FDCA08DCDBB4F1C4133756D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 591);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (424, 591, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133756e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (592, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (592, 592);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (592, x'5FDCA08DCDBB4F1C4133756E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is parametrized by'')', 592);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (425, 592, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133756f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (593, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (593, 593);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (593, x'5FDCA08DCDBB4F1C4133756F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� parametrizzato da'')', 593);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (426, 593, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337570 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (594, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (594, 594);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (594, x'5FDCA08DCDBB4F1C41337570', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 594);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (254, 594, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337571 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (595, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (595, 595);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (595, x'5FDCA08DCDBB4F1C41337571', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 595);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (255, 595, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337574 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (596, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (596, 596);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (596, x'5FDCA08DCDBB4F1C41337574', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 596);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (256, 596, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337576 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (597, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (597, 597);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (597, x'5FDCA08DCDBB4F1C41337576', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 597);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (427, 597, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337577 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (598, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (598, 598);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (598, x'5FDCA08DCDBB4F1C41337577', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 598);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (428, 598, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337579 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (599, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (599, 599);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (599, x'5FDCA08DCDBB4F1C41337579', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 599);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (429, 599, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133757a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (600, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (600, 600);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (600, x'5FDCA08DCDBB4F1C4133757A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is part of'')', 600);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (430, 600, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133757b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (601, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (601, 601);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (601, x'5FDCA08DCDBB4F1C4133757B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� parte di'')', 601);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (431, 601, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133757c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (602, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (602, 602);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (602, x'5FDCA08DCDBB4F1C4133757C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 602);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (257, 602, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133757d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (603, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (603, 603);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (603, x'5FDCA08DCDBB4F1C4133757D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 603);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (258, 603, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133757e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (604, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (604, 604);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (604, x'5FDCA08DCDBB4F1C4133757E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 604);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (432, 604, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133757f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (605, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (605, 605);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (605, x'5FDCA08DCDBB4F1C4133757F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 605);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (433, 605, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337581 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (606, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (606, 606);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (606, x'5FDCA08DCDBB4F1C41337581', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 606);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (434, 606, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337582 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (607, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (607, 607);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (607, x'5FDCA08DCDBB4F1C41337582', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is participant in'')', 607);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (435, 607, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337583 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (608, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (608, 608);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (608, x'5FDCA08DCDBB4F1C41337583', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un partecipante a'')', 608);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (436, 608, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337584 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (609, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (609, 609);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (609, x'5FDCA08DCDBB4F1C41337584', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 609);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (259, 609, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337585 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (610, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (610, 610);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (610, x'5FDCA08DCDBB4F1C41337585', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 610);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (260, 610, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (261, 610, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (262, 610, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (263, 610, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (264, 610, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337586 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (611, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (611, 611);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (611, x'5FDCA08DCDBB4F1C41337586', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description976', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 611);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (265, 611, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337587 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (612, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (612, 612);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (612, x'5FDCA08DCDBB4F1C41337587', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description976', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List289', 612);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (437, 612, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08dcdbb4f1c41337588 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (613, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (613, 613);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (613, x'5FDCA08DCDBB4F1C41337588', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List289', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 613);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (266, 613, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c41337589 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (614, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (614, 614);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (614, x'5FDCA08DCDBB4F1C41337589', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List289', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 614);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (438, 614, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c4133758a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (615, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (615, 615);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (615, x'5FDCA08DCDBB4F1C4133758A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List289', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List290', 615);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (439, 615, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c4133758b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (616, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (616, 616);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (616, x'5FDCA08DCDBB4F1C4133758B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List290', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 616);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (267, 616, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c4133758c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (617, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (617, 617);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (617, x'5FDCA08DCDBB4F1C4133758C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List290', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 617);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (440, 617, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c4133758d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (618, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (618, 618);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (618, x'5FDCA08DCDBB4F1C4133758D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List290', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 618);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (441, 618, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c4133758e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (619, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (619, 619);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (619, x'5FDCA08DCDBB4F1C4133758E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description976', 619);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (442, 619, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133758f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (620, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (620, 620);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (620, x'5FDCA08DCDBB4F1C4133758F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description977', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 620);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (268, 620, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337590 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (621, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (621, 621);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (621, x'5FDCA08DCDBB4F1C41337590', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description977', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List291', 621);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (443, 621, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08dcdbb4f1c41337591 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (622, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (622, 622);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (622, x'5FDCA08DCDBB4F1C41337591', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List291', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 622);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (269, 622, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c41337592 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (623, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (623, 623);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (623, x'5FDCA08DCDBB4F1C41337592', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List291', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 623);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (444, 623, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c41337593 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (624, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (624, 624);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (624, x'5FDCA08DCDBB4F1C41337593', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List291', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List292', 624);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (445, 624, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c41337594 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (625, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (625, 625);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (625, x'5FDCA08DCDBB4F1C41337594', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List292', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 625);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (270, 625, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c41337595 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (626, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (626, 626);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (626, x'5FDCA08DCDBB4F1C41337595', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List292', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 626);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (446, 626, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c41337596 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (627, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (627, 627);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (627, x'5FDCA08DCDBB4F1C41337596', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List292', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 627);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (447, 627, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c41337597 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (628, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (628, 628);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (628, x'5FDCA08DCDBB4F1C41337597', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description977', 628);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (448, 628, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337599 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (629, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (629, 629);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (629, x'5FDCA08DCDBB4F1C41337599', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 629);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (449, 629, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133759a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (630, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (630, 630);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (630, x'5FDCA08DCDBB4F1C4133759A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is postcondition of'')', 630);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (450, 630, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133759b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (631, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (631, 631);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (631, x'5FDCA08DCDBB4F1C4133759B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� postcondizione di'')', 631);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (451, 631, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133759c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (632, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (632, 632);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (632, x'5FDCA08DCDBB4F1C4133759C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 632);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (271, 632, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133759d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (633, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (633, 633);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (633, x'5FDCA08DCDBB4F1C4133759D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 633);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (272, 633, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (273, 633, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (274, 633, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (275, 633, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (276, 633, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c4133759e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (634, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (634, 634);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (634, x'5FDCA08DCDBB4F1C4133759E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description978', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 634);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (277, 634, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c4133759f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (635, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (635, 635);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (635, x'5FDCA08DCDBB4F1C4133759F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description978', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List293', 635);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (452, 635, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08dcdbb4f1c413375a0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (636, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (636, 636);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (636, x'5FDCA08DCDBB4F1C413375A0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List293', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 636);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (278, 636, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c413375a1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (637, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (637, 637);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (637, x'5FDCA08DCDBB4F1C413375A1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List293', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 637);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (453, 637, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c413375a2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (638, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (638, 638);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (638, x'5FDCA08DCDBB4F1C413375A2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List293', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List294', 638);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (454, 638, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c413375a3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (639, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (639, 639);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (639, x'5FDCA08DCDBB4F1C413375A3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List294', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 639);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (279, 639, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c413375a4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (640, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (640, 640);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (640, x'5FDCA08DCDBB4F1C413375A4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List294', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 640);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (455, 640, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c413375a5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (641, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (641, 641);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (641, x'5FDCA08DCDBB4F1C413375A5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List294', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 641);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (456, 641, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c413375a6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (642, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (642, 642);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (642, x'5FDCA08DCDBB4F1C413375A6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description978', 642);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (457, 642, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375a7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (643, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (643, 643);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (643, x'5FDCA08DCDBB4F1C413375A7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description979', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 643);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (280, 643, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c413375a8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (644, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (644, 644);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (644, x'5FDCA08DCDBB4F1C413375A8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description979', 'http://www.w3.org/2002/07/owl#unionOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List295', 644);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (458, 644, 0, 'http://www.w3.org/2002/07/owl#unionOf');


-- { _id: 5fdca08dcdbb4f1c413375a9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (645, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (645, 645);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (645, x'5FDCA08DCDBB4F1C413375A9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List295', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 645);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (281, 645, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c413375aa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (646, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (646, 646);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (646, x'5FDCA08DCDBB4F1C413375AA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List295', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 646);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (459, 646, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c413375ab }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (647, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (647, 647);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (647, x'5FDCA08DCDBB4F1C413375AB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List295', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List296', 647);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (460, 647, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c413375ac }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (648, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (648, 648);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (648, x'5FDCA08DCDBB4F1C413375AC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List296', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List', 648);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (282, 648, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#List');


-- { _id: 5fdca08dcdbb4f1c413375ad }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (649, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (649, 649);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (649, x'5FDCA08DCDBB4F1C413375AD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List296', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 649);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (461, 649, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#first');


-- { _id: 5fdca08dcdbb4f1c413375ae }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (650, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (650, 650);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (650, x'5FDCA08DCDBB4F1C413375AE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:List296', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#nil', 650);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (462, 650, 0, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#rest');


-- { _id: 5fdca08dcdbb4f1c413375af }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (651, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (651, 651);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (651, x'5FDCA08DCDBB4F1C413375AF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description979', 651);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (463, 651, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375b1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (652, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (652, 652);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (652, x'5FDCA08DCDBB4F1C413375B1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 652);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (464, 652, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375b2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (653, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (653, 653);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (653, x'5FDCA08DCDBB4F1C413375B2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is precondition of'')', 653);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (465, 653, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375b3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (654, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (654, 654);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (654, x'5FDCA08DCDBB4F1C413375B3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� precondizione di'')', 654);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (466, 654, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375b4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (655, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (655, 655);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (655, x'5FDCA08DCDBB4F1C413375B4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 655);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (283, 655, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375b7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (656, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (656, 656);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (656, x'5FDCA08DCDBB4F1C413375B7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 656);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (284, 656, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375b9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (657, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (657, 657);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (657, x'5FDCA08DCDBB4F1C413375B9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Quality', 657);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (467, 657, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375ba }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (658, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (658, 658);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (658, x'5FDCA08DCDBB4F1C413375BA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 658);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (468, 658, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375bc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (659, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (659, 659);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (659, x'5FDCA08DCDBB4F1C413375BC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 659);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (469, 659, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375bd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (660, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (660, 660);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (660, x'5FDCA08DCDBB4F1C413375BD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is quality of'')', 660);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (470, 660, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375be }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (661, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (661, 661);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (661, x'5FDCA08DCDBB4F1C413375BE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� una qualit� di'')', 661);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (471, 661, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375bf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (662, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (662, 662);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (662, x'5FDCA08DCDBB4F1C413375BF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 662);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (285, 662, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375c0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (663, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (663, 663);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (663, x'5FDCA08DCDBB4F1C413375C0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 663);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (286, 663, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375c1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (664, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (664, 664);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (664, x'5FDCA08DCDBB4F1C413375C1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 664);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (472, 664, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413375c2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (665, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (665, 665);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (665, x'5FDCA08DCDBB4F1C413375C2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 665);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (473, 665, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375c3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (666, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (666, 666);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (666, x'5FDCA08DCDBB4F1C413375C3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 666);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (474, 666, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375c5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (667, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (667, 667);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (667, x'5FDCA08DCDBB4F1C413375C5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 667);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (475, 667, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375c6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (668, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (668, 668);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (668, x'5FDCA08DCDBB4F1C413375C6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is realized by'')', 668);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (476, 668, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375c7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (669, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (669, 669);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (669, x'5FDCA08DCDBB4F1C413375C7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� realizzato da'')', 669);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (477, 669, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375c8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (670, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (670, 670);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (670, x'5FDCA08DCDBB4F1C413375C8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 670);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (287, 670, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375c9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (671, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (671, 671);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (671, x'5FDCA08DCDBB4F1C413375C9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 671);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (288, 671, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375ca }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (672, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (672, 672);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (672, x'5FDCA08DCDBB4F1C413375CA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 672);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (478, 672, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375cb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (673, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (673, 673);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (673, x'5FDCA08DCDBB4F1C413375CB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 673);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (479, 673, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375cd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (674, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (674, 674);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (674, x'5FDCA08DCDBB4F1C413375CD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 674);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (480, 674, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375ce }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (675, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (675, 675);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (675, x'5FDCA08DCDBB4F1C413375CE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is reference of'')', 675);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (481, 675, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375cf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (676, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (676, 676);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (676, x'5FDCA08DCDBB4F1C413375CF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� il riferimento di'')', 676);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (482, 676, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375d0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (677, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (677, 677);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (677, x'5FDCA08DCDBB4F1C413375D0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 677);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (289, 677, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375d1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (678, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (678, 678);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (678, x'5FDCA08DCDBB4F1C413375D1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 678);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (290, 678, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375d2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (679, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (679, 679);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (679, x'5FDCA08DCDBB4F1C413375D2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 679);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (483, 679, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413375d3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (680, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (680, 680);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (680, x'5FDCA08DCDBB4F1C413375D3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 680);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (484, 680, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375d4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (681, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (681, 681);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (681, x'5FDCA08DCDBB4F1C413375D4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 681);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (485, 681, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375d6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (682, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (682, 682);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (682, x'5FDCA08DCDBB4F1C413375D6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 682);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (486, 682, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375d7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (683, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (683, 683);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (683, x'5FDCA08DCDBB4F1C413375D7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is reference of information realized by'')', 683);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (487, 683, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375d8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (684, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (684, 684);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (684, x'5FDCA08DCDBB4F1C413375D8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� riferimento dell''''informazione realizzata da'')', 684);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (488, 684, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375d9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (685, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (685, 685);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (685, x'5FDCA08DCDBB4F1C413375D9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 685);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (291, 685, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375da }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (686, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (686, 686);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (686, x'5FDCA08DCDBB4F1C413375DA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 686);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (292, 686, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375db }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (687, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (687, 687);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (687, x'5FDCA08DCDBB4F1C413375DB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 687);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (489, 687, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375dc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (688, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (688, 688);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (688, x'5FDCA08DCDBB4F1C413375DC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 688);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (490, 688, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375de }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (689, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (689, 689);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (689, x'5FDCA08DCDBB4F1C413375DE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 689);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (491, 689, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375df }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (690, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (690, 690);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (690, x'5FDCA08DCDBB4F1C413375DF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is region for'')', 690);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (492, 690, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375e0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (691, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (691, 691);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (691, x'5FDCA08DCDBB4F1C413375E0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� una regione di'')', 691);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (493, 691, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375e1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (692, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (692, 692);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (692, x'5FDCA08DCDBB4F1C413375E1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 692);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (293, 692, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375e2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (693, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (693, 693);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (693, x'5FDCA08DCDBB4F1C413375E2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 693);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (294, 693, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375e4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (694, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (694, 694);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (694, x'5FDCA08DCDBB4F1C413375E4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 694);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (494, 694, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413375e7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (695, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (695, 695);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (695, x'5FDCA08DCDBB4F1C413375E7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 695);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (295, 695, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c413375e8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (696, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (696, 696);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (696, x'5FDCA08DCDBB4F1C413375E8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 696);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (495, 696, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375eb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (697, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (697, 697);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (697, x'5FDCA08DCDBB4F1C413375EB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 697);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (496, 697, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375ed }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (698, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (698, 698);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (698, x'5FDCA08DCDBB4F1C413375ED', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 698);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (497, 698, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375ee }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (699, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (699, 699);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (699, x'5FDCA08DCDBB4F1C413375EE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is related to concept'')', 699);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (498, 699, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375ef }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (700, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (700, 700);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (700, x'5FDCA08DCDBB4F1C413375EF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� associato al concetto'')', 700);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (499, 700, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375f0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (701, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (701, 701);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (701, x'5FDCA08DCDBB4F1C413375F0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 701);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (296, 701, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375f1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (702, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (702, 702);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (702, x'5FDCA08DCDBB4F1C413375F1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 702);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (297, 702, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375f2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (703, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (703, 703);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (703, x'5FDCA08DCDBB4F1C413375F2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 703);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (500, 703, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413375f3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (704, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (704, 704);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (704, x'5FDCA08DCDBB4F1C413375F3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 704);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (298, 704, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c413375f4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (705, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (705, 705);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (705, x'5FDCA08DCDBB4F1C413375F4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 705);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (501, 705, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375f5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (706, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (706, 706);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (706, x'5FDCA08DCDBB4F1C413375F5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 706);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (502, 706, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375f7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (707, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (707, 707);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (707, x'5FDCA08DCDBB4F1C413375F7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 707);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (503, 707, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413375f8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (708, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (708, 708);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (708, x'5FDCA08DCDBB4F1C413375F8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is related to description'')', 708);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (504, 708, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375f9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (709, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (709, 709);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (709, x'5FDCA08DCDBB4F1C413375F9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� associata alla descrizione'')', 709);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (505, 709, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413375fa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (710, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (710, 710);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (710, x'5FDCA08DCDBB4F1C413375FA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 710);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (299, 710, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413375fb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (711, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (711, 711);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (711, x'5FDCA08DCDBB4F1C413375FB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 711);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (300, 711, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (301, 711, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (302, 711, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413375fc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (712, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (712, 712);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (712, x'5FDCA08DCDBB4F1C413375FC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 712);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (506, 712, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413375fd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (713, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (713, 713);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (713, x'5FDCA08DCDBB4F1C413375FD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 713);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (507, 713, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413375ff }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (714, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (714, 714);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (714, x'5FDCA08DCDBB4F1C413375FF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 714);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (508, 714, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337600 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (715, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (715, 715);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (715, x'5FDCA08DCDBB4F1C41337600', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is role defined in'')', 715);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (509, 715, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337601 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (716, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (716, 716);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (716, x'5FDCA08DCDBB4F1C41337601', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un ruolo definito in'')', 716);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (510, 716, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337602 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (717, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (717, 717);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (717, x'5FDCA08DCDBB4F1C41337602', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 717);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (303, 717, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337603 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (718, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (718, 718);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (718, x'5FDCA08DCDBB4F1C41337603', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 718);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (304, 718, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (305, 718, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337604 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (719, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (719, 719);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (719, x'5FDCA08DCDBB4F1C41337604', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 719);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (511, 719, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337605 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (720, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (720, 720);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (720, x'5FDCA08DCDBB4F1C41337605', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 720);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (512, 720, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337607 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (721, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (721, 721);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (721, x'5FDCA08DCDBB4F1C41337607', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 721);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (513, 721, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337608 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (722, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (722, 722);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (722, x'5FDCA08DCDBB4F1C41337608', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is role of'')', 722);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (514, 722, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133760a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (723, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (723, 723);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (723, x'5FDCA08DCDBB4F1C4133760A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un ruolo di'')', 723);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (515, 723, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133760b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (724, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (724, 724);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (724, x'5FDCA08DCDBB4F1C4133760B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 724);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (306, 724, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133760c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (725, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (725, 725);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (725, x'5FDCA08DCDBB4F1C4133760C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 725);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (307, 725, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133760d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (726, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (726, 726);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (726, x'5FDCA08DCDBB4F1C4133760D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 726);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (516, 726, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133760e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (727, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (727, 727);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (727, x'5FDCA08DCDBB4F1C4133760E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 727);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (517, 727, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133760f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (728, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (728, 728);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (728, x'5FDCA08DCDBB4F1C4133760F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 728);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (518, 728, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337611 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (729, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (729, 729);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (729, x'5FDCA08DCDBB4F1C41337611', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 729);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (519, 729, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337612 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (730, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (730, 730);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (730, x'5FDCA08DCDBB4F1C41337612', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is satisfied by'')', 730);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (520, 730, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337613 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (731, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (731, 731);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (731, x'5FDCA08DCDBB4F1C41337613', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� soddisfatta da'')', 731);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (521, 731, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337614 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (732, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (732, 732);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (732, x'5FDCA08DCDBB4F1C41337614', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 732);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (308, 732, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337615 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (733, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (733, 733);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (733, x'5FDCA08DCDBB4F1C41337615', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 733);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (309, 733, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337616 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (734, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (734, 734);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (734, x'5FDCA08DCDBB4F1C41337616', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 734);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (522, 734, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337617 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (735, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (735, 735);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (735, x'5FDCA08DCDBB4F1C41337617', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 735);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (523, 735, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337619 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (736, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (736, 736);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (736, x'5FDCA08DCDBB4F1C41337619', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 736);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (524, 736, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133761a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (737, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (737, 737);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (737, x'5FDCA08DCDBB4F1C4133761A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,include)', 737);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (525, 737, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133761b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (738, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (738, 738);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (738, x'5FDCA08DCDBB4F1C4133761B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is setting for'')', 738);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (526, 738, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133761c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (739, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (739, 739);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (739, x'5FDCA08DCDBB4F1C4133761C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 739);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (310, 739, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133761d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (740, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (740, 740);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (740, x'5FDCA08DCDBB4F1C4133761D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 740);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (311, 740, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133761e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (741, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (741, 741);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (741, x'5FDCA08DCDBB4F1C4133761E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 741);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (527, 741, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133761f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (742, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (742, 742);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (742, x'5FDCA08DCDBB4F1C4133761F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 742);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (312, 742, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337620 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (743, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (743, 743);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (743, x'5FDCA08DCDBB4F1C41337620', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 743);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (528, 743, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337621 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (744, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (744, 744);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (744, x'5FDCA08DCDBB4F1C41337621', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 744);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (529, 744, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337623 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (745, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (745, 745);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (745, x'5FDCA08DCDBB4F1C41337623', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 745);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (530, 745, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337624 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (746, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (746, 746);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (746, x'5FDCA08DCDBB4F1C41337624', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is specialized by'')', 746);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (531, 746, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337625 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (747, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (747, 747);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (747, x'5FDCA08DCDBB4F1C41337625', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� specializzato da'')', 747);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (532, 747, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337626 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (748, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (748, 748);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (748, x'5FDCA08DCDBB4F1C41337626', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 748);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (313, 748, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337627 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (749, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (749, 749);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (749, x'5FDCA08DCDBB4F1C41337627', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 749);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (314, 749, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (315, 749, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (316, 749, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (317, 749, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (318, 749, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337628 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (750, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (750, 750);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (750, x'5FDCA08DCDBB4F1C41337628', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 750);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (319, 750, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (320, 750, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337629 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (751, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (751, 751);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (751, x'5FDCA08DCDBB4F1C41337629', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 751);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (533, 751, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133762a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (752, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (752, 752);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (752, x'5FDCA08DCDBB4F1C4133762A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 752);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (534, 752, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133762b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (753, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (753, 753);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (753, x'5FDCA08DCDBB4F1C4133762B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 753);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (535, 753, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133762d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (754, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (754, 754);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (754, x'5FDCA08DCDBB4F1C4133762D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 754);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (536, 754, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133762e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (755, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (755, 755);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (755, x'5FDCA08DCDBB4F1C4133762E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is subordinated to'')', 755);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (537, 755, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133762f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (756, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (756, 756);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (756, x'5FDCA08DCDBB4F1C4133762F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� subordinato a'')', 756);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (538, 756, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337630 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (757, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (757, 757);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (757, x'5FDCA08DCDBB4F1C41337630', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 757);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (321, 757, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337631 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (758, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (758, 758);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (758, x'5FDCA08DCDBB4F1C41337631', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 758);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (322, 758, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (323, 758, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (324, 758, 2, 'http://www.w3.org/2002/07/owl#ObjectProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (325, 758, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (326, 758, 4, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337632 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (759, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (759, 759);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (759, x'5FDCA08DCDBB4F1C41337632', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 759);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (327, 759, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (328, 759, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337633 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (760, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (760, 760);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (760, x'5FDCA08DCDBB4F1C41337633', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 760);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (539, 760, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337634 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (761, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (761, 761);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (761, x'5FDCA08DCDBB4F1C41337634', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 761);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (540, 761, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337636 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (762, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (762, 762);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (762, x'5FDCA08DCDBB4F1C41337636', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 762);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (541, 762, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337637 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (763, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (763, 763);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (763, x'5FDCA08DCDBB4F1C41337637', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is superordinated to'')', 763);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (542, 763, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337638 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (764, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (764, 764);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (764, x'5FDCA08DCDBB4F1C41337638', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� superordinato a'')', 764);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (543, 764, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133763a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (765, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (765, 765);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (765, x'5FDCA08DCDBB4F1C4133763A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 765);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (329, 765, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133763c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (766, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (766, 766);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (766, x'5FDCA08DCDBB4F1C4133763C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 766);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (330, 766, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (331, 766, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (332, 766, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133763d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (767, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (767, 767);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (767, x'5FDCA08DCDBB4F1C4133763D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 767);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (544, 767, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133763e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (768, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (768, 768);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (768, x'5FDCA08DCDBB4F1C4133763E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 768);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (545, 768, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337640 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (769, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (769, 769);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (769, x'5FDCA08DCDBB4F1C41337640', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 769);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (546, 769, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337641 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (770, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (770, 770);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (770, x'5FDCA08DCDBB4F1C41337641', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is task defined in'')', 770);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (547, 770, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337642 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (771, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (771, 771);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (771, x'5FDCA08DCDBB4F1C41337642', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un task definito in'')', 771);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (548, 771, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337643 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (772, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (772, 772);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (772, x'5FDCA08DCDBB4F1C41337643', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 772);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (333, 772, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337644 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (773, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (773, 773);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (773, x'5FDCA08DCDBB4F1C41337644', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 773);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (334, 773, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (335, 773, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337645 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (774, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (774, 774);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (774, x'5FDCA08DCDBB4F1C41337645', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 774);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (549, 774, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337646 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (775, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (775, 775);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (775, x'5FDCA08DCDBB4F1C41337646', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 775);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (550, 775, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337648 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (776, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (776, 776);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (776, x'5FDCA08DCDBB4F1C41337648', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 776);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (551, 776, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337649 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (777, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (777, 777);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (777, x'5FDCA08DCDBB4F1C41337649', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is task of'')', 777);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (552, 777, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133764a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (778, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (778, 778);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (778, x'5FDCA08DCDBB4F1C4133764A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un obiettivo per'')', 778);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (553, 778, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133764b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (779, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (779, 779);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (779, x'5FDCA08DCDBB4F1C4133764B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 779);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (336, 779, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133764c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (780, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (780, 780);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (780, x'5FDCA08DCDBB4F1C4133764C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 780);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (337, 780, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (338, 780, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133764d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (781, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (781, 781);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (781, x'5FDCA08DCDBB4F1C4133764D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 781);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (554, 781, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133764e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (782, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (782, 782);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (782, x'5FDCA08DCDBB4F1C4133764E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 782);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (555, 782, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133764f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (783, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (783, 783);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (783, x'5FDCA08DCDBB4F1C4133764F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 783);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (556, 783, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337650 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (784, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (784, 784);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (784, x'5FDCA08DCDBB4F1C41337650', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is time included in'')', 784);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (557, 784, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337651 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (785, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (785, 785);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (785, x'5FDCA08DCDBB4F1C41337651', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIncludedIn', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� un tempo nel contesto di'')', 785);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (558, 785, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337652 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (786, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (786, 786);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (786, x'5FDCA08DCDBB4F1C41337652', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 786);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (339, 786, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337653 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (787, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (787, 787);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (787, x'5FDCA08DCDBB4F1C41337653', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 787);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (340, 787, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (341, 787, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337654 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (788, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (788, 788);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (788, x'5FDCA08DCDBB4F1C41337654', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 788);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (559, 788, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337655 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (789, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (789, 789);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (789, x'5FDCA08DCDBB4F1C41337655', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 789);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (560, 789, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337657 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (790, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (790, 790);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (790, x'5FDCA08DCDBB4F1C41337657', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 790);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (561, 790, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337658 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (791, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (791, 791);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (791, x'5FDCA08DCDBB4F1C41337658', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''intervallo temporale di'')', 791);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (562, 791, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337659 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (792, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (792, 792);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (792, x'5FDCA08DCDBB4F1C41337659', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is time interval of'')', 792);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (563, 792, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133765a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (793, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (793, 793);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (793, x'5FDCA08DCDBB4F1C4133765A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 793);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (342, 793, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133765b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (794, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (794, 794);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (794, x'5FDCA08DCDBB4F1C4133765B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 794);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (343, 794, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (344, 794, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c4133765c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (795, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (795, 795);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (795, x'5FDCA08DCDBB4F1C4133765C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 795);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (564, 795, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133765e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (796, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (796, 796);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (796, x'5FDCA08DCDBB4F1C4133765E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 796);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (565, 796, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337662 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (797, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (797, 797);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (797, x'5FDCA08DCDBB4F1C41337662', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 797);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (566, 797, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337663 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (798, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (798, 798);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (798, x'5FDCA08DCDBB4F1C41337663', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is time of observation of'')', 798);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (567, 798, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337664 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (799, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (799, 799);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (799, x'5FDCA08DCDBB4F1C41337664', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� il tempo di osservazione di'')', 799);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (568, 799, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337665 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (800, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (800, 800);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (800, x'5FDCA08DCDBB4F1C41337665', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 800);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (345, 800, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337666 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (801, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (801, 801);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (801, x'5FDCA08DCDBB4F1C41337666', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 801);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (346, 801, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337667 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (802, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (802, 802);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (802, x'5FDCA08DCDBB4F1C41337667', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 802);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (569, 802, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337668 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (803, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (803, 803);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (803, x'5FDCA08DCDBB4F1C41337668', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 803);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (570, 803, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337669 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (804, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (804, 804);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (804, x'5FDCA08DCDBB4F1C41337669', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 804);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (571, 804, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133766b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (805, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (805, 805);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (805, x'5FDCA08DCDBB4F1C4133766B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 805);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (572, 805, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133766c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (806, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (806, 806);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (806, x'5FDCA08DCDBB4F1C4133766C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is unified by'')', 806);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (573, 806, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133766d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (807, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (807, 807);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (807, x'5FDCA08DCDBB4F1C4133766D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� unificato da'')', 807);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (574, 807, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133766e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (808, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (808, 808);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (808, x'5FDCA08DCDBB4F1C4133766E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 808);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (347, 808, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133766f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (809, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (809, 809);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (809, x'5FDCA08DCDBB4F1C4133766F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 809);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (348, 809, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337670 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (810, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (810, 810);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (810, x'5FDCA08DCDBB4F1C41337670', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 810);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (575, 810, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c41337671 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (811, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (811, 811);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (811, x'5FDCA08DCDBB4F1C41337671', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 811);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (349, 811, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c41337672 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (812, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (812, 812);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (812, x'5FDCA08DCDBB4F1C41337672', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 812);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (576, 812, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337673 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (813, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (813, 813);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (813, x'5FDCA08DCDBB4F1C41337673', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 813);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (577, 813, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337675 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (814, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (814, 814);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (814, x'5FDCA08DCDBB4F1C41337675', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 814);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (578, 814, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337676 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (815, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (815, 815);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (815, x'5FDCA08DCDBB4F1C41337676', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''near to'')', 815);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (579, 815, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337677 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (816, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (816, 816);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (816, x'5FDCA08DCDBB4F1C41337677', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 816);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (350, 816, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337678 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (817, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (817, 817);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (817, x'5FDCA08DCDBB4F1C41337678', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 817);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (351, 817, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337679 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (818, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (818, 818);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (818, x'5FDCA08DCDBB4F1C41337679', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 818);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (580, 818, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c4133767a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (819, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (819, 819);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (819, x'5FDCA08DCDBB4F1C4133767A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 819);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (352, 819, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c4133767b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (820, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (820, 820);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (820, x'5FDCA08DCDBB4F1C4133767B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 820);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (581, 820, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133767c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (821, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (821, 821);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (821, x'5FDCA08DCDBB4F1C4133767C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 821);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (582, 821, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133767e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (822, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (822, 822);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (822, x'5FDCA08DCDBB4F1C4133767E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 822);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (583, 822, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133767f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (823, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (823, 823);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (823, x'5FDCA08DCDBB4F1C4133767F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,overlaps)', 823);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (584, 823, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337680 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (824, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (824, 824);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (824, x'5FDCA08DCDBB4F1C41337680', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''sovrapposto a'')', 824);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (585, 824, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337681 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (825, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (825, 825);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (825, x'5FDCA08DCDBB4F1C41337681', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 825);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (353, 825, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337682 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (826, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (826, 826);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (826, x'5FDCA08DCDBB4F1C41337682', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 826);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (354, 826, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (355, 826, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337683 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (827, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (827, 827);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (827, x'5FDCA08DCDBB4F1C41337683', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 827);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (586, 827, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337684 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (828, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (828, 828);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (828, x'5FDCA08DCDBB4F1C41337684', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 828);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (587, 828, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337686 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (829, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (829, 829);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (829, x'5FDCA08DCDBB4F1C41337686', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 829);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (588, 829, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337687 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (830, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (830, 830);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (830, x'5FDCA08DCDBB4F1C41337687', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,parametrizes)', 830);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (589, 830, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337688 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (831, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (831, 831);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (831, x'5FDCA08DCDBB4F1C41337688', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,parametrizza)', 831);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (590, 831, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133768b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (832, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (832, 832);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (832, x'5FDCA08DCDBB4F1C4133768B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 832);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (356, 832, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c4133768f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (833, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (833, 833);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (833, x'5FDCA08DCDBB4F1C4133768F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 833);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (357, 833, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337690 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (834, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (834, 834);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (834, x'5FDCA08DCDBB4F1C41337690', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 834);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (358, 834, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c41337691 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (835, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (835, 835);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (835, x'5FDCA08DCDBB4F1C41337691', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 835);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (591, 835, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c41337692 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (836, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (836, 836);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (836, x'5FDCA08DCDBB4F1C41337692', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 836);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (592, 836, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c41337694 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (837, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (837, 837);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (837, x'5FDCA08DCDBB4F1C41337694', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 837);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (593, 837, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337695 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (838, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (838, 838);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (838, x'5FDCA08DCDBB4F1C41337695', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,precede)', 838);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (594, 838, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337696 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (839, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (839, 839);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (839, x'5FDCA08DCDBB4F1C41337696', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,precedes)', 839);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (595, 839, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337697 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (840, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (840, 840);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (840, x'5FDCA08DCDBB4F1C41337697', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 840);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (359, 840, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c41337698 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (841, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (841, 841);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (841, x'5FDCA08DCDBB4F1C41337698', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 841);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (360, 841, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c41337699 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (842, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (842, 842);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (842, x'5FDCA08DCDBB4F1C41337699', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 842);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (596, 842, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c4133769a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (843, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (843, 843);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (843, x'5FDCA08DCDBB4F1C4133769A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 843);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (597, 843, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c4133769c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (844, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (844, 844);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (844, x'5FDCA08DCDBB4F1C4133769C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 844);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (598, 844, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133769d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (845, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (845, 845);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (845, x'5FDCA08DCDBB4F1C4133769D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,realizes)', 845);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (599, 845, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133769e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (846, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (846, 846);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (846, x'5FDCA08DCDBB4F1C4133769E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,realizza)', 846);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (600, 846, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133769f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (847, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (847, 847);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (847, x'5FDCA08DCDBB4F1C4133769F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 847);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (361, 847, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376a0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (848, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (848, 848);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (848, x'5FDCA08DCDBB4F1C413376A0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 848);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (362, 848, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376a1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (849, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (849, 849);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (849, x'5FDCA08DCDBB4F1C413376A1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 849);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (601, 849, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376a2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (850, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (850, 850);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (850, x'5FDCA08DCDBB4F1C413376A2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 850);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (602, 850, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376a4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (851, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (851, 851);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (851, x'5FDCA08DCDBB4F1C413376A4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 851);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (603, 851, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376a5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (852, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (852, 852);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (852, x'5FDCA08DCDBB4F1C413376A5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''realizes information about'')', 852);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (604, 852, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376a6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (853, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (853, 853);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (853, x'5FDCA08DCDBB4F1C413376A6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''realizza informazione che si riferisce a a'')', 853);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (605, 853, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376a7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (854, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (854, 854);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (854, x'5FDCA08DCDBB4F1C413376A7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 854);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (363, 854, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376a8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (855, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (855, 855);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (855, x'5FDCA08DCDBB4F1C413376A8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 855);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (364, 855, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376a9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (856, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (856, 856);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (856, x'5FDCA08DCDBB4F1C413376A9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2002/07/owl#inverseOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 856);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (606, 856, 0, 'http://www.w3.org/2002/07/owl#inverseOf');


-- { _id: 5fdca08dcdbb4f1c413376aa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (857, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (857, 857);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (857, x'5FDCA08DCDBB4F1C413376AA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#SymmetricProperty', 857);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (365, 857, 0, 'http://www.w3.org/2002/07/owl#SymmetricProperty');


-- { _id: 5fdca08dcdbb4f1c413376ab }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (858, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (858, 858);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (858, x'5FDCA08DCDBB4F1C413376AB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 858);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (607, 858, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376ac }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (859, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (859, 859);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (859, x'5FDCA08DCDBB4F1C413376AC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 859);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (608, 859, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376ae }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (860, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (860, 860);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (860, x'5FDCA08DCDBB4F1C413376AE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 860);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (609, 860, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376af }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (861, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (861, 861);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (861, x'5FDCA08DCDBB4F1C413376AF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''is in the same setting as'')', 861);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (610, 861, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376b0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (862, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (862, 862);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (862, x'5FDCA08DCDBB4F1C413376B0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''� nella stessa situazione di'')', 862);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (611, 862, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376b1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (863, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (863, 863);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (863, x'5FDCA08DCDBB4F1C413376B1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 863);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (366, 863, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376b2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (864, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (864, 864);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (864, x'5FDCA08DCDBB4F1C413376B2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 864);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (367, 864, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376b3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (865, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (865, 865);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (865, x'5FDCA08DCDBB4F1C413376B3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 865);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (612, 865, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376b5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (866, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (866, 866);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (866, x'5FDCA08DCDBB4F1C413376B5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 866);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (613, 866, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376bb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (867, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (867, 867);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (867, x'5FDCA08DCDBB4F1C413376BB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 867);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (614, 867, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376bc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (868, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (868, 868);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (868, x'5FDCA08DCDBB4F1C413376BC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,satisfies)', 868);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (615, 868, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376bd }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (869, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (869, 869);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (869, x'5FDCA08DCDBB4F1C413376BD', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,soddisfa)', 869);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (616, 869, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376be }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (870, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (870, 870);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (870, x'5FDCA08DCDBB4F1C413376BE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 870);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (368, 870, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376bf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (871, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (871, 871);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (871, x'5FDCA08DCDBB4F1C413376BF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 871);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (369, 871, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376c0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (872, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (872, 872);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (872, x'5FDCA08DCDBB4F1C413376C0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#TransitiveProperty', 872);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (370, 872, 0, 'http://www.w3.org/2002/07/owl#TransitiveProperty');


-- { _id: 5fdca08dcdbb4f1c413376c1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (873, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (873, 873);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (873, x'5FDCA08DCDBB4F1C413376C1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 873);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (617, 873, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376c2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (874, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (874, 874);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (874, x'5FDCA08DCDBB4F1C413376C2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 874);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (618, 874, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376c4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (875, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (875, 875);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (875, x'5FDCA08DCDBB4F1C413376C4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 875);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (619, 875, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376c5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (876, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (876, 876);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (876, x'5FDCA08DCDBB4F1C413376C5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,specializes)', 876);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (620, 876, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376c6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (877, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (877, 877);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (877, x'5FDCA08DCDBB4F1C413376C6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,specializza)', 877);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (621, 877, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376c7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (878, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (878, 878);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (878, x'5FDCA08DCDBB4F1C413376C7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 878);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (371, 878, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376c8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (879, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (879, 879);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (879, x'5FDCA08DCDBB4F1C413376C8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 879);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (372, 879, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376c9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (880, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (880, 880);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (880, x'5FDCA08DCDBB4F1C413376C9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 880);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (622, 880, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376ca }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (881, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (881, 881);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (881, x'5FDCA08DCDBB4F1C413376CA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 881);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (623, 881, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376ce }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (882, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (882, 882);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (882, x'5FDCA08DCDBB4F1C413376CE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 882);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (624, 882, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376cf }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (883, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (883, 883);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (883, x'5FDCA08DCDBB4F1C413376CF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,unifica)', 883);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (625, 883, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376d0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (884, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (884, 884);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (884, x'5FDCA08DCDBB4F1C413376D0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,unifies)', 884);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (626, 884, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376d1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (885, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (885, 885);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (885, x'5FDCA08DCDBB4F1C413376D1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#ObjectProperty', 885);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (373, 885, 0, 'http://www.w3.org/2002/07/owl#ObjectProperty');


-- { _id: 5fdca08dcdbb4f1c413376d2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (886, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (886, 886);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (886, x'5FDCA08DCDBB4F1C413376D2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 886);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (374, 886, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith');


-- { _id: 5fdca08dcdbb4f1c413376d3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (887, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (887, 887);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (887, x'5FDCA08DCDBB4F1C413376D3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 887);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (627, 887, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376d4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (888, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (888, 888);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (888, x'5FDCA08DCDBB4F1C413376D4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 888);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (628, 888, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376d8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (889, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (889, 889);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (889, x'5FDCA08DCDBB4F1C413376D8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 889);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (629, 889, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376d9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (890, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (890, 890);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (890, x'5FDCA08DCDBB4F1C413376D9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''usa il concetto'')', 890);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (630, 890, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376da }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (891, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (891, 891);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (891, x'5FDCA08DCDBB4F1C413376DA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''uses concept'')', 891);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (631, 891, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376db }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (892, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (892, 892);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (892, x'5FDCA08DCDBB4F1C413376DB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#DatatypeProperty', 892);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (375, 892, 0, 'http://www.w3.org/2002/07/owl#DatatypeProperty');


-- { _id: 5fdca08dcdbb4f1c413376dc }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (893, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (893, 893);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (893, x'5FDCA08DCDBB4F1C413376DC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 893);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (632, 893, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376de }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (894, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (894, 894);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (894, x'5FDCA08DCDBB4F1C413376DE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 894);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (633, 894, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376df }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (895, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (895, 895);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (895, x'5FDCA08DCDBB4F1C413376DF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha valore'')', 895);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (634, 895, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376e0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (896, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (896, 896);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (896, x'5FDCA08DCDBB4F1C413376E0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has data value'')', 896);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (635, 896, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376e1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (897, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (897, 897);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (897, x'5FDCA08DCDBB4F1C413376E1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#DatatypeProperty', 897);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (376, 897, 0, 'http://www.w3.org/2002/07/owl#DatatypeProperty');


-- { _id: 5fdca08dcdbb4f1c413376e2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (898, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (898, 898);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (898, x'5FDCA08DCDBB4F1C413376E2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 898);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (377, 898, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue');


-- { _id: 5fdca08dcdbb4f1c413376e3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (899, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (899, 899);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (899, x'5FDCA08DCDBB4F1C413376E3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 899);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (636, 899, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376e4 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (900, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (900, 900);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (900, x'5FDCA08DCDBB4F1C413376E4', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.w3.org/2001/XMLSchema#dateTime', 900);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (637, 900, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376e6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (901, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (901, 901);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (901, x'5FDCA08DCDBB4F1C413376E6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 901);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (638, 901, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376e7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (902, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (902, 902);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (902, x'5FDCA08DCDBB4F1C413376E7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''evento ha data'')', 902);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (639, 902, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376e8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (903, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (903, 903);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (903, x'5FDCA08DCDBB4F1C413376E8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has event date'')', 903);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (640, 903, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376e9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (904, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (904, 904);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (904, x'5FDCA08DCDBB4F1C413376E9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#DatatypeProperty', 904);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (378, 904, 0, 'http://www.w3.org/2002/07/owl#DatatypeProperty');


-- { _id: 5fdca08dcdbb4f1c413376ea }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (905, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (905, 905);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (905, x'5FDCA08DCDBB4F1C413376EA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 905);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (379, 905, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (380, 905, 1, 'http://www.w3.org/2002/07/owl#DatatypeProperty');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (381, 905, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue');


-- { _id: 5fdca08dcdbb4f1c413376eb }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (906, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (906, 906);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (906, x'5FDCA08DCDBB4F1C413376EB', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 906);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (641, 906, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376ec }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (907, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (907, 907);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (907, x'5FDCA08DCDBB4F1C413376EC', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#range', 'http://www.w3.org/2001/XMLSchema#dateTime', 907);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (642, 907, 0, 'http://www.w3.org/2000/01/rdf-schema#range');


-- { _id: 5fdca08dcdbb4f1c413376ee }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (908, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (908, 908);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (908, x'5FDCA08DCDBB4F1C413376EE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 908);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (643, 908, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376ef }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (909, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (909, 909);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (909, x'5FDCA08DCDBB4F1C413376EF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has interval date'')', 909);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (644, 909, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376f0 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (910, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (910, 910);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (910, x'5FDCA08DCDBB4F1C413376F0', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''intervallo ha data'')', 910);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (645, 910, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376f1 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (911, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (911, 911);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (911, x'5FDCA08DCDBB4F1C413376F1', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#DatatypeProperty', 911);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (382, 911, 0, 'http://www.w3.org/2002/07/owl#DatatypeProperty');


-- { _id: 5fdca08dcdbb4f1c413376f2 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (912, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (912, 912);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (912, x'5FDCA08DCDBB4F1C413376F2', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 912);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (383, 912, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue');


-- { _id: 5fdca08dcdbb4f1c413376f3 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (913, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (913, 913);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (913, x'5FDCA08DCDBB4F1C413376F3', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 913);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (646, 913, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376f5 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (914, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (914, 914);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (914, x'5FDCA08DCDBB4F1C413376F5', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 914);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (647, 914, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376f6 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (915, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (915, 915);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (915, x'5FDCA08DCDBB4F1C413376F6', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''ha valore'')', 915);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (648, 915, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376f7 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (916, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (916, 916);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (916, x'5FDCA08DCDBB4F1C413376F7', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has parameter data value'')', 916);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (649, 916, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c413376f8 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (917, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (917, 917);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (917, x'5FDCA08DCDBB4F1C413376F8', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#DatatypeProperty', 917);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (384, 917, 0, 'http://www.w3.org/2002/07/owl#DatatypeProperty');


-- { _id: 5fdca08dcdbb4f1c413376f9 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (918, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (918, 918);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (918, x'5FDCA08DCDBB4F1C413376F9', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#subPropertyOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 918);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (385, 918, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue');


-- { _id: 5fdca08dcdbb4f1c413376fa }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (919, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (919, 919);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (919, x'5FDCA08DCDBB4F1C413376FA', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#domain', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 919);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (650, 919, 0, 'http://www.w3.org/2000/01/rdf-schema#domain');


-- { _id: 5fdca08dcdbb4f1c413376fe }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (920, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (920, 920);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (920, x'5FDCA08DCDBB4F1C413376FE', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 920);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (651, 920, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c413376ff }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (921, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (921, 921);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (921, x'5FDCA08DCDBB4F1C413376FF', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''has region data value'')', 921);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (652, 921, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337700 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (922, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (922, 922);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (922, x'5FDCA08DCDBB4F1C41337700', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''regione ha valore'')', 922);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (653, 922, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337701 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (923, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (923, 923);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (923, x'5FDCA08DCDBB4F1C41337701', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 923);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (386, 923, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337702 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (924, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (924, 924);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (924, x'5FDCA08DCDBB4F1C41337702', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 924);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (387, 924, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (388, 924, 1, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337703 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (925, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (925, 925);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (925, x'5FDCA08DCDBB4F1C41337703', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 925);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (654, 925, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c41337704 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (926, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (926, 926);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (926, x'5FDCA08DCDBB4F1C41337704', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 926);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (655, 926, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c41337705 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (927, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (927, 927);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (927, x'5FDCA08DCDBB4F1C41337705', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Quality', 927);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (656, 927, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c41337707 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (928, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (928, 928);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (928, x'5FDCA08DCDBB4F1C41337707', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 928);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (657, 928, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337708 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (929, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (929, 929);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (929, x'5FDCA08DCDBB4F1C41337708', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Abstract'')', 929);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (658, 929, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337709 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (930, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (930, 930);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (930, x'5FDCA08DCDBB4F1C41337709', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Astratto'')', 930);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (659, 930, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133770a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (931, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (931, 931);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (931, x'5FDCA08DCDBB4F1C4133770A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 931);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (389, 931, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c4133770b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (932, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (932, 932);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (932, x'5FDCA08DCDBB4F1C4133770B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 932);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (390, 932, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (391, 932, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (392, 932, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (393, 932, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description991');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (394, 932, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description992');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (395, 932, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description993');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (396, 932, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description994');


-- { _id: 5fdca08dcdbb4f1c4133770c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (933, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (933, 933);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (933, x'5FDCA08DCDBB4F1C4133770C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description980', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 933);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (397, 933, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c4133770d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (934, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (934, 934);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (934, x'5FDCA08DCDBB4F1C4133770D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description980', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 934);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (660, 934, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c4133770e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (935, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (935, 935);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (935, x'5FDCA08DCDBB4F1C4133770E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description980', 'http://www.w3.org/2002/07/owl#someValuesFrom', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 935);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (661, 935, 0, 'http://www.w3.org/2002/07/owl#someValuesFrom');


-- { _id: 5fdca08dcdbb4f1c4133770f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (936, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (936, 936);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (936, x'5FDCA08DCDBB4F1C4133770F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description980', 936);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (398, 936, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description980');


-- { _id: 5fdca08dcdbb4f1c41337710 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (937, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (937, 937);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (937, x'5FDCA08DCDBB4F1C41337710', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description981', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 937);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (399, 937, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c41337711 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (938, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (938, 938);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (938, x'5FDCA08DCDBB4F1C41337711', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description981', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 938);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (662, 938, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c41337712 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (939, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (939, 939);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (939, x'5FDCA08DCDBB4F1C41337712', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description981', 'http://www.w3.org/2002/07/owl#minCardinality', NULL, 939);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (663, 939, 0, 'http://www.w3.org/2002/07/owl#minCardinality');


-- { _id: 5fdca08dcdbb4f1c41337713 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (940, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (940, 940);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (940, x'5FDCA08DCDBB4F1C41337713', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description981', 940);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (400, 940, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description981');


-- { _id: 5fdca08dcdbb4f1c41337715 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (941, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (941, 941);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (941, x'5FDCA08DCDBB4F1C41337715', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 941);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (664, 941, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337716 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (942, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (942, 942);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (942, x'5FDCA08DCDBB4F1C41337716', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Action'')', 942);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (665, 942, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337717 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (943, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (943, 943);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (943, x'5FDCA08DCDBB4F1C41337717', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Azione'')', 943);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (666, 943, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337718 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (944, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (944, 944);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (944, x'5FDCA08DCDBB4F1C41337718', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 944);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (401, 944, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337719 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (945, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (945, 945);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (945, x'5FDCA08DCDBB4F1C41337719', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 945);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (402, 945, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (403, 945, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (404, 945, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (405, 945, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (406, 945, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (407, 945, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (408, 945, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (409, 945, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');


-- { _id: 5fdca08dcdbb4f1c4133771c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (946, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (946, 946);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (946, x'5FDCA08DCDBB4F1C4133771C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 946);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (667, 946, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133771d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (947, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (947, 947);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (947, x'5FDCA08DCDBB4F1C4133771D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Agent'')', 947);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (668, 947, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133771e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (948, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (948, 948);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (948, x'5FDCA08DCDBB4F1C4133771E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Agente'')', 948);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (669, 948, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133771f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (949, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (949, 949);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (949, x'5FDCA08DCDBB4F1C4133771F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 949);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (410, 949, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337720 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (950, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (950, 950);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (950, x'5FDCA08DCDBB4F1C41337720', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 950);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (411, 950, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (412, 950, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (413, 950, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (414, 950, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (415, 950, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1017');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (416, 950, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1018');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (417, 950, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1019');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (418, 950, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1020');


-- { _id: 5fdca08dcdbb4f1c41337723 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (951, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (951, 951);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (951, x'5FDCA08DCDBB4F1C41337723', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalAttribute', 951);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (670, 951, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c41337728 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (952, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (952, 952);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (952, x'5FDCA08DCDBB4F1C41337728', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SpaceRegion', 952);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (671, 952, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c41337729 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (953, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (953, 953);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (953, x'5FDCA08DCDBB4F1C41337729', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2002/07/owl#disjointWith', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 953);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (672, 953, 0, 'http://www.w3.org/2002/07/owl#disjointWith');


-- { _id: 5fdca08dcdbb4f1c4133772b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (954, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (954, 954);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (954, x'5FDCA08DCDBB4F1C4133772B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 954);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (673, 954, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133772c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (955, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (955, 955);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (955, x'5FDCA08DCDBB4F1C4133772C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Amount'')', 955);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (674, 955, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133772d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (956, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (956, 956);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (956, x'5FDCA08DCDBB4F1C4133772D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Quantit�'')', 956);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (675, 956, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133772e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (957, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (957, 957);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (957, x'5FDCA08DCDBB4F1C4133772E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#BiologicalObject', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 957);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (419, 957, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c4133772f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (958, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (958, 958);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (958, x'5FDCA08DCDBB4F1C4133772F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#BiologicalObject', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalBody', 958);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (420, 958, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalBody');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (421, 958, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (422, 958, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (423, 958, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (424, 958, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (425, 958, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (426, 958, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (427, 958, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (428, 958, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (429, 958, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (430, 958, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1008');


-- { _id: 5fdca08dcdbb4f1c41337730 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (959, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (959, 959);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (959, x'5FDCA08DCDBB4F1C41337730', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#BiologicalObject', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 959);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (676, 959, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337731 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (960, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (960, 960);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (960, x'5FDCA08DCDBB4F1C41337731', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#BiologicalObject', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Biological object'')', 960);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (677, 960, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337732 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (961, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (961, 961);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (961, x'5FDCA08DCDBB4F1C41337732', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#ChemicalObject', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 961);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (431, 961, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337733 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (962, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (962, 962);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (962, x'5FDCA08DCDBB4F1C41337733', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#ChemicalObject', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalBody', 962);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (432, 962, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalBody');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (433, 962, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (434, 962, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (435, 962, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (436, 962, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (437, 962, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (438, 962, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (439, 962, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (440, 962, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (441, 962, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (442, 962, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1008');


-- { _id: 5fdca08dcdbb4f1c41337734 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (963, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (963, 963);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (963, x'5FDCA08DCDBB4F1C41337734', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#ChemicalObject', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 963);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (678, 963, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337735 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (964, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (964, 964);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (964, x'5FDCA08DCDBB4F1C41337735', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#ChemicalObject', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Chemical object'')', 964);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (679, 964, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337736 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (965, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (965, 965);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (965, x'5FDCA08DCDBB4F1C41337736', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 965);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (443, 965, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337737 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (966, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (966, 966);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (966, x'5FDCA08DCDBB4F1C41337737', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 966);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (444, 966, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (445, 966, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (446, 966, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (447, 966, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1025');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (448, 966, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (449, 966, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (450, 966, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (451, 966, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (452, 966, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (453, 966, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (454, 966, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (455, 966, 11, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1027');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (456, 966, 12, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1028');


-- { _id: 5fdca08dcdbb4f1c41337738 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (967, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (967, 967);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (967, x'5FDCA08DCDBB4F1C41337738', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description982', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 967);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (457, 967, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c41337739 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (968, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (968, 968);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (968, x'5FDCA08DCDBB4F1C41337739', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description982', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 968);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (680, 968, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c4133773a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (969, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (969, 969);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (969, x'5FDCA08DCDBB4F1C4133773A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description982', 'http://www.w3.org/2002/07/owl#someValuesFrom', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 969);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (681, 969, 0, 'http://www.w3.org/2002/07/owl#someValuesFrom');


-- { _id: 5fdca08dcdbb4f1c4133773b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (970, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (970, 970);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (970, x'5FDCA08DCDBB4F1C4133773B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description982', 970);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (458, 970, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description982');


-- { _id: 5fdca08dcdbb4f1c4133773c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (971, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (971, 971);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (971, x'5FDCA08DCDBB4F1C4133773C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description983', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 971);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (459, 971, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c4133773d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (972, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (972, 972);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (972, x'5FDCA08DCDBB4F1C4133773D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description983', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 972);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (682, 972, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c4133773e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (973, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (973, 973);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (973, x'5FDCA08DCDBB4F1C4133773E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description983', 'http://www.w3.org/2002/07/owl#someValuesFrom', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 973);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (683, 973, 0, 'http://www.w3.org/2002/07/owl#someValuesFrom');


-- { _id: 5fdca08dcdbb4f1c4133773f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (974, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (974, 974);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (974, x'5FDCA08DCDBB4F1C4133773F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description983', 974);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (460, 974, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description983');


-- { _id: 5fdca08dcdbb4f1c41337741 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (975, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (975, 975);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (975, x'5FDCA08DCDBB4F1C41337741', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 975);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (684, 975, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337742 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (976, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (976, 976);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (976, x'5FDCA08DCDBB4F1C41337742', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Classification'')', 976);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (685, 976, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337743 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (977, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (977, 977);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (977, x'5FDCA08DCDBB4F1C41337743', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Classificazione'')', 977);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (686, 977, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337744 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (978, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (978, 978);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (978, x'5FDCA08DCDBB4F1C41337744', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 978);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (461, 978, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337745 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (979, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (979, 979);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (979, x'5FDCA08DCDBB4F1C41337745', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 979);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (462, 979, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (463, 979, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (464, 979, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (465, 979, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (466, 979, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (467, 979, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (468, 979, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (469, 979, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (470, 979, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (471, 979, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1027');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (472, 979, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1028');


-- { _id: 5fdca08dcdbb4f1c4133774c }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (980, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (980, 980);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (980, x'5FDCA08DCDBB4F1C4133774C', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 980);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (473, 980, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c4133774d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (981, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (981, 981);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (981, x'5FDCA08DCDBB4F1C4133774D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 981);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (687, 981, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c41337750 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (982, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (982, 982);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (982, x'5FDCA08DCDBB4F1C41337750', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984', 'http://www.w3.org/2002/07/owl#allValuesFrom', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 982);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (688, 982, 0, 'http://www.w3.org/2002/07/owl#allValuesFrom');


-- { _id: 5fdca08dcdbb4f1c41337751 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (983, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (983, 983);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (983, x'5FDCA08DCDBB4F1C41337751', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984', 983);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (474, 983, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984');


-- { _id: 5fdca08dcdbb4f1c41337753 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (984, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (984, 984);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (984, x'5FDCA08DCDBB4F1C41337753', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 984);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (689, 984, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c41337754 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (985, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (985, 985);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (985, x'5FDCA08DCDBB4F1C41337754', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Collection'')', 985);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (690, 985, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337755 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (986, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (986, 986);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (986, x'5FDCA08DCDBB4F1C41337755', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Collezione'')', 986);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (691, 986, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337756 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (987, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (987, 987);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (987, x'5FDCA08DCDBB4F1C41337756', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 987);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (475, 987, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337757 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (988, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (988, 988);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (988, x'5FDCA08DCDBB4F1C41337757', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 988);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (476, 988, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (477, 988, 1, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (478, 988, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description984');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (479, 988, 3, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (480, 988, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (481, 988, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (482, 988, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (483, 988, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (484, 988, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (485, 988, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (486, 988, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (487, 988, 11, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1027');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (488, 988, 12, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1028');


-- { _id: 5fdca08dcdbb4f1c41337758 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (989, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (989, 989);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (989, x'5FDCA08DCDBB4F1C41337758', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description985', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 989);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (489, 989, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c41337759 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (990, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (990, 990);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (990, x'5FDCA08DCDBB4F1C41337759', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description985', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 990);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (692, 990, 0, 'http://www.w3.org/2002/07/owl#onProperty');


-- { _id: 5fdca08dcdbb4f1c4133775a }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (991, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (991, 991);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (991, x'5FDCA08DCDBB4F1C4133775A', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description985', 'http://www.w3.org/2002/07/owl#allValuesFrom', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 991);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (693, 991, 0, 'http://www.w3.org/2002/07/owl#allValuesFrom');


-- { _id: 5fdca08dcdbb4f1c4133775b }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (992, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (992, 992);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (992, x'5FDCA08DCDBB4F1C4133775B', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description985', 992);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (490, 992, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description985');


-- { _id: 5fdca08dcdbb4f1c4133775d }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (993, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (993, 993);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (993, x'5FDCA08DCDBB4F1C4133775D', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 993);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (694, 993, 0, 'http://www.w3.org/2000/01/rdf-schema#isDefinedBy');


-- { _id: 5fdca08dcdbb4f1c4133775e }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (994, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (994, 994);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (994, x'5FDCA08DCDBB4F1C4133775E', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(en,''Collective'')', 994);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (695, 994, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c4133775f }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (995, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (995, 995);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (995, x'5FDCA08DCDBB4F1C4133775F', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#label', 'lang(it,''Collettivo'')', 995);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (696, 995, 0, 'http://www.w3.org/2000/01/rdf-schema#label');


-- { _id: 5fdca08dcdbb4f1c41337760 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (996, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (996, 996);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (996, x'5FDCA08DCDBB4F1C41337760', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#CollectiveAgent', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Class', 996);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (491, 996, 0, 'http://www.w3.org/2002/07/owl#Class');


-- { _id: 5fdca08dcdbb4f1c41337761 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (997, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (997, 997);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (997, x'5FDCA08DCDBB4F1C41337761', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#CollectiveAgent', 'http://www.w3.org/2000/01/rdf-schema#subClassOf', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 997);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (492, 997, 0, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (493, 997, 1, 'http://www.w3.org/2002/07/owl#Class');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (494, 997, 2, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (495, 997, 3, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (496, 997, 4, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (497, 997, 5, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description999');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (498, 997, 6, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1000');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (499, 997, 7, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1001');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (500, 997, 8, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1002');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (501, 997, 9, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1003');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (502, 997, 10, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (503, 997, 11, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1026');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (504, 997, 12, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1027');

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (505, 997, 13, 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description1028');


-- { _id: 5fdca08dcdbb4f1c41337762 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (998, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (998, 998);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (998, x'5FDCA08DCDBB4F1C41337762', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description986', 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type', 'http://www.w3.org/2002/07/owl#Restriction', 998);

INSERT INTO `5fdca422f5f14142fe678936_triples_o*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (506, 998, 0, 'http://www.w3.org/2002/07/owl#Restriction');


-- { _id: 5fdca08dcdbb4f1c41337763 }
INSERT INTO `5fdca422f5f14142fe678936_triples_scope_time` (`ID`, `since`, `until`)
    VALUES
        (999, 0.0, 1.7976931348623157E308);

INSERT INTO `5fdca422f5f14142fe678936_triples_scope` (`ID`, `time_fk`)
    VALUES
        (999, 999);

INSERT INTO `5fdca422f5f14142fe678936_triples` (`ID`, `_id`, `graph`, `s`, `p`, `o`, `scope_fk`)
    VALUES
        (999, x'5FDCA08DCDBB4F1C41337763', 'DUL', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#_:Description986', 'http://www.w3.org/2002/07/owl#onProperty', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 999);

INSERT INTO `5fdca422f5f14142fe678936_triples_p*` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (697, 999, 0, 'http://www.w3.org/2002/07/owl#onProperty');

