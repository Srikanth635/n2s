CREATE TABLE `5fdca422f5f14142fe678936_annotations` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `s` LONGTEXT,
    `p` LONGTEXT,
    `v` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;



-- { _id: 5fdca08ccdbb4f1c41337256 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (0, x'5FDCA08CCDBB4F1C41337256', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/2002/07/owl#versionInfo', '3.32');


-- { _id: 5fdca08ccdbb4f1c41337258 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (1, x'5FDCA08CCDBB4F1C41337258', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/2002/07/owl#versionInfo', 'Created by Aldo Gangemi as both a simplification and extension of DOLCE and Descriptions and Situations ontologies.');


-- { _id: 5fdca08ccdbb4f1c41337259 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (2, x'5FDCA08CCDBB4F1C41337259', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The DOLCE+DnS Ultralite ontology.\nIt is a simplification of some parts of the DOLCE Lite-Plus library (cf. http://www.ontologydesignpatterns.org/ont/dul/DLP397.owl). \nMain aspects in which DOLCE+DnS Ultralite departs from DOLCE Lite-Plus are the following:\n\n- The names of classes and relations have been made more intuitive\n- The DnS-related part is closer to the newer ''constructive DnS'' ontology (http://www.ontologydesignpatterns.org/ont/dul/cDnS.owl).\n- Temporal and spatial relations are simplified\n- Qualities and regions are more relaxed than in DOLCE-Full: they can be used as attributes of any entity; an axiom states that each quality has a region\n- Axiomatization makes use of simpler constructs than DOLCE Lite-Plus\n- The architecture of the ontology is pattern-based, which means that DOLCE+DnS Ultralite is also available in modules, called ''content ontology design patterns'', which can be applied independently in the design of domain ontologies (cf. http://www.ontologydesignpatterns.org).  If many modules are needed in a same ontology project, it is anyway useful to use this integrated version.\n\nThe final result is a lightweight, easy-to-apply foundational ontology for modeling either physical or social contexts.\nSeveral extensions of DOLCE+DnS Ultralite have been designed: \n- Information objects: http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl \n- Systems: http://www.ontologydesignpatterns.org/ont/dul/SystemsLite.owl \n- Plans: http://www.ontologydesignpatterns.org/ont/dul/PlansLite.owl\n- Legal domain: http://www.ontologydesignpatterns.org/ont/dul/CLO/CoreLegal.owl\n- Lexical and semiotic domains: http://www.ontologydesignpatterns.org/ont/lmm/LMM_L2.owl\n- DOLCE-Zero: http://www.ontologydesignpatterns.org/ont/d0.owl is a commonsense-oriented generalisation of some top-level classes, which allows to use DOLCE with tolerance against ambiguities like abstract vs. concrete information, locations vs. physical artifacts, event occurrences vs. event types, events vs. situations, qualities vs. regions, etc.; etc.');


-- { _id: 5fdca08ccdbb4f1c4133725a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (3, x'5FDCA08CCDBB4F1C4133725A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl', 'http://www.w3.org/2002/07/owl#versionInfo', 'In 3.2, the links between instances of Region or Parameter, and datatypes have been revised and made more powerful, in order to support efficient design patterns for data value modelling in OWL1.0.\nAlso, the names of the related properties have been changed in order to make them more intuitive.\nFurthermore, a large comment field has been added to the ''expresses'' object property, in order to clarify some issues about the many interpretations.\nIn 3.3, the relation between regions, parameters, and datatypes has been still improved.\nIn 3.5, the person-related classes have been refactored: Person in 3.4 is now SocialPerson, to avoid confusion with commonsense intuition; Person is now the union of social persons and humans, therefore being a subclass of Agent.\nIn 3.6, other fixes on universal restriction involving expresses. Also added the property ''isConstraintFor'' between parameters and entities. Moved the properties: ''assumes'' and ''adopts'' to the new module: http://www.ontologydesignpatterns.org/ont/dul/Conceptualization.owl.\nIn 3.7, some fixes on the names of classes and properties related to FormalEntity; created a new separate module for general universal restrictions (DULGCI.owl).\nIn 3.8, more fixes on the interface to formal entities and links to IOLite.owl.\nIn 3.9, some naming and comment fixes.\nIn 3.10, removed cardinality restriction from hasPart and isPartOf restrictions (changed to hasComponent and isComponentOf), for OWL(DL) compatibility. Also enlarged the range of includesAgent to contain both social and physical agents, and of conceptualizes universal restriction on agents, to include all social objects.\nIn 3.11, some more subproperty axioms have been introduced, and all elements have got English labels.\nIn 3.12, added some classes to map some old DolceLitePlus classes that were used to align OntoWordNet.\nIn 3.13, added the LocalConcept class to express a Concept that cannot be used in a Description different from the one that defines it. Also updated some comments.\nIn 3.14, added some comments.\nIn 3.15, removed some owl:disjointWith axioms relating Collection to InformationObject, Description, Situation, and SocialAgent. The rationale for doing that is to allow less strict constraints on domain relations involving collections that can be also conceived as descriptions, situations, social agents, or information objects; for example: a collection of sentences from a text (an information object) that are ranked with a relevance criterion can be still considered a text.\nIn 3.16, name of isActedBy changed to actsThrough, which is clearer. Also added SpatioTemporalRegion as constituted by a SpaceRegion and a TimeInterval.\nIn 3.17, removed redundant universal axioms from Entity and other top classes. Fixed restrictions on FunctionalSubstance class, and comments in Design and Substance classes.\nIn 3.18, removed subClassOf axiom from FunctionalSubstance to DesignedArtifact, created a new subclass of FunctionalSubstance, called DesignedSubstance, and created a subClassOf axiom from DesignedSubstance to DesignedArtifact.\nIn 3.19, removed disjointness axiom between Concept and Collection (the same rationale applies as in 3.15 version.\nIn 3.20, revised the comment for Quality, added InformationEntity as the superclass for InformationObject and InformationRealization (represented as the union of those classes). This is needed in many domain ontologies that do not need to distinguish between abstract and concrete aspects of information entities. One possible revision (not implemented here) would be to introduce the relations: expresses and isAbout with a broader domain:InformationEntity, and two more specific properties: abstractlyExpresses and isAbstractlyAbout. This last revision has not been implemented yet, since a large revision procedure should be carried out in order to check the impact of the revision on the existing DOLCE-DnS-Ultralite plugins.\nIn 3.21, added comment to InformationEntity, and optimized representation of equivalence for InformationRealization.\nIn 3.22, added comment to Personification.\nIn 3.23, added associatedWith object property, and put all object properties as subproperties of it.\nIn 3.24, removed hasProxy datatype property.\nIn 3.25, generalized domain and range of hasComponent and isComponentOf.\nIn 3.26, updated some comments in order to clarify or exemplify the concepts.\nIn 3.27, added rdfs:isDefinedBy annotations for Linked Data browsers.\nIn 3.28, broadened the universe of pre-/post-conditions to give room to events and states.\nIn 3.29, added some properties to support DBpedia alignment: sameSettingAs (situational analogous to coparticipation), including relations originating e.g. from sharing kinship, ownership, or roleplaying situations.\nIn 3.30, completed some domains and ranges (formerly owl:Thing, now dul:Entity), and added axiom: Organism subClassOf PhysicalAgent.\nIn 3.31, added a restriction to Quality and one to Region in order to ensure the original DOLCE constraint of qualities being always associated with a region, and vice versa. These axioms do not however exclude a direct applicability of qualities or regions to any other entity.\nIn 3.32, removed redundant union axioms and some restrictions, which spot a negative trade-off between expressivity and complexity.');


-- { _id: 5fdca08ccdbb4f1c41337264 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (4, x'5FDCA08CCDBB4F1C41337264', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation holding between any Agent, and a SocialAgent. In principle, a SocialAgent requires at least one PhysicalAgent in order to act, but this dependency can be ''delegated''; e.g. a university can be acted for by a department, which on its turm is acted for by physical agents.');


-- { _id: 5fdca08ccdbb4f1c4133726c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (5, x'5FDCA08CCDBB4F1C4133726C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#actsThrough', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation holding between a PhysicalAgent and a SocialAgent. In principle, a SocialAgent requires at least one PhysicalAgent in order to act, but this dependency can be ''delegated'', e.g. a university can be acted for by a department, which is acted for by physical agents. AKA isActedBy');


-- { _id: 5fdca08ccdbb4f1c41337276 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (6, x'5FDCA08CCDBB4F1C41337276', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#associatedWith', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A catch-all object property, useful for alignment and querying purposes.');


-- { _id: 5fdca08ccdbb4f1c4133727e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (7, x'5FDCA08CCDBB4F1C4133727E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#characterizes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between concepts and collections, where a Concept is said to characterize a Collection; it corresponds to a link between the (reified) intensional and extensional interpretations of a _proper subset of_ a (reified) class. This is different from covers, because it refers to an interpretation the entire reified class.\nE.g. the collection of vintage saxophones is characterized by the Concept ''manufactured by hand'', while it gets covered by the Concept ''Saxophone'' with the Parameter ''Vintage''.');


-- { _id: 5fdca08ccdbb4f1c41337287 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (8, x'5FDCA08CCDBB4F1C41337287', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#classifies', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Concept and an Entity, e.g. the Role ''student'' classifies a Person ''John''.');


-- { _id: 5fdca08ccdbb4f1c41337290 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (9, x'5FDCA08CCDBB4F1C41337290', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#conceptualizes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation stating that an Agent is internally representing a SocialObject: situations, descriptions, concepts, etc. E.g., ''John believes in the conspiracy theory''; ''Niels Bohr created the solar-system metaphor for the atomic theory''; ''Jacques assumes all swans are white''; ''the task force members share the attack plan''.\nConceptualizations can be distinguished into different forms, primarily based on the type of SocialObject that is conceptualized. Descriptions and concepts can be ''assumed'', situations can be ''believed'' or ''known'', plans can be ''adopted'', etc. (see ontology: http://www.ontologydesignpatterns.org/ont/dul/Conceptualization.owl.');


-- { _id: 5fdca08ccdbb4f1c41337299 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (10, x'5FDCA08CCDBB4F1C41337299', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#concretelyExpresses', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an InformationRealization and a Description, e.g. ''the printout of the Italian Constitution concretelyExpresses the Italian Constitution''. It should be supplied also with a rule stating that the InformationRealization realizes an InformationObject that expresses the Description');


-- { _id: 5fdca08ccdbb4f1c413372a3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (11, x'5FDCA08CCDBB4F1C413372A3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#coparticipatesWith', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between two objects participating in a same Event; e.g., ''Vitas and Jimmy are playing tennis''.');


-- { _id: 5fdca08ccdbb4f1c413372ac }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (12, x'5FDCA08CCDBB4F1C413372AC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#covers', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between concepts and collections, where a Concept is said to cover a Collection; it corresponds to a link between the (reified) intensional and extensional interpretations of a (reified) class.\nE.g. the collection of vintage saxophones is covered by the Concept ''Saxophone'' with the Parameter ''Vintage''.');


-- { _id: 5fdca08ccdbb4f1c413372b5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (13, x'5FDCA08CCDBB4F1C413372B5', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#defines', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Description and a Concept, e.g. a Workflow for a governmental Organization defines the Role ''officer'', or ''the Italian Traffic Law defines the role Vehicle''.');


-- { _id: 5fdca08ccdbb4f1c413372be }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (14, x'5FDCA08CCDBB4F1C413372BE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a description and a role, e.g. the recipe for a cake defines the role ''ingredient''.');


-- { _id: 5fdca08ccdbb4f1c413372c7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (15, x'5FDCA08CCDBB4F1C413372C7', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#definesTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a description and a task, e.g. the recipe for a cake defines the task ''boil''.');


-- { _id: 5fdca08ccdbb4f1c413372d0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (16, x'5FDCA08CCDBB4F1C413372D0', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#describes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between a Description and an Entity : a Description gives a unity to a Collection of parts (the components), or constituents, by assigning a Role to each of them in the context of a whole Object (the system).\nA same Entity can be given different descriptions, for example, an old cradle can be given a unifying Description based on the original aesthetic design, the functionality it was built for, or a new aesthetic functionality in which it can be used as a flower pot.');


-- { _id: 5fdca08ccdbb4f1c413372d9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (17, x'5FDCA08CCDBB4F1C413372D9', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyFollows', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The intransitive follows relation. For example, Wednesday directly precedes Thursday. Directness of precedence depends on the designer conceptualization.');


-- { _id: 5fdca08ccdbb4f1c413372e1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (18, x'5FDCA08CCDBB4F1C413372E1', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#directlyPrecedes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The intransitive precedes relation. For example, Monday directly precedes Tuesday. Directness of precedence depends on the designer conceptualization.');


-- { _id: 5fdca08ccdbb4f1c413372ea }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (19, x'5FDCA08CCDBB4F1C413372EA', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#executesTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an action and a task, e.g. ''putting some water in a pot and putting the pot on a fire until the water starts bubbling'' executes the task ''boiling''.');


-- { _id: 5fdca08ccdbb4f1c413372f4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (20, x'5FDCA08CCDBB4F1C413372F4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expands', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A partial order relation that holds between descriptions. It represents the proper part relation between a description and another description featuring the same properties as the former, with at least one additional one.\nDescriptions can be expanded either by adding other descriptions as parts, or by refining concepts that are used by them. \nAn ''intention'' to expand must be present (unless purely formal theories are considered, but even in this case a criterion of relevance is usually active).');


-- { _id: 5fdca08ccdbb4f1c413372fd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (21, x'5FDCA08CCDBB4F1C413372FD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an InformationObject and a ''meaning'', generalized here as a ''SocialObject''. For example: ''A Beehive is a structure in which bees are kept, typically in the form of a dome or box.'' (Oxford dictionary)''; ''the term Beehive expresses the concept Beehive in my apiculture ontology''.\nThe intuition for ''meaning'' is intended to be very broad. A separate, large comment is included for those who want to investigate more on what kind of meaning can be represented in what form.');


-- { _id: 5fdca08ccdbb4f1c413372fe }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (22, x'5FDCA08CCDBB4F1C413372FE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expresses', 'http://www.w3.org/2000/01/rdf-schema#comment', 'This is a large comment field for those who want to investigate the different uses of the ''expresses'' relation for modeling different approaches to meaning characterization and modeling.\nFor example, in all these cases, some aspect of meaning is involved:\n\n- Beehive means "a structure in which bees are kept, typically in the form of a dome or box." (Oxford dictionary)\n- ''Beehive'' is a synonym in noun synset 09218159 "beehive|hive" (WordNet)\n- ''the term Beehive can be interpreted as the fact of ''being a beehive'', i.e. a relation that holds for concepts such as Bee, Honey, Hosting, etc.''\n- ''the text of Italian apiculture regulation expresses a rule by which beehives should be kept at least one kilometer away from inhabited areas''\n- ''the term Beehive expresses the concept Beehive''\n- ''''Beehive'' for apiculturists does not express the same meaning as for, say, fishermen''\n- ''Your meaning of ''Beautiful'' does not seem to fit mine''\n- ''''Beehive'' is formally interpreted as the set of all beehives''\n- ''from the term ''Beehive'', we can build a vector space of statistically significant cooccurring terms in the documents that contain it''\n- the lexeme ''Belly'' expresses the role ''Body_Part'' in the frame ''ObservableBodyParts'' (FrameNet)\n\nAs the examples suggest, the ''meaning of meaning'' is dependent on the background approach/theory that one assumes. One can hardly make a summary of the too many approaches and theories of meaning, therefore this relation is maybe the most controversial and difficult to explain; normally, in such cases it would be better to give up formalizing. \nHowever, the usefulness of having a ''semantic abstraction'' in modeling information objects is so high (e.g. for the semantic web, interoperability, reengineering, etc.), that we accept this challenging task, although without taking any particular position in the debate. \nWe provide here some examples, which we want to generalize upon when using the ''expresses'' relation to model semantic aspects of social reality.\n\nIn the most common approach, lexicographers that write dictionaries, glossaries, etc. assume that the meaning of a term is a paraphrase (or ''gloss'', or ''definition''). \nAnother approach is provided by concept schemes like thesauri and lexicons, which assume that the meaning of a term is a ''concept'', encoded as a ''lemma'', ''synset'', or ''descriptor''.\nStill another approach is that of psychologists and cognitive scientists, which often assume that the meaning of an information object is a concept encoded in the mind or cognitive system of an agent. \nA radically different approach is taken by social scientists and semioticians, who usually assume that meanings of an information object are spread across the communication practices in which members of a community use that object.\nAnother approach that tackles the distributed nature of meaning is assumed by geometrical models of semantics, which assume that the meaning of an InformationObject (e.g. a word) results from the set of informational contexts (e.g. within texts) in which that object is used similarly.\nThe logical approach to meaning is still different, since it assumes that the meaning of e.g. a term is equivalent to the set of individuals that the term can be applied to; for example, the meaning of ''Ali'' is e.g. an individual person called Ali, the meaning of ''Airplane'' is e.g. the set of airplanes, etc. \nFinally, an approach taken by structuralist linguistics and frame semantics is that a meaning is the relational context in which an information object can be applied; for example, a meaning of ''Airplane'' is situated e.g. in the context (''frame'') of passenger airline flights.\n\nThese different approaches are not necessarily conflicting, and they mostly talk about different aspects of so-called ''semantics''. They can be summarized and modelled within DOLCE-Ultralite as follows (notice that such list is far from exhaustive):\n\n(1) Informal meaning (as for linguistic or commonsense semantics: a distinction is assumed between (informal) meaning and reference; see isAbout for an alternative pattern on reference)\n\t- Paraphrase meaning (as for lexicographic semantics). Here it is modelled as the expresses relation between instances of InformationObject and different instances of InformationObject that act as ''paraphrases''\n\t- Conceptual meaning (as for ''concept scheme'' semantics). Here it is modelled as the expresses relation between instances of InformationObject and instances of Concept\n\t- Relational meaning (as for frame semantics). Here it is modelled as the expresses relation between instances of InformationObject and instances of Description\n\t- Cognitive meaning (as for ''psychological'' semantics). Here it is modelled as the expresses relation between any instance of InformationObject and any different instance of InformationObject that isRealizedBy a mental, cognitive or neural state (depending on which theory of mind is assumed). Such states can be considered here as instances of Process (occurring in the mind, cognitive system, or neural system of an agent)\n\t- Cultural meaning (as for ''social science'' semantics). Here it is modelled as the expresses relation between instances of InformationObject and instances of SocialObject (institutions, cultural paradigms, norms, social practices, etc.)\n\t- Distributional meaning (as for geometrical models of meaning). Here it is modelled as the expresses relation between any instance of InformationObject and any different instance of InformationObject that isFormallyRepresentedIn some (geometrical) Region (e.g. a vector space)\n\n(2) Formal meaning (as for logic and formal semantics: no distinction is assumed between informal meaning and reference, therefore between ''expresses'' and ''isAbout'', which can be used interchangeably)\n\t- Object-level formal meaning (as in the traditional first-order logic semantics). Here it is modelled as the expresses relation between an instance of InformationObject and an instance of Collection that isGroundingFor (in most cases) a Set; isGroundingFor is defined in the ontology: http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl\n\t- Modal formal meaning (as in possible-world semantics). Here it is modelled as the expresses relation between an instance of InformationObject and an instance of Collection that isGroundingFor a Set, and which isPartOf some different instance of Collection that isGroundingFor a PossibleWorld\n\nThis is only a first step to provide a framework, in which one can model different aspects of meaning. A more developed ontology should approach the problem of integrating the different uses of ''expresses'', so that different theories, resources, methods can interoperate.');


-- { _id: 5fdca08ccdbb4f1c41337344 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (23, x'5FDCA08CCDBB4F1C41337344', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#expressesConcept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an InformationObject and a Concept , e.g. the term "dog" expresses the Concept "dog". For expressing a relational meaning, see the more general object property: expresses');


-- { _id: 5fdca08ccdbb4f1c41337378 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (24, x'5FDCA08CCDBB4F1C41337378', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#farFrom', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Generic distance relation between any Entity(s). E.g. Rome is far from Beijing, astronomy is far from necromancy.');


-- { _id: 5fdca08ccdbb4f1c41337381 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (25, x'5FDCA08CCDBB4F1C41337381', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#follows', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema. \nE.g. ''year 2000 follows 1999'', ''preparing coffee'' follows ''deciding what coffee to use'', ''II World War follows I World War'', etc. \nIt can be used between tasks, processes or time intervals, and subproperties would fit best in order to distinguish the different uses.');


-- { _id: 5fdca08ccdbb4f1c4133738b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (26, x'5FDCA08CCDBB4F1C4133738B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasCommonBoundary', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation to encode either formal or informal characterizations of ''boundaries'' common to two different entities: an Event that ends when another begins, two abstract regions that have a common topological boundary, two objects that are said to be ''in contact'' from a commonsense perspective, etc.');


-- { _id: 5fdca08ccdbb4f1c41337393 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (27, x'5FDCA08CCDBB4F1C41337393', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasComponent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The hasPart relation without transitivity, holding between an Object (the system) and another (the component), and assuming a Design that structures the Object.');


-- { _id: 5fdca08ccdbb4f1c4133739e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (28, x'5FDCA08CCDBB4F1C4133739E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstituent', 'http://www.w3.org/2000/01/rdf-schema#comment', '''Constituency'' depends on some layering of  the world described by the ontology. For example, scientific granularities (e.g. body-organ-tissue-cell) or ontological ''strata'' (e.g. social-mental-biological-physical) are  typical layerings. \nIntuitively, a constituent is a part belonging to a lower layer. Since layering is actually a partition of the world described by the ontology, constituents are not properly classified as parts, although this kinship can be intuitive for common sense.\nA desirable advantage of this distinction is that we are able to talk e.g. of physical constituents of non-physical objects (e.g. systems), while this is not possible in terms of parts.\nExample of are the persons constituting a social system, the molecules constituting a person, the atoms constituting a river, etc. \nIn all these examples, we notice a typical discontinuity between the constituted and the constituent object: e.g. a social system is conceptualized at a different layer from the persons that constitute it, a person is conceptualized at a different layer from the molecules that constitute them, and a river is conceptualized at a different layer from the atoms that constitute it.');


-- { _id: 5fdca08ccdbb4f1c413373a7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (29, x'5FDCA08CCDBB4F1C413373A7', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasConstraint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between parameters and entities. It allows to assert generic constraints (encoded as parameters), e.g. MinimumAgeForDriving isConstraintFor John (where John is a legal subject under the TrafficLaw).\nThe intended semantics (not expressible in OWL) is that a Parameter isParameterFor a Concept that classifies an Entity; moreover, it entails that a Parameter parametrizes a Region that isRegionFor that Entity.');


-- { _id: 5fdca08ccdbb4f1c413373b1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (30, x'5FDCA08CCDBB4F1C413373B1', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasLocation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A generic, relative spatial location, holding between any entities. E.g. ''the cat is on the mat'', ''Omar is in Samarcanda'', ''the wound is close to the femural artery''.\nFor ''absolute'' locations, see SpaceRegion');


-- { _id: 5fdca08ccdbb4f1c413373ba }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (31, x'5FDCA08CCDBB4F1C413373BA', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasMember', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between collections and entities, e.g. ''my collection of saxophones includes an old Adolphe Sax original alto'' (i.e. my collection has member an Adolphe Sax alto).');


-- { _id: 5fdca08ccdbb4f1c413373c3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (32, x'5FDCA08CCDBB4F1C413373C3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameter', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept can have a Parameter that constrains the attributes that a classified Entity can have in a certain Situation, e.g. a 4WheelDriver Role definedIn the ItalianTrafficLaw has a MinimumAge parameter on the Amount 16.');


-- { _id: 5fdca08ccdbb4f1c413373cf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (33, x'5FDCA08CCDBB4F1C413373CF', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPart', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic relation between any entities, e.g. ''the human body has a brain as part'', ''20th century contains year 1923'', ''World War II includes the Pearl Harbour event''.\nSubproperties and restrictions can be used to specialize hasPart for objects, events, etc.');


-- { _id: 5fdca08ccdbb4f1c413373d8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (34, x'5FDCA08CCDBB4F1C413373D8', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParticipant', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object and a process, e.g. ''John took part in the discussion'', ''a large mass of snow fell during the avalanche'', or ''a cook, some sugar, flour, etc. are all present in the cooking of a cake''.');


-- { _id: 5fdca08ccdbb4f1c413373f3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (35, x'5FDCA08CCDBB4F1C413373F3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPostcondition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct succession applied to situations. \nE.g., ''A postcondition of our Plan is to have things settled''.');


-- { _id: 5fdca08ccdbb4f1c4133740e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (36, x'5FDCA08CCDBB4F1C4133740E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasPrecondition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct precedence applied to situations. \nE.g., ''A precondition to declare war against a foreign country is claiming to find nuclear weapons in it''.');


-- { _id: 5fdca08ccdbb4f1c41337417 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (37, x'5FDCA08CCDBB4F1C41337417', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasQuality', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities and qualities, e.g. ''Dmitri''s skin is yellowish''.');


-- { _id: 5fdca08ccdbb4f1c41337420 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (38, x'5FDCA08CCDBB4F1C41337420', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities and regions, e.g. ''the number of wheels of that truck is 12'', ''the time of the experiment is August 9th, 2004'', ''the whale has been localized at 34 degrees E, 20 degrees S''.');


-- { _id: 5fdca08ccdbb4f1c41337429 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (39, x'5FDCA08CCDBB4F1C41337429', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object and a role, e.g. the person ''John'' has role ''student''.');


-- { _id: 5fdca08ccdbb4f1c41337432 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (40, x'5FDCA08CCDBB4F1C41337432', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasSetting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities and situations, e.g. ''this morning I''ve prepared my coffee with a new fantastic Arabica'', i.e.: (an amount of) a new fantastic Arabica hasSetting the preparation of my coffee this morning.');


-- { _id: 5fdca08ccdbb4f1c4133743c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (41, x'5FDCA08CCDBB4F1C4133743C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between roles and tasks, e.g. ''students have the duty of giving exams'' (i.e. the Role ''student'' hasTask the Task ''giving exams'').');


-- { _id: 5fdca08ccdbb4f1c41337445 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (42, x'5FDCA08CCDBB4F1C41337445', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasTimeInterval', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The generic relation between events and time intervals.');


-- { _id: 5fdca08ccdbb4f1c4133744e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (43, x'5FDCA08CCDBB4F1C4133744E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and actions, e.g. ''this morning I''ve prepared my coffee and had my fingers burnt'' (i.e.: the preparation of my coffee this morning included a burning of my fingers).');


-- { _id: 5fdca08ccdbb4f1c41337457 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (44, x'5FDCA08CCDBB4F1C41337457', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and persons, e.g. ''this morning I''ve prepared my coffee and had my fingers burnt'' (i.e.: the preparation of my coffee this morning included me).');


-- { _id: 5fdca08ccdbb4f1c41337460 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (45, x'5FDCA08CCDBB4F1C41337460', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesEvent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and events, e.g. ''this morning I''ve prepared my coffee and had my fingers burnt'' (i.e.: the preparation of my coffee this morning included a burning of my fingers).');


-- { _id: 5fdca08dcdbb4f1c41337469 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (46, x'5FDCA08DCDBB4F1C41337469', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and objects, e.g. ''this morning I''ve prepared my coffee and had my fingers burnt'' (i.e.: the preparation of my coffee this morning included me).');


-- { _id: 5fdca08dcdbb4f1c41337472 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (47, x'5FDCA08DCDBB4F1C41337472', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#includesTime', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and time intervals, e.g. ''this morning I''ve prepared my coffee and had my fingers burnt'' (i.e.: preparing my coffee was held this morning). A data value attached to the time interval typically complements this modelling pattern.');


-- { _id: 5fdca08dcdbb4f1c4133747f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (48, x'5FDCA08DCDBB4F1C4133747F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#introduces', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Description and a SocialAgent, e.g. a Constitutional Charter introduces the SocialAgent ''PresidentOfRepublic''.');


-- { _id: 5fdca08dcdbb4f1c41337488 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (49, x'5FDCA08DCDBB4F1C41337488', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#involvesAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Agent participation.');


-- { _id: 5fdca08dcdbb4f1c41337491 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (50, x'5FDCA08DCDBB4F1C41337491', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAbout', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between information objects and any Entity (including information objects). It can be used to talk about e.g. entities are references of proper nouns: the proper noun ''Leonardo da Vinci'' isAbout the Person Leonardo da Vinci; as well as to talk about sets of entities that can be described by a common noun: the common noun ''person'' isAbout the set of all persons in a domain of discourse, which can be represented in DOLCE-Ultralite as an individual of the class: Collection .\nThe isAbout relation is reflexive (not expressible in OWL1.0), because information objects are also about themselves.');


-- { _id: 5fdca08dcdbb4f1c413374a7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (51, x'5FDCA08DCDBB4F1C413374A7', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isAgentInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Agent participation.');


-- { _id: 5fdca08dcdbb4f1c413374b7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (52, x'5FDCA08DCDBB4F1C413374B7', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isClassifiedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Concept and an Entity, e.g. ''John is considered a typical rude man''; your last concert constitutes the achievement of a lifetime; ''20-year-old means she''s mature enough''.');


-- { _id: 5fdca08dcdbb4f1c413374c5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (53, x'5FDCA08DCDBB4F1C413374C5', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isComponentOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The hasPart relation without transitivity, holding between an Object (the system) and another (the component), and assuming a Design that structures the Object.');


-- { _id: 5fdca08dcdbb4f1c413374cd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (54, x'5FDCA08DCDBB4F1C413374CD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an InformationObject and a Concept , e.g. the term "dog" expresses the Concept "dog". For expressing a relational meaning, see the more general object property: expresses');


-- { _id: 5fdca08dcdbb4f1c413374d6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (55, x'5FDCA08DCDBB4F1C413374D6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptUsedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A more generic relation holding between a Description and a Concept. In order to be used, a Concept must be previously definedIn another Description');


-- { _id: 5fdca08dcdbb4f1c413374de }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (56, x'5FDCA08DCDBB4F1C413374DE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConceptualizedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation stating that an Agent is internally representing a Description . E.g., ''John believes in the conspiracy theory''; ''Niels Bohr created a solar-system metaphor for his atomic theory''; ''Jacques assumes all swans are white''; ''the task force shares the attack plan''.');


-- { _id: 5fdca08dcdbb4f1c413374e6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (57, x'5FDCA08DCDBB4F1C413374E6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConcretelyExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an InformationRealization and a Description, e.g. ''the printout of the Italian Constitution concretelyExpresses the Italian Constitution''. It should be supplied also with a rule stating that the InformationRealization realizes an InformationObject that expresses the Description');


-- { _id: 5fdca08dcdbb4f1c413374ee }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (58, x'5FDCA08DCDBB4F1C413374EE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstituentOf', 'http://www.w3.org/2000/01/rdf-schema#comment', '''Constituency'' depends on some layering of  the world described by the ontology. For example, scientific granularities (e.g. body-organ-tissue-cell) or ontological ''strata'' (e.g. social-mental-biological-physical) are  typical layerings. \nIntuitively, a constituent is a part belonging to a lower layer. Since layering is actually a partition of the world described by the ontology, constituents are not properly classified as parts, although this kinship can be intuitive for common sense.\nA desirable advantage of this distinction is that we are able to talk e.g. of physical constituents of non-physical objects (e.g. systems), while this is not possible in terms of parts.\nExample of are the persons constituting a social system, the molecules constituting a person, the atoms constituting a river, etc. \nIn all these examples, we notice a typical discontinuity between the constituted and the constituent object: e.g. a social system is conceptualized at a different layer from the persons that constitute it, a person is conceptualized at a different layer from the molecules that constitute them, and a river is conceptualized at a different layer from the atoms that constitute it.');


-- { _id: 5fdca08dcdbb4f1c413374f6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (59, x'5FDCA08DCDBB4F1C413374F6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isConstraintFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between parameters and entities. It allows to assert generic constraints (encoded as parameters), e.g. MinimumAgeForDriving isConstraintFor John (where John is a legal subject under the TrafficLaw).\nThe intended semantics (not expressible in OWL) is that a Parameter isConstraintFor and Entity if the Parameter isParameterFor a Concept that classifies that Entity; moreover, it entails that a Parameter parametrizes a Region that isRegionFor that Entity. The use in OWL is therefore a shortcut to annotate what Parameter constrains what Entity');


-- { _id: 5fdca08dcdbb4f1c413374fe }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (60, x'5FDCA08DCDBB4F1C413374FE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isCoveredBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between concepts and collections, where a Concept is said to cover a Collection; it corresponds to a link between the (reified) intensional and extensional interpretations of a (reified) class.\nE.g. the collection of vintage saxophones is covered by the Concept ''Saxophone'' with the Parameter ''Vintage''.');


-- { _id: 5fdca08dcdbb4f1c41337506 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (61, x'5FDCA08DCDBB4F1C41337506', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Description and a Concept, e.g. a Workflow for a governmental Organization defines the Role ''officer'', or ''the Italian Traffic Law defines the role Vehicle''.');


-- { _id: 5fdca08dcdbb4f1c41337512 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (62, x'5FDCA08DCDBB4F1C41337512', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isDescribedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between an Entity and a Description: a Description gives a unity to a Collection of parts (the components), or constituents, by assigning a Role to each of them in the context of a whole Object (the system).\nA same Entity can be given different descriptions, for example, an old cradle can be given a unifying Description based on the original aesthetic design, the functionality it was built for, or a new aesthetic functionality in which it can be used as a flower pot.');


-- { _id: 5fdca08dcdbb4f1c41337521 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (63, x'5FDCA08DCDBB4F1C41337521', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExecutedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an action and a task, e.g. ''putting some water in a pot and putting the pot on a fire until the water starts bubbling'' executes the task ''boiling''.');


-- { _id: 5fdca08dcdbb4f1c41337529 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (64, x'5FDCA08DCDBB4F1C41337529', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpandedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A partial order relation that holds between descriptions. It represents the proper part relation between a description and another description featuring the same properties as the former, with at least one additional one.\nDescriptions can be expanded either by adding other descriptions as parts, or by refining concepts that are used by them. \nAn ''intention'' to expand must be present (unless purely formal theories are considered, but even in this case a criterion of relevance is usually active).');


-- { _id: 5fdca08dcdbb4f1c41337531 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (65, x'5FDCA08DCDBB4F1C41337531', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isExpressedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a dul:SocialObject (the ''meaning'') and a dul:InformationObject (the ''expression''). \nFor example: ''A Beehive is a structure in which bees are kept, typically in the form of a dome or box.'' (Oxford dictionary)''; ''the term Beehive expresses the concept Beehive in my apiculture ontology''.\nThe intuition for ''meaning'' is intended to be very broad. A separate, large comment is included in the encoding of ''expresses'', for those who want to investigate more on what kind of meaning can be represented in what form.');


-- { _id: 5fdca08dcdbb4f1c41337539 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (66, x'5FDCA08DCDBB4F1C41337539', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isIntroducedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Description and a SocialAgent, e.g. a Constitutional Charter introduces the SocialAgent ''PresidentOfRepublic''.');


-- { _id: 5fdca08dcdbb4f1c41337543 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (67, x'5FDCA08DCDBB4F1C41337543', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isLocationOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A generic, relative localization, holding between any entities. E.g. ''Rome is the seat of the Pope'', ''the liver is the location of the tumor''.\nFor ''absolute'' locations, see SpaceRegion');


-- { _id: 5fdca08dcdbb4f1c4133754b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (68, x'5FDCA08DCDBB4F1C4133754B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isMemberOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between collections and entities, e.g. ''the Night Watch by Rembrandt is in the Rijksmuseum collection''; ''Davide is member of the Pen Club'', ''Igor is one the subjects chosen for the experiment''.');


-- { _id: 5fdca08dcdbb4f1c4133755b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (69, x'5FDCA08DCDBB4F1C4133755B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isObservableAt', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation to represent a (past, present or future) TimeInterval at which an Entity is observable.\nIn order to encode a specific time, a data value should be related to the TimeInterval. \nAn alternative way of representing time is the datatype property: hasIntervalDate');


-- { _id: 5fdca08dcdbb4f1c41337563 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (70, x'5FDCA08DCDBB4F1C41337563', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParameterFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept can have a Parameter that constrains the attributes that a classified Entity can have in a certain Situation, e.g. a 4WheelDriver Role definedIn the ItalianTrafficLaw has a MinimumAge parameter on the Amount 16.');


-- { _id: 5fdca08dcdbb4f1c4133756c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (71, x'5FDCA08DCDBB4F1C4133756C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParametrizedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between a Parameter, e.g. ''MajorAge'', and a Region, e.g. ''>17 year''.');


-- { _id: 5fdca08dcdbb4f1c41337578 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (72, x'5FDCA08DCDBB4F1C41337578', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPartOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between any entities, e.g.''brain is a part of the human body''.');


-- { _id: 5fdca08dcdbb4f1c41337580 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (73, x'5FDCA08DCDBB4F1C41337580', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isParticipantIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object and a process, e.g. ''John took part in the discussion'', ''a large mass of snow fell during the avalanche'', or ''a cook, some sugar, flour, etc. are all present in the cooking of a cake''.');


-- { _id: 5fdca08dcdbb4f1c41337598 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (74, x'5FDCA08DCDBB4F1C41337598', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPostconditionOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct succession applied to situations. \nE.g., ''Taking some rest is a postcondition of my search for a hotel''.');


-- { _id: 5fdca08dcdbb4f1c413375b0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (75, x'5FDCA08DCDBB4F1C413375B0', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isPreconditionOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct precedence applied to situations. \nE.g., ''claiming to find nuclear weapons in a foreign country is a precondition to declare war against it''.');


-- { _id: 5fdca08dcdbb4f1c413375bb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (76, x'5FDCA08DCDBB4F1C413375BB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isQualityOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities and qualities, e.g. ''Dmitri''s skin is yellowish''.');


-- { _id: 5fdca08dcdbb4f1c413375c4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (77, x'5FDCA08DCDBB4F1C413375C4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an information realization and an information object, e.g. the paper copy of the Italian Constitution realizes the text of the Constitution.');


-- { _id: 5fdca08dcdbb4f1c413375cc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (78, x'5FDCA08DCDBB4F1C413375CC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between information objects and any Entity (including information objects). It can be used to talk about e.g. entities are references of proper nouns: the proper noun ''Leonardo da Vinci'' isAbout the Person Leonardo da Vinci; as well as to talk about sets of entities that can be described by a common noun: the common noun ''person'' isAbout the set of all persons in a domain of discourse, which can be represented in DOLCE-Ultralite as an individual of the class: Collection .\nThe isReferenceOf relation is irreflexive, differently from its inverse isAbout.');


-- { _id: 5fdca08dcdbb4f1c413375d5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (79, x'5FDCA08DCDBB4F1C413375D5', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isReferenceOfInformationRealizedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between entities and information realizations, e.g. between Italy and a paper copy of the text of the Italian Constitution.');


-- { _id: 5fdca08dcdbb4f1c413375dd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (80, x'5FDCA08DCDBB4F1C413375DD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRegionFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities and regions, e.g. ''the color of my car is red''.');


-- { _id: 5fdca08dcdbb4f1c413375ec }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (81, x'5FDCA08DCDBB4F1C413375EC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToConcept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation between concepts, e.g. superordinated, conceptual parthood, having a parameter, having a task, superordination, etc.');


-- { _id: 5fdca08dcdbb4f1c413375f6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (82, x'5FDCA08DCDBB4F1C413375F6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRelatedToDescription', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation between descriptions.');


-- { _id: 5fdca08dcdbb4f1c413375fe }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (83, x'5FDCA08DCDBB4F1C413375FE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a description and a role, e.g. the role ''Ingredient'' is defined in the recipe for a cake.');


-- { _id: 5fdca08dcdbb4f1c41337606 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (84, x'5FDCA08DCDBB4F1C41337606', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isRoleOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object and a role, e.g. ''student'' is the role of ''John''.');


-- { _id: 5fdca08dcdbb4f1c41337610 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (85, x'5FDCA08DCDBB4F1C41337610', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSatisfiedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Situation and a Description, e.g. the execution of a Plan satisfies that plan.');


-- { _id: 5fdca08dcdbb4f1c41337618 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (86, x'5FDCA08DCDBB4F1C41337618', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSettingFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between situations and entities, e.g. ''this morning I''ve prepared my coffee with a new fantastic Arabica'', i.e.: the preparation of my coffee this morning is the setting for (an amount of) a new fantastic Arabica.');


-- { _id: 5fdca08dcdbb4f1c41337622 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (87, x'5FDCA08DCDBB4F1C41337622', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSpecializedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A partial order relation that holds between social objects. It represents the subsumption relation between e.g. a Concept and another Concept that is broader in extensional interpretation, but narrowe in intensional interpretation.\nE.g. PhDStudent Role specializes Student Role');


-- { _id: 5fdca08dcdbb4f1c4133762c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (88, x'5FDCA08DCDBB4F1C4133762C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSubordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct succession applied to concepts. E.g. the role ''Officer'' is subordinated to ''Director''.');


-- { _id: 5fdca08dcdbb4f1c41337635 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (89, x'5FDCA08DCDBB4F1C41337635', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isSuperordinatedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Direct precedence applied to concepts. E.g. the role ''Executive'' is superordinated to ''DepartmentManager''.');


-- { _id: 5fdca08dcdbb4f1c4133763f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (90, x'5FDCA08DCDBB4F1C4133763F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a description and a task, e.g. the task ''boil'' is defined in a recipe for a cake.');


-- { _id: 5fdca08dcdbb4f1c41337647 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (91, x'5FDCA08DCDBB4F1C41337647', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTaskOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between roles and tasks, e.g. ''students have the duty of giving exams'' (i.e. the Role ''student'' hasTask the Task ''giving exams'').');


-- { _id: 5fdca08dcdbb4f1c41337656 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (92, x'5FDCA08DCDBB4F1C41337656', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeIntervalOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The generic relation between time intervals and events.');


-- { _id: 5fdca08dcdbb4f1c41337661 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (93, x'5FDCA08DCDBB4F1C41337661', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isTimeOfObservationOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation to represent a (past, present or future) TimeInterval at which an Entity is observable.\nIn order to encode a specific time, a data value should be related to the TimeInterval. \nAn alternative way of representing time is the datatype property: hasIntervalDate');


-- { _id: 5fdca08dcdbb4f1c4133766a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (94, x'5FDCA08DCDBB4F1C4133766A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#isUnifiedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Collection has a unification criterion, provided by a Description; for example, a community of practice can be unified by a shared theory or interest, e.g. the community that makes research on mirror neurons shares some core knowledge about mirror neurons, which can be represented as a Description MirrorNeuronTheory that unifies the community. There can be several unifying descriptions.');


-- { _id: 5fdca08dcdbb4f1c41337674 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (95, x'5FDCA08DCDBB4F1C41337674', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#nearTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Generic distance relation between any Entity(s). E.g. Rome is near to Florence, astronomy is near to physics.');


-- { _id: 5fdca08dcdbb4f1c4133767d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (96, x'5FDCA08DCDBB4F1C4133767D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#overlaps', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic relation between any entities, e.g. ''the chest region overlaps with the abdomen region'', ''my spoken words overlap with hers'', ''the time of my leave overlaps with the time of your arrival'', ''fibromyalgia overlaps with other conditions''.\nSubproperties and restrictions can be used to specialize overlaps for objects, events, time intervals, etc.');


-- { _id: 5fdca08dcdbb4f1c41337685 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (97, x'5FDCA08DCDBB4F1C41337685', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#parametrizes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between a Parameter, e.g. ''MajorAgeLimit'', and a Region, e.g. ''18_year''.\nFor a more data-oriented relation, see hasDataValue');


-- { _id: 5fdca08dcdbb4f1c41337693 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (98, x'5FDCA08DCDBB4F1C41337693', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#precedes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema. \nE.g. ''year 1999 precedes 2000'', ''deciding what coffee to use'' precedes ''preparing coffee'', ''World War II follows World War I'', ''in the Milan to Rome autoroute, Bologna precedes Florence'', etc.\nIt can then be used between tasks, processes, time intervals, spatially locate objects, situations, etc. \nSubproperties can be defined in order to distinguish the different uses.');


-- { _id: 5fdca08dcdbb4f1c4133769b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (99, x'5FDCA08DCDBB4F1C4133769B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an information realization and an information object, e.g. the paper copy of the Italian Constitution realizes the text of the Constitution.');


-- { _id: 5fdca08dcdbb4f1c413376a3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (100, x'5FDCA08DCDBB4F1C413376A3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#realizesInformationAbout', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between entities and information realizations, e.g. between Italy and a paper copy of the text of the Italian Constitution.');


-- { _id: 5fdca08dcdbb4f1c413376ad }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (101, x'5FDCA08DCDBB4F1C413376AD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#sameSettingAs', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between two entities participating in a same Situation; e.g., ''Our company provides an antivenom service'' (the situation is the service, the two entities are the company and the antivenom).');


-- { _id: 5fdca08dcdbb4f1c413376b7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (102, x'5FDCA08DCDBB4F1C413376B7', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#satisfies', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Situation and a Description, e.g. the execution of a Plan satisfies that plan.');


-- { _id: 5fdca08dcdbb4f1c413376c3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (103, x'5FDCA08DCDBB4F1C413376C3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#specializes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A partial order relation that holds between social objects. \nIt mainly represents the subsumption relation between e.g. a Concept or Description and another Concept (resp. Description) that is broader in extensional interpretation, but narrower in intensional interpretation. For example, the role PhDStudent specializes the role Student.\nAnother possible use is between a Collection that isCoveredBy a Concept A, and another Collection that isCoveredBy a Concept B that on its turm specializes A. For example, the 70,000 series Selmer Mark VI saxophone Collection specializes the Selmer Mark VI saxophone Collection.');


-- { _id: 5fdca08dcdbb4f1c413376cb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (104, x'5FDCA08DCDBB4F1C413376CB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#unifies', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Collection has a unification criterion, provided by a Description; for example, a community of practice can be unified by a shared theory or interest, e.g. the community that makes research on mirror neurons shares some core knowledge about mirror neurons, which can be represented as a Description MirrorNeuronTheory that unifies the community. There can be several unifying descriptions.');


-- { _id: 5fdca08dcdbb4f1c413376d5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (105, x'5FDCA08DCDBB4F1C413376D5', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#usesConcept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A generic relation holding between a Description and a Concept. In order to be used, a Concept must be previously definedIn another Description. This last condition cannot be encoded for object properties in OWL.');


-- { _id: 5fdca08dcdbb4f1c413376dd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (106, x'5FDCA08DCDBB4F1C413376DD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasDataValue', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A datatype property that encodes values from a datatype for an Entity. \nThere are several ways to encode values in DOLCE (Ultralite):\n\n1) Directly assert an xsd:_ value to an Entity by using hasDataValue\n2) Assert a Region for an Entity by using hasRegion, and then assert an xsd:_ value to that Region, by using hasRegionDataValue\n3) Assert a Quality for an Entity by using hasQuality, then assert a Region for that Quality, and assert an xsd:_ value to that Region, by using hasRegionDataValue\n4) When the value is required, but not directly observed, assert a Parameter for an xsd:_ value by using hasParameterDataValue, and then associate the Parameter to an Entity by using isConstraintFor\n5) When the value is required, but not directly observed, you can also assert a Parameter for a Region by using parametrizes, and then assert an xsd:_ value to that Region, by using hasRegionDataValue\n\nThe five approaches obey different requirements. \nFor example, a simple value can be easily asserted by using pattern (1), but if one needs to assert an interval between two values, a Region should be introduced to materialize that interval, as pattern (2) suggests. \nFurthermore, if one needs to distinguish the individual Quality of a value, e.g. the particular nature of the density of a substance, pattern (3) can be used. \nPatterns (4) and (5) should be used instead when a constraint or a selection is modeled, independently from the actual observation of values in the real world.');


-- { _id: 5fdca08dcdbb4f1c413376e5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (107, x'5FDCA08DCDBB4F1C413376E5', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasEventDate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A datatype property that encodes values from xsd:dateTime for an Event; a same Event can have more than one xsd:dateTime value: begin date, end date, date at which the interval holds, etc.');


-- { _id: 5fdca08dcdbb4f1c413376ed }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (108, x'5FDCA08DCDBB4F1C413376ED', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasIntervalDate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A datatype property that encodes values from xsd:dateTime for a TimeInterval; a same TimeInterval can have more than one xsd:dateTime value: begin date, end date, date at which the interval holds, etc.');


-- { _id: 5fdca08dcdbb4f1c413376f4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (109, x'5FDCA08DCDBB4F1C413376F4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasParameterDataValue', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Parametrizes values from a datatype. For example, a Parameter MinimumAgeForDriving hasParameterDataValue 18 on datatype xsd:int, in the Italian traffic code. In this example, MinimumAgeForDriving isDefinedIn the Norm ItalianTrafficCodeAgeDriving.\nMore complex parametrization requires workarounds. E.g. AgeRangeForDrugUsage could parametrize data value: 14 to 50 on the datatype: xsd:int. Since complex datatypes are not allowed in OWL1.0, a solution to this can only work by creating two ''sub-parameters'': MinimumAgeForDrugUsage (that hasParameterDataValue 14) and MaximumAgeForDrugUsage (that hasParameterDataValue 50), which are components of (cf. hasComponent) the main Parameter AgeRangeForDrugUsage.\nOrdering on subparameters can be created by using or specializing the object property ''precedes''.');


-- { _id: 5fdca08dcdbb4f1c413376fb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (110, x'5FDCA08DCDBB4F1C413376FB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#hasRegionDataValue', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A datatype property that encodes values for a Region, e.g. a float for the Region Height.');


-- { _id: 5fdca08dcdbb4f1c41337706 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (111, x'5FDCA08DCDBB4F1C41337706', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Abstract', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Entity that cannot be located in space-time. E.g. mathematical entities: formal semantics elements, regions within dimensional spaces, etc.');


-- { _id: 5fdca08dcdbb4f1c41337714 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (112, x'5FDCA08DCDBB4F1C41337714', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An Event with at least one Agent that isParticipantIn it, and that executes a Task that typically isDefinedIn a Plan, Workflow, Project, etc.');


-- { _id: 5fdca08dcdbb4f1c4133771a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (113, x'5FDCA08DCDBB4F1C4133771A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Additional comment: a computational agent can be considered as a PhysicalAgent that realizes a certain class of algorithms (that can be considered as instances of InformationObject) that allow to obtain some behaviors that are considered typical of agents in general. For an ontology of computational objects based on DOLCE see e.g. http://www.loa-cnr.it/COS/COS.owl, and http://www.loa-cnr.it/KCO/KCO.owl.');


-- { _id: 5fdca08dcdbb4f1c4133771b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (114, x'5FDCA08DCDBB4F1C4133771B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Agent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any agentive Object , either physical (e.g. a whale, a robot, an oak), or social (e.g. a corporation, an institution, a community).');


-- { _id: 5fdca08dcdbb4f1c4133772a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (115, x'5FDCA08DCDBB4F1C4133772A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Amount', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A quantity, independently from how it is measured, computed, etc.');


-- { _id: 5fdca08dcdbb4f1c41337740 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (116, x'5FDCA08DCDBB4F1C41337740', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Classification', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A special kind of Situation that allows to include time indexing for the classifies relation in situations. For example, if a Situation s ''my old cradle is used in these days as a flower pot'' isSettingFor the entity ''my old cradle'' and the TimeIntervals ''8June2007'' and ''10June2007'', and we know that s satisfies a functional Description for aesthetic objects, which defines the Concepts ''flower pot'' and ''flower'', then we also need to know what concept classifies ''my old cradle'' at what time.\nIn order to solve this issue, we need to create a sub-situation s'' for the classification time: ''my old cradle is a flower pot in 8June2007''. Such sub-situation s'' isPartOf s.');


-- { _id: 5fdca08dcdbb4f1c41337752 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (117, x'5FDCA08DCDBB4F1C41337752', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collection', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any container for entities that share one or more common properties. E.g. "stone objects", "the nurses", "the Louvre Aegyptian collection", all the elections for the Italian President of the Republic. \nA collection is not a logical class: a collection is a first-order entity, while a class is second-order.');


-- { _id: 5fdca08dcdbb4f1c4133775c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (118, x'5FDCA08DCDBB4F1C4133775C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Collective', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Collection whose members are agents, e.g. "the nurses", "the Italian rockabilly fans".\nCollectives, facon de parler, can act as agents, although they are not assumed here to be agents (they are even disjoint from the class SocialAgent). This is represented by admitting collectives in the range of the relations having Agent in their domain or range.');


-- { _id: 5fdca08dcdbb4f1c4133776a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (119, x'5FDCA08DCDBB4F1C4133776A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#CollectiveAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A SocialAgent that is actedBy agents that are (and act as) members of a Collective. A collective agent can have roles that are also roles of those agents.\nFor example, in sociology, a ''group action'' is the situation in which a number of people (that result to be members of a collective) in a given area behave in a coordinated way in order to achieve a (often common) goal. The Agent in such a Situation is not single, but a CollectiveAgent (a Group). This can be generalized to the notion of social movement, which assumes a large Community or even the entire Society as agents.\nThe difference between a CollectiveAgent and an Organization is that a Description that introduces a CollectiveAgent is also one that unifies the corresponding Collective. In practice, this difference makes collective agents ''less stable'' than organizations, because they have a dedicated, publicly recognizable Description that is conceived to introduce them.');


-- { _id: 5fdca08dcdbb4f1c41337787 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (120, x'5FDCA08DCDBB4F1C41337787', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Concept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept is a SocialObject, and isDefinedIn some Description; once defined, a Concept can be used in other Description(s). If a Concept isDefinedIn exactly one Description, see the LocalConcept class.\nThe classifies relation relates Concept(s) to Entity(s) at some TimeInterval');


-- { _id: 5fdca08dcdbb4f1c4133778d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (121, x'5FDCA08DCDBB4F1C4133778D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Configuration', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A collection whose members are ''unified'', i.e. organized according to a certain schema that can be represented by a Description.\nTypically, a configuration is the collection that emerges out of a composed entity: an industrial artifact, a plan, a discourse, etc.  \nE.g. a physical book has a configuration provided by the part-whole schema that holds together its cover, pages, ink. That schema, based on the individual relations between the book and its parts, can be represented in a reified way by means of a (structural) description, which is said to ''unify'' the book configuration.');


-- { _id: 5fdca08dcdbb4f1c41337793 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (122, x'5FDCA08DCDBB4F1C41337793', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Contract', 'http://www.w3.org/2000/01/rdf-schema#comment', '(The content of) an agreement between at least two agents that play a Party Role, about some contract object (a Task to be executed).');


-- { _id: 5fdca08dcdbb4f1c4133779c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (123, x'5FDCA08DCDBB4F1C4133779C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Description', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Description is a SocialObject that represents a conceptualization. \nIt can be thought also as a ''descriptive context'' that uses or defines concepts in order to create a view on a ''relational context'' (cf. Situation) out of a set of data or observations. \nFor example, a Plan is a Description of some actions to be executed by agents in a certain way, with certain parameters; a Diagnosis is a Description that provides an interpretation for a set of observed entities, etc.');


-- { _id: 5fdca08dcdbb4f1c413377a8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (124, x'5FDCA08DCDBB4F1C413377A8', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Design', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Description of the Situation, in terms of structure and function, held by an Entity for some reason.\nA design is usually accompanied by the rationales behind the construction of the designed Entity (i.e. of the reasons why a design is claimed to be as such). For example, the actual design (a Situation) of a car or of a law is based on both the specification (a Description) of the structure, and the rationales used to construct cars or laws.\nWhile designs typically describe entities to be constructed, they can also be used to describe ''refunctionalized'' entities, or to hypothesize unknown functions. For example, a cradle can be refunctionalized as a flowerpot based on a certain home design.');


-- { _id: 5fdca08dcdbb4f1c413377b2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (125, x'5FDCA08DCDBB4F1C413377B2', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#DesignedArtifact', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A PhysicalArtifact that is also described by a Design. This excludes simple recycling or refunctionalization of natural objects. Most common sense ''artifacts'' can be included in this class: cars, lamps, houses, chips, etc.');


-- { _id: 5fdca08dcdbb4f1c413377bc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (126, x'5FDCA08DCDBB4F1C413377BC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Diagnosis', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Description of the Situation of a system, usually applied in order to control a normal behaviour, or to explain a notable behavior (e.g. a functional breakdown).');


-- { _id: 5fdca08dcdbb4f1c413377c1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (127, x'5FDCA08DCDBB4F1C413377C1', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Entity', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Anything: real, possible, or imaginary, which some modeller wants to talk about for some purpose.');


-- { _id: 5fdca08dcdbb4f1c413377df }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (128, x'5FDCA08DCDBB4F1C413377DF', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Event', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any physical, social, or mental process, event, or state.\n\nMore theoretically, events can be classified in different ways, possibly based on ''aspect'' (e.g. stative, continuous, accomplishement, achievement, etc.), on ''agentivity'' (e.g. intentional, natural, etc.), or on ''typical participants'' (e.g. human, physical, abstract, food, etc.).\nHere no special direction is taken, and the following explains why: events are related to observable situations, and they can have different views at a same time.\nIf a position has to be suggested here anyway, the participant-based classification of events seems the most stable and appropriate for many modelling problems.\n\n(1) Alternative aspectual views\n\nConsider a same event ''rock erosion in the Sinni valley'': it can be conceptualized as an accomplishment (what has brought a certain state to occur), as an achievement (the state resulting from a previous accomplishment), as a punctual event (if we collapse the time interval of the erosion into a time point), or as a transition (something that has changed from a state to a different one). \nIn the erosion case, we could therefore have good motivations to shift from one aspect to another: a) causation focus, b) effectual focus, c) historical condensation, d) transition (causality).\n\nThe different views refer to the same event, but are still different: how to live with this seeming paradox? \nA typical solution e.g. in linguistics (cf. Levin''s aspectual classes) and in DOLCE Full (cf. WonderWeb D18 axiomatization) is to classify events based on aspectual differences. But this solution would create different identities for a same event, where the difference is only based on the modeller''s attitude.\nAn alternative solution is applied here, and exploits the notion of (observable) Situation; a Situation is a view, consistent with a Description, which can be observed of a set of entities. It can also be seen as a ''relational context'' created by an observer on the basis of a ''frame''. Therefore, a Situation allows to create a context where each particular view can have a proper identity, while the Event preserves its own identity. \nFor example, ErosionAsAccomplishment is a Situation where rock erosion is observed as a process leading to a certain achievement: the conditions (roles, parameters) that suggest such view are stated in a Description, which acts as a ''theory of accomplishments''. Similarly, ErosionAsTransition is a Situation where rock erosion is observed as an event that has changed a state to another: the conditions for such interpretation are stated in a different Description, which acts as a ''theory of state transitions''.\nConsider that in no case the actual event is changed or enriched in parts by the aspectual view.\n\n(2) Alternative intentionality views\n\nSimilarly to aspectual views, several intentionality views can be provided for a same Event. For example, one can investigate if an avalanche has been caused by immediate natural forces, or if there is any hint of an intentional effort to activate those natural forces.\nAlso in this case, the Event as such has not different identities, while the causal analysis generates situations with different identities, according to what Description is taken for interpreting the Event. \nOn the other hand, if the possible actions of an Agent causing the starting of an avalanche are taken as parts of the Event, then this makes its identity change, because we are adding a part to it. \nTherefore, if intentionality is a criterion to classify events or not, this depends on if an ontology designer wants to consider causality as a relevant dimension for events'' identity.\n\n(3) Alternative participant views\n\nA slightly different case is when we consider the basic participants to an Event. In this case, the identity of the Event is affected by the participating objects, because it depends on them. \nFor example, if snow, mountain slopes, wind, waves, etc. are considered as an avalanche basic participants, or if we also want to add water, human agents, etc., that makes the identity of an avalanche change.\nAnyway, this approach to event classification is based on the designer''s choices, and more accurately mirrors lexical or commonsense classifications (see. e.g. WordNet ''supersenses'' for verb synsets).\n\nUltimately, this discussion has no end, because realists will keep defending the idea that events in reality are not changed by the way we describe them, while constructivists will keep defending the idea that, whatever ''true reality'' is about, it can''t be modelled without the theoretical burden of how we observe and describe it. \nBoth positions are in principle valid, but, if taken too radically, they focus on issues that are only partly relevant to the aim of computational ontologies, which only attempt to assist domain experts in representing what they want to conceptualize a certain portion of reality according to their own ideas. \nFor this reason, in this ontology both events and situations are allowed, together with descriptions, in order to encode the modelling needs, independently from the position (if any) chosen by the designer.');


-- { _id: 5fdca08dcdbb4f1c413377eb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (129, x'5FDCA08DCDBB4F1C413377EB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#EventType', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept that classifies an Event . An event type describes how an Event should be interpreted, executed, expected, seen, etc., according to the Description that the EventType isDefinedIn (or used in)');


-- { _id: 5fdca08dcdbb4f1c413377f1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (130, x'5FDCA08DCDBB4F1C413377F1', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#FormalEntity', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Entities that are formally defined and are considered independent from the social context in which they are used. They cannot be localized in space or time. Also called ''Platonic entities''.\nMathematical and logical entities are included in this class: sets, categories, tuples, costants, variables, etc.\nAbstract formal entities are distinguished from information objects, which are supposed to be part of a social context, and are localized in space and time, therefore being (social) objects.\nFor example, the class ''Quark'' is an abstract formal entity from the purely set-theoretical perspective, but it is an InformationObject from the viewpoint of ontology design, when e.g. implemented in a logical language like OWL.\nAbstract formal entities are also distinguished from Concept(s), Collection(s), and Description(s), which are part of a social context, therefore being SocialObject(s) as well.\nFor example, the class ''Quark'' is an abstract FormalEntity from the purely set-theoretical perspective, but it is a Concept within history of science and cultural dynamics.\n\nThese distinctions allow to represent two different notions of ''semantics'': the first one is abstract and formal (''formal semantics''), and formallyInterprets symbols that are about entities whatsoever; for example, the term ''Quark'' isAbout the Collection of all quarks, and that Collection isFormalGroundingFor the abstract class ''Quark'' (in the extensional sense). \nThe second notion is social, localized in space-time (''social semantics''), and can be used to interpret entities in the intensional sense. For example, the Collection of all quarks isCoveredBy the Concept ''Quark'', which is also expressed by the term ''Quark''.');


-- { _id: 5fdca08dcdbb4f1c41337803 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (131, x'5FDCA08DCDBB4F1C41337803', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Goal', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The Description of a Situation that is desired by an Agent, and usually associated to a Plan that describes how to actually achieve it');


-- { _id: 5fdca08dcdbb4f1c4133780d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (132, x'5FDCA08DCDBB4F1C4133780D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Group', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A CollectiveAgent whose acting agents conceptualize a same SocialRelation .');


-- { _id: 5fdca08dcdbb4f1c41337813 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (133, x'5FDCA08DCDBB4F1C41337813', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationEntity', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A piece of information, be it concretely realized or not.');


-- { _id: 5fdca08dcdbb4f1c4133781a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (134, x'5FDCA08DCDBB4F1C4133781A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A piece of information, such as a musical composition, a text, a word, a picture, independently from how it is concretely realized.');


-- { _id: 5fdca08dcdbb4f1c41337831 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (135, x'5FDCA08DCDBB4F1C41337831', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#InformationRealization', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A concrete realization of an InformationObject, e.g. the written document containing the text of a law.');


-- { _id: 5fdca08dcdbb4f1c41337837 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (136, x'5FDCA08DCDBB4F1C41337837', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#LocalConcept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept that isDefinedIn exactly 1 Description. For example, the Concept ''coffee'' in a ''preparesCoffee'' relation can be defined in that relation, and for all other Description(s) that use it, the isConceptUsedIn property should be applied. Notice therefore that not necessarily all Concept(s) isDefinedIn exactly 1 Description.');


-- { _id: 5fdca08dcdbb4f1c41337841 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (137, x'5FDCA08DCDBB4F1C41337841', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Method', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A method is a Description that defines or uses concepts in order to guide carrying out actions aimed at a solution with respect to a problem. \nIt is different from a Plan, because plans could be carried out in order to follow a method, but a method can be followed by executing alternative plans.');


-- { _id: 5fdca08dcdbb4f1c4133784c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (138, x'5FDCA08DCDBB4F1C4133784C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#NaturalPerson', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A person in the physical commonsense intuition: ''have you seen that person walking down the street?''');


-- { _id: 5fdca08dcdbb4f1c41337852 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (139, x'5FDCA08DCDBB4F1C41337852', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Norm', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A social norm.');


-- { _id: 5fdca08ecdbb4f1c41337876 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (140, x'5FDCA08ECDBB4F1C41337876', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Object', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any physical, social, or mental object, or a substance. Following DOLCE Full, objects are always participating in some event (at least their own life), and are spatially located.');


-- { _id: 5fdca08ecdbb4f1c4133787d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (141, x'5FDCA08ECDBB4F1C4133787D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Organism', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A physical objects with biological characteristics, typically that organisms can self-reproduce.');


-- { _id: 5fdca08ecdbb4f1c41337889 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (142, x'5FDCA08ECDBB4F1C41337889', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Organization', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An internally structured, conventionally created SocialAgent, needing a specific Role and Agent that plays it, in order to act.');


-- { _id: 5fdca08ecdbb4f1c4133788a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (143, x'5FDCA08ECDBB4F1C4133788A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Organization', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Un agente sociale strutturato internamente e creato convenzionalmente. Per agire, ha bisogno di ruoli e agenti che li ricoprano.');


-- { _id: 5fdca08ecdbb4f1c41337899 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (144, x'5FDCA08ECDBB4F1C41337899', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Parameter', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept that classifies a Region; the difference between a Region and a Parameter is that regions represent sets of observable values, e.g. the height  of a given building, while parameters represent constraints or selections on observable values, e.g. ''VeryHigh''. Therefore, parameters can also be used to constrain regions, e.g. VeryHigh on a subset of values of the Region Height applied to buildings, or to add an external selection criterion , such as measurement units, to regions, e.g. Meter on a subset of values from the Region Length applied to the Region Length applied to roads.');


-- { _id: 5fdca08ecdbb4f1c4133789f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (145, x'5FDCA08ECDBB4F1C4133789F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Pattern', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any invariance detected from a dataset, or from observation; also, any invariance proposed based on top-down considerations.\nE.g. patterns detected and abstracted by an organism, by pattern recognition algorithms, by machine learning techniques, etc.\nAn occurrence of a pattern is an ''observable'', or detected Situation');


-- { _id: 5fdca08ecdbb4f1c413378a4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (146, x'5FDCA08ECDBB4F1C413378A4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Person', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Persons in commonsense intuition, which does not apparently distinguish between either natural or social persons.');


-- { _id: 5fdca08ecdbb4f1c413378b0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (147, x'5FDCA08ECDBB4F1C413378B0', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Personification', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A social entity with agentive features, but whose status is the result of a cultural transformation from e.g. a PhysicalObject, an Event, an Abstract, another SocialObject, etc. For example: the holy grail, deus ex machina, gods, magic wands, etc.');


-- { _id: 5fdca08ecdbb4f1c413378b6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (148, x'5FDCA08ECDBB4F1C413378B6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A PhysicalObject that is capable of self-representing (conceptualizing) a Description in order to plan an Action. \nA PhysicalAgent is a substrate for (actsFor) a Social Agent');


-- { _id: 5fdca08ecdbb4f1c413378c0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (149, x'5FDCA08ECDBB4F1C413378C0', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalArtifact', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any PhysicalObject that isDescribedBy a Plan .\nThis axiomatization is weak, but allows to talk of artifacts in a very general sense, i.e. including recycled objects, objects with an intentional functional change, natural objects that are given a certain function, even though they are not modified or structurally designed, etc. PhysicalArtifact(s) are not considered disjoint from PhysicalBody(s), in order to allow a dual classification when needed. E.g.,\nFunctionalSubstance(s) are included here as well.\nImmaterial (non-physical) artifacts (e.g. texts, ideas, cultural movements, corporations, communities, etc. can be modelled as social objects (see SocialObject), which are all ''artifactual'' in the weak sense assumed here.');


-- { _id: 5fdca08ecdbb4f1c413378d0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (150, x'5FDCA08ECDBB4F1C413378D0', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Physical value of a physical object, e.g. density, color, etc.');


-- { _id: 5fdca08ecdbb4f1c413378d8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (151, x'5FDCA08ECDBB4F1C413378D8', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalBody', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Physical bodies are PhysicalObject(s), for which we tend to neutralize any possible artifactual character. They can have several granularity levels: geological, chemical, physical, biological, etc.');


-- { _id: 5fdca08ecdbb4f1c413378e2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (152, x'5FDCA08ECDBB4F1C413378E2', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Object that has a proper space region. The prototypical physical object has also an associated mass, but the nature of its mass can greatly vary based on the epistemological status of the object (scientifically measured, subjectively possible, imaginary).');


-- { _id: 5fdca08ecdbb4f1c413378e8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (153, x'5FDCA08ECDBB4F1C413378E8', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PhysicalPlace', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A physical object that is inherently located; for example, a water area.');


-- { _id: 5fdca08ecdbb4f1c413378f2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (154, x'5FDCA08ECDBB4F1C413378F2', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Place', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A location, in a very generic sense: a political geographic entity (Roma, Lesotho), a non-material location determined by the presence of other entities ("the area close to Roma"), pivot events or signs ("the area where the helicopter fell"), complements of other entities ("the area under the table"), etc. \nIn this generic sense, a Place is an "approximate" location. For an "absolute" location, see the class SpaceRegion');


-- { _id: 5fdca08ecdbb4f1c41337900 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (155, x'5FDCA08ECDBB4F1C41337900', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Plan', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Description having an explicit Goal, to be achieved by executing the plan');


-- { _id: 5fdca08ecdbb4f1c4133790a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (156, x'5FDCA08ECDBB4F1C4133790A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#PlanExecution', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Plan executions are situations that proactively satisfy a plan. Subplan executions are proper parts of the whole plan execution.');


-- { _id: 5fdca08ecdbb4f1c41337910 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (157, x'5FDCA08ECDBB4F1C41337910', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Process', 'http://www.w3.org/2000/01/rdf-schema#comment', 'This is a placeholder for events that are considered in their evolution, or anyway not strictly dependent on agents, tasks, and plans. \nSee Event class for some thoughts on classifying events. See also ''Transition''.');


-- { _id: 5fdca08ecdbb4f1c41337926 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (158, x'5FDCA08ECDBB4F1C41337926', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Project', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Plan that defines Role(s), Task(s), and a specific structure for tasks to be executed in relation to goals to be achieved, in order to achieve the main goal of the project. In other words, a project is a plan with a subgoal structure and multiple roles and tasks.');


-- { _id: 5fdca08ecdbb4f1c41337938 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (159, x'5FDCA08ECDBB4F1C41337938', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Quality', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any aspect of an Entity (but not a part of it), which cannot exist without that Entity. For example, the way the surface of a specific PhysicalObject looks like, or the specific light of a place at a certain time, are examples of Quality, while the encoding of a Quality into e.g. a PhysicalAttribute should be modeled as a Region. \nFrom the design viewpoint, the Quality-Region distinction is useful only when individual aspects of an Entity are considered in a domain of discourse. \nFor example, in an automotive context, it would be irrelevant to consider the aspects of car windows for a specific car, unless the factory wants to check a specific window against design parameters (anomaly detection). \nOn the other hand, in an antiques context, the individual aspects for a specific piece of furniture are a major focus of attention, and may constitute the actual added value, because the design parameters for old furniture are often not fixed, and may not be viewed as ''anomalies''.');


-- { _id: 5fdca08ecdbb4f1c41337955 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (160, x'5FDCA08ECDBB4F1C41337955', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Region', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any region in a dimensional space (a dimensional space is a maximal Region), which can be used as a value for a quality of an Entity . For example, TimeInterval, SpaceRegion, PhysicalAttribute, Amount, SocialAttribute are all subclasses of Region. \nRegions are not data values in the ordinary knowledge representation sense; in order to get patterns for modelling data, see the properties: representsDataValue and hasDataValue');


-- { _id: 5fdca08ecdbb4f1c4133795b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (161, x'5FDCA08ECDBB4F1C4133795B', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Relation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relations are descriptions that can be considered as the counterpart of formal relations (that are included in the FormalEntity class).\nFor example, ''givingGrantToInstitution(x,y,z)'' with three argument types: Provider(x),Grant(y),Recipient(z), can have a Relation counterpart: ''GivingGrantToInstitution'', which defines three Concept instances: Provider,Grant,Recipient.\nSince social objects are not formal entities, Relation includes here any ''relation-like'' entity in common sense, including social relations.');


-- { _id: 5fdca08ecdbb4f1c4133796e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (162, x'5FDCA08ECDBB4F1C4133796E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Right', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A legal position by which an Agent is entitled to obtain something from another Agent , under specified circumstances, through an enforcement explicited either in a Law, Contract , etc.');


-- { _id: 5fdca08ecdbb4f1c4133797f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (163, x'5FDCA08ECDBB4F1C4133797F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Role', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Concept that classifies an Object');


-- { _id: 5fdca08ecdbb4f1c4133798f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (164, x'5FDCA08ECDBB4F1C4133798F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Situation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A view, consistent with (''satisfying'') a Description, on a set of entities. \nIt can also be seen as a ''relational context'' created by an observer on the basis of a ''frame'' (i.e. a Description). \nFor example, a PlanExecution is a context including some actions executed by agents according to certain parameters and expected tasks to be achieved from a Plan; a DiagnosedSituation is a context of observed entities that is interpreted on the basis of a Diagnosis, etc.\nSituation is also able to represent reified n-ary relations, where isSettingFor is the top-level relation for all binary projections of the n-ary relation. If used in a transformation pattern for n-ary relations, the designer should take care of creating only one subclass of Situation for each n-ary relation, otherwise the ''identification constraint'' (Calvanese et al., IJCAI 2001) could be violated.');


-- { _id: 5fdca08ecdbb4f1c4133799a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (165, x'5FDCA08ECDBB4F1C4133799A', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any individual whose existence is granted simply by its social communicability and capability of action (through some PhysicalAgent).');


-- { _id: 5fdca08ecdbb4f1c413379ab }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (166, x'5FDCA08ECDBB4F1C413379AB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Object that exists only within some communication Event, in which at least one PhysicalObject participates in. \nIn other words, all objects that have been or are created in the process of social communication: for the sake of communication (InformationObject), for incorporating new individuals (SocialAgent, Place), for contextualizing existing entities (Situation), for collecting existing entities (Collection), or for describing existing entities (Description, Concept).\nBeing dependent on communication, all social objects need to be expressed by some information object (information object are self-expressing).');


-- { _id: 5fdca08ecdbb4f1c413379b9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (167, x'5FDCA08ECDBB4F1C413379B9', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialObjectAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Region in a dimensional space that is used to represent some characteristic of a SocialObject, e.g. judgment values, social scalars, statistical attributes over a collection of entities, etc.');


-- { _id: 5fdca08ecdbb4f1c413379c4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (168, x'5FDCA08ECDBB4F1C413379C4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialPerson', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A SocialAgent that needs the existence of a specific NaturalPerson in order to act (but the lifetime of the NaturalPerson has only to overlap that of the SocialPerson).');


-- { _id: 5fdca08ecdbb4f1c413379c8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (169, x'5FDCA08ECDBB4F1C413379C8', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialPerson', 'http://www.w3.org/2002/07/owl#versionInfo', 'Formerly: Person (changed to avoid confusion with commonsense intuition)');


-- { _id: 5fdca08ecdbb4f1c413379cb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (170, x'5FDCA08ECDBB4F1C413379CB', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SocialRelation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any social relationship');


-- { _id: 5fdca08ecdbb4f1c413379d2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (171, x'5FDCA08ECDBB4F1C413379D2', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#SpaceRegion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Region in a dimensional space that is used to localize an Entity ; i.e., it is not used to represent some characteristic (e.g. it excludes time intervals, colors, size values, judgment values, etc.). Differently from a Place , a space region has a specific dimensional space.');


-- { _id: 5fdca08ecdbb4f1c413379e4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (172, x'5FDCA08ECDBB4F1C413379E4', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Substance', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any PhysicalBody that has not necessarily specified (designed) boundaries, e.g. a pile of trash, some sand, etc. \nIn this sense, an artistic object made of trash or a dose of medicine in the form of a pill would be a FunctionalSubstance, and a DesignedArtifact, since its boundaries are specified by a Design; aleatoric objects that are outcomes of an artistic process might be still considered DesignedArtifact(s), and Substance(s).');


-- { _id: 5fdca08ecdbb4f1c413379fc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (173, x'5FDCA08ECDBB4F1C413379FC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Task', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An EventType that classifies an Action to be executed. \nFor example, reaching a destination is a task that can be executed by performing certain actions, e.g. driving a car, buying a train ticket, etc. \nThe actions to execute a task can also be organized according to a Plan that is not the same as the one that defines the task (if any). \nFor example, reaching a destination could be defined by a plan to get on holidays, while the plan to execute the task can consist of putting some travels into a sequence.');


-- { _id: 5fdca08ecdbb4f1c41337a07 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (174, x'5FDCA08ECDBB4F1C41337A07', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Theory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Theory is a Description that represents a set of assumptions for describing something, usually general. Scientific, philosophical, and commonsense theories can be included here.\nThis class can also be used to act as ''naturalized reifications'' of logical theories (of course, they will be necessarily incomplete in this case, because second-order entities are represented as first-order ones).');


-- { _id: 5fdca08ecdbb4f1c41337a0e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (175, x'5FDCA08ECDBB4F1C41337A0E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TimeInterval', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any Region in a dimensional space that aims at representing time.');


-- { _id: 5fdca08ecdbb4f1c41337a2c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (176, x'5FDCA08ECDBB4F1C41337A2C', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Transition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A transition is a Situation that creates a context for three TimeInterval(s), two additional different Situation(s), one Event, one Process, and at least one Object: the Event is observed as the cause for the transition, one Situation is the state before the transition, the second Situation is the state after the transition, the Process is the invariance under some different transitions (including the one represented here), in which at least one Object is situated. Finally, the time intervals position the situations and the transitional event in time.\nThis class of situations partly encodes the ontology underlying typical engineering algebras for processes, e.g. Petri Nets. \nA full representation of the transition ontology is outside the expressivity of OWL, because we would need qualified cardinality restrictions,  coreference, property equivalence, and property composition.');


-- { _id: 5fdca08ecdbb4f1c41337a34 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (177, x'5FDCA08ECDBB4F1C41337A34', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#TypeCollection', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Collection whose members are the maximal set of individuals that share the same (named) type, e.g. "the gem stones", "the Italians".\nThis class is very useful to apply a variety of the so-called "ClassesAsValues" design pattern, when it is used to talk about the extensional aspect of a class. An alternative variety of the pattern applies to the intensional aspect of a class, and the class Concept should be used instead.');


-- { _id: 5fdca08ecdbb4f1c41337a40 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (178, x'5FDCA08ECDBB4F1C41337A40', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#UnitOfMeasure', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Units of measure are conceptualized here as parameters on regions, which can be valued as datatype values.');


-- { _id: 5fdca08ecdbb4f1c41337a4f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (179, x'5FDCA08ECDBB4F1C41337A4F', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Workflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Plan that defines Role(s), Task(s), and a specific structure for tasks to be executed, usually supporting the work of an Organization');


-- { _id: 5fdca08ecdbb4f1c41337a65 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (180, x'5FDCA08ECDBB4F1C41337A65', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl', 'http://www.w3.org/2002/07/owl#versionInfo', '1.8');


-- { _id: 5fdca08ecdbb4f1c41337a66 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (181, x'5FDCA08ECDBB4F1C41337A66', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An ontology of information objects, encodings and realizations, as a plugin to DOLCE-Ultralite (reusing mainly the dul:expresses and dul:realizes relations from it). \nSeveral patterns are contained inside this ontology:\n- encodings of information entities\n- kinds of realizations (gestural motions, depictions, digital, multimedia, speech, etc.)\n- combinatorial relations between information objects\n- relations between formal expressions and generalized expressions (lexicalizations, formalizations)\n- relations between formal expressions and their assignments in formal semantics\n- relations between information objects and schemata (data structures, KOS, etc.)\n- authorship\n- kinds of linguistic objects\n- copies, reproductions, etc.\n- cultural combination of information objects (reuse, mixing, metaphorical blending)');


-- { _id: 5fdca08ecdbb4f1c41337a67 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (182, x'5FDCA08ECDBB4F1C41337A67', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl', 'http://www.w3.org/2002/07/owl#versionInfo', 'In 1.8, all object properties have been aligned to associatedWith, and some comments have been added.\nIn 1.7, the encodes object property has been modified in order to support any kind of information entity (purely social object or realization), and to give justice to computer science pragmatic equivalence between information objects that are fully encoded for computing, and the actual bits travelling in a machine or network, based on that encoding. The realizes property has been consequenctly declared as a subproperty of encodes.\nAlso removed redundant owl:someValuesFrom axioms\nIn 1.6, broadened range of hasRepresentationLanguage\nIn 1.5, some fixes added wrt to new plugins (Roles.owl, CollectionsLite.owl).\nIn 1.4, all elements have got English labels. Added the class LinguisticAct, useful to relate Agent(s) when use information objects to express meaning with some CommunicativeFunction (from the theory by Jakobson). Moreover, the relation between formal patterns and information patterns have been enriched. Some bugs fixed.');


-- { _id: 5fdca08ecdbb4f1c41337a70 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (183, x'5FDCA08ECDBB4F1C41337A70', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#combinatoriallyRelatedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation holding between two FormalExpression(s), e.g. a function over formal grammars, boolean operators, syntactic relations defined for the logical vocabulary of a formal language, etc.\nSyntactic relations from logical languages have a correspondance to some formal relation.');


-- { _id: 5fdca08ecdbb4f1c41337a7f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (184, x'5FDCA08ECDBB4F1C41337A7F', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#encodes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation between two information entities, with the first used as an alternative encoding of the second. This encoding can preserve all or part of the informational structure. For example, an XML encoding of a plain text file, a digital scanning of a physical paper document, a reproduction of a painting, etc.\nThe encoding can be so precise and close to the medium of realization, that distinguishing the maximally encoded object from its realization is superfluous (as in many cases of computer science information entities). For this reason, the relation holds for either dul:InformationObject(s) or dul:InformationRealization(s).\nSince the relation holds for either dul:InformationObject(s) or dul:InformationRealization(s), dul:realizes is a subproperty of it.');


-- { _id: 5fdca08ecdbb4f1c41337a89 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (185, x'5FDCA08ECDBB4F1C41337A89', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#formallyRepresents', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between formal expressions, and anything that they are supposed to represent.\nE.g., ''the predicate ''MariachiInTijuana'' formallyRepresents the dul:Collection of all mariachis in Tijuana''; ''the equivalence relation ''<=>'' formallyRepresents the Concept of two entities having the same properties'', ''the constant ''John'' formallyRepresents the dul:NaturalPerson ''John''.\nNotice that a FormalExpression isAssignmentOf (is formally interpreted by) instances of dul:FormalEntity.\n\nformallyRepresents is a particular case of ''dul:isAbout'', holding only for formal expressions. \nAnyway, a formal expression that  dul:expresses a dul:SocialObject is also possible, but treats formal expressions as any other kind of dul:InformationObject that express a ''social'' or ''cognitive'' semantics, not a formal one.');


-- { _id: 5fdca08ecdbb4f1c41337aad }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (186, x'5FDCA08ECDBB4F1C41337AAD', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#hasFormalTerm', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between an InformationObject and a FormalExpression (constant, formula, term, sentence, proposition, axiom, etc.) that it is supposed to be given formal interpretation to formalize the InformationObject.\nNotice that FormalExpression(s) only are formal terms for InformationObject(s), not for Concept(s) or other for SocialObject(s). On their turn, information object can ''express'' (see) SocialObject(s).\nE.g., the predicate (FormalExpression) ''TijuanaMariachi'' isFormalTermFor the Term ''the mariachis in Tijuana'' (that expresses the Collection of all mariachis in Tijuana); the Term ''equivalence relation'' (that expresses the Concept of ''two entities having the same properties'') hasFormalTerm the ''<=>'' symbol.');


-- { _id: 5fdca08ecdbb4f1c41337ab9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (187, x'5FDCA08ECDBB4F1C41337AB9', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#hasGrounding', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A formal entity is grounded in some other entity when it is assumed as the (formal, extensional) interpretation of it, for example, the set Dog can be grounded in the collection of all actual dogs (or in some of them that the modeller intends).');


-- { _id: 5fdca08ecdbb4f1c41337acc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (188, x'5FDCA08ECDBB4F1C41337ACC', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#hasSchema', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between social objects and schemata that organize them. For example, a Tag hasSchema a Folksonomy, a Lexeme hasSchema a Lexicon, etc.');


-- { _id: 5fdca08ecdbb4f1c41337ad8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (189, x'5FDCA08ECDBB4F1C41337AD8', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isAssignedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between a FormalExpression, and an Entity (a FormalEntity in case of classes, relations, etc.) that it is supposed to be the reference of the symbol (FormalExpression) that the Entity is an intepretation of. \nIn other words, this is the ''formal interpretation'' function, by which a logician ''assigns'' an Entity to a FormalExpression.\nFor each type of formal expressions defined in a logical language, an assignment assumption should be indicated, for example, owl:Class should be restricted to: isAssignmentOf allValuesFrom Class. In addition, differently from the general relation formallyRepresents, isAssignmentOf is functional (and its inverse is inverse functional), in order to encode the Tarskian correspondence assumption.\nE.g., the Set of ''all mariachis in Tijuana'' isAssignedTo the predicate (FormalExpression) ''TijuanaMariachi'' (that isFormalTermFor a Term e.g. ''the mariachis in Tijuana'').');


-- { _id: 5fdca08ecdbb4f1c41337ae1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (190, x'5FDCA08ECDBB4F1C41337AE1', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isAssignmentOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between a FormalExpression, and an Entity (a FormalEntity in case of classes, relations, etc.) that it is supposed to be the reference of the symbol (FormalExpression) that the Entity is an intepretation of. \nIn other words, this property expresses the ''formal interpretation'' function, by which a logician ''assigns'' an Entity to a FormalExpression. \nFor each type of formal expressions defined in a logical language, an assignment assumption should be indicated, for example, owl:Class should be restricted to: isAssignmentOf allValuesFrom Class. In addition, differently from the general relation formallyRepresents, isAssignmentOf is functional (and its inverse is inverse functional), in order to encode the Tarskian correspondence assumption.\nE.g., the Set of ''all mariachis in Tijuana'' isAssignedTo the predicate (FormalExpression) ''TijuanaMariachi'' (that isFormalTermFor a Term e.g. ''the mariachis in Tijuana'').');


-- { _id: 5fdca08fcdbb4f1c41337af4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (191, x'5FDCA08FCDBB4F1C41337AF4', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isCopyOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The original information realization of some copy. Differently from reproductions, copies are not planned to have notable differences from the original. Master copies, author-signed paintings, etc. are examples of originals.');


-- { _id: 5fdca08fcdbb4f1c41337b0b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (192, x'5FDCA08FCDBB4F1C41337B0B', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isEncodedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation between two information entities, with the first used as an alternative encoding of the second. This encoding can preserve all or part of the informational structure. For example, an XML encoding of a plain text file, a digital scanning of a physical paper document, a reproduction of a painting, etc.\nThe encoding can be so precise and close to the medium of realization, that distinguishing the maximally encoded object from its realization is superfluous (as in many cases of computer science information entities). For this reason, the relation holds for either dul:InformationObject(s) or dul:InformationRealization(s).\nSince the relation holds for either dul:InformationObject(s) or dul:InformationRealization(s), dul:realizes is a subproperty of it.');


-- { _id: 5fdca08fcdbb4f1c41337b13 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (193, x'5FDCA08FCDBB4F1C41337B13', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isFormalTermFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between an InformationObject and a FormalExpression (constant, formula, term, sentence, proposition, axiom, etc.) that it is supposed to be given formal interpretation to formalize the InformationObject.\nNotice that FormalExpression(s) only are formal terms for InformationObject(s), not for Concept(s) or for other SocialObject(s). On their turn, information object can ''express'' (see) SocialObject(s).\nE.g., the predicate (FormalExpression) ''TijuanaMariachi'' isFormalTermFor the Term ''the mariachis in Tijuana'' (that expresses the Collection of all mariachis in Tijuana); the Term ''equivalence relation'' (that expresses the Concept of ''two entities having the same properties'') hasFormalTerm the ''<=>'' symbol.');


-- { _id: 5fdca08fcdbb4f1c41337b1d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (194, x'5FDCA08FCDBB4F1C41337B1D', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isFormallyRepresentedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between formal expressions, and anything that they are supposed to represent.\nE.g., ''the predicate ''MariachiInTijuana'' formallyRepresents the dul:Collection of all mariachis in Tijuana''; ''the equivalence relation ''<=>'' formallyRepresents the concept of two entities having the same properties'', ''the constant ''John'' formallyRepresents the dul:NaturalPerson John.\nNotice that formal expressions are formally interpreted by instances of dul:FormalEntity');


-- { _id: 5fdca08fcdbb4f1c41337b2e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (195, x'5FDCA08FCDBB4F1C41337B2E', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isLexicalizedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between linguistic objects and other information objects (including other linguistic objects).\nFor example, ''dog'' can lexicalize a picture of a dog, a linguistic description of a dog, or the logical class: ''Dog''.\nThis relation is a subPropertyOf encodes .\nIn case of FormalExpression(s), it is not the inverse of isFormalTermFor: formal expressions can be said to ''be formal terms'' for a LinguisticObject(s), while, independently, linguistic objects can be said to ''lexicalize'' formal expressions. The difference is mainly pragmatic: one can take e.g. the word Dog, and decide to have a logical class ''Dog'' for it. Someone else can see the logical class ''Dog'', and decide to lexicalize it with the words dog, chien, cane, etc. While the relation seems similar, the pragmatic of using them is very different.');


-- { _id: 5fdca08fcdbb4f1c41337b5d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (196, x'5FDCA08FCDBB4F1C41337B5D', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#isSchemaOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between social objects and schemata that organize them. For example, a Tag hasSchema a Folksonomy, a Lexeme hasSchema a Lexicon, etc.');


-- { _id: 5fdca08fcdbb4f1c41337b67 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (197, x'5FDCA08FCDBB4F1C41337B67', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#lexicalizes', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between linguistic objects and other information objects (including other linguistic objects).\nFor example, ''dog'' can lexicalize a picture of a dog, a linguistic description of a dog, or the logical class: ''Dog''.\nThis relation is a subPropertyOf encodes .\nIn case of FormalExpression(s), it is not the inverse of isFormalTermFor: formal expressions can be said to ''be formal terms'' for a LinguisticObject(s), while, independently, linguistic objects can be said to ''lexicalize'' formal expressions. The difference is mainly pragmatic: one can take e.g. the word Dog, and decide to have a logical class ''Dog'' for it. Someone else can see the logical class ''Dog'', and decide to lexicalize it with the words dog, chien, cane, etc. While the relation seems similar, the pragmatic of using them is very different.');


-- { _id: 5fdca08fcdbb4f1c41337b70 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (198, x'5FDCA08FCDBB4F1C41337B70', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#metaphoricallyBlendsWith', 'http://www.w3.org/2000/01/rdf-schema#comment', 'This property can be used to relate two social objects that are associated by means of a metaphorical blending, e.g. Greek and Aegyptian sphinges.');


-- { _id: 5fdca08fcdbb4f1c41337b7e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (199, x'5FDCA08FCDBB4F1C41337B7E', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#reuses', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any relation between information entities, where the first one reuses (includes, transforms, reengineers, etc.) the second one.');


-- { _id: 5fdca08fcdbb4f1c41337b99 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (200, x'5FDCA08FCDBB4F1C41337B99', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#BodilyMotion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization consisting of bodily movements.');


-- { _id: 5fdca08fcdbb4f1c41337ba2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (201, x'5FDCA08FCDBB4F1C41337BA2', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Code', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any piece of information expressing computational operations, objects, markup, etc.');


-- { _id: 5fdca08fcdbb4f1c41337bb0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (202, x'5FDCA08FCDBB4F1C41337BB0', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#CommunicativeFunction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The functions, e.g. defined by Jakobson and by Buhler, which define types of linguistic acts. Jakobson''s ones include referential, conative, expressive, phatic, metalinguistic, poetic. Each function has typical roles and tasks that must be played during a linguistic act that achieves the function.');


-- { _id: 5fdca08fcdbb4f1c41337bbf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (203, x'5FDCA08FCDBB4F1C41337BBF', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#ContractText', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The text of a contract');


-- { _id: 5fdca08fcdbb4f1c41337bc4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (204, x'5FDCA08FCDBB4F1C41337BC4', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#DBSchema', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any conceptual, logical or physical schema for a database.');


-- { _id: 5fdca08fcdbb4f1c41337bcf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (205, x'5FDCA08FCDBB4F1C41337BCF', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#DataStructure', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any data structure, including databases, schemas, lexica, knowledge organizations systems, etc.');


-- { _id: 5fdca08fcdbb4f1c41337bd7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (206, x'5FDCA08FCDBB4F1C41337BD7', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Datum', 'http://www.w3.org/2000/01/rdf-schema#comment', 'From WordNet: ''an item of factual information derived from measurement or research''');


-- { _id: 5fdca08fcdbb4f1c41337bdf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (207, x'5FDCA08FCDBB4F1C41337BDF', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Depiction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization consisting of depicted images/signs of any sort (e.g. graffiti, drawings, inscriptions, pictures, sculptures, etc.), which are inscripted on a medium that lasts longer than the depicting act.\nIt also includes any early form of inscripted iconic expression, which can be considered as original bodily expressions.');


-- { _id: 5fdca08fcdbb4f1c41337be9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (208, x'5FDCA08FCDBB4F1C41337BE9', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#DigitalResource', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any resource that can be computed, e.g. a file, a piece of (implemented) software. This assumes an encoding allowing the computation (e.g. html+http protocol).');


-- { _id: 5fdca08fcdbb4f1c41337bee }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (209, x'5FDCA08FCDBB4F1C41337BEE', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Drawing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: A representation of forms or objects on a surface by means of lines; "drawings of abstract forms"; "he did complicated pen-and-ink drawings like medieval miniatures"');


-- { _id: 5fdca08fcdbb4f1c41337c01 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (210, x'5FDCA08FCDBB4F1C41337C01', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#FormalExpression', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any information object represented in a FormalLanguage, usually having a formal interpretation by a dul:FormalEntity, and used to formally represent any Entity');


-- { _id: 5fdca08fcdbb4f1c41337c0e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (211, x'5FDCA08FCDBB4F1C41337C0E', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#FormalLanguage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A formal language, created by some human, with a fixed grammar, and usually with an explicit formal semantics (i.e. any FormalExpression that is a wff or a valid element of a FormalLanguage has an interpretation wrt to formal entities such as sets, categories, etc.).');


-- { _id: 5fdca08fcdbb4f1c41337c1b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (212, x'5FDCA08FCDBB4F1C41337C1B', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Grapheme', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A part of a word as it can be realized by Writing\nA spoken information realization can be ''about'' a grapheme (as in reading), but it does not ''realize'' it. Only Phoneme(s) are realized by spoken information (Voicing).\nBTW, since spoken realizations are a ''primary'' code of communication, the difference between direct and indirect spoken realizations (reading) should be considered relevant.\nA grapheme is not necessarily able to express a meaning (a dul:SocialObject), although it can in principle (e.g. ''a'' in English).');


-- { _id: 5fdca08fcdbb4f1c41337c25 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (213, x'5FDCA08FCDBB4F1C41337C25', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#GraphicArt', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: The arts of drawing or painting or printmaking');


-- { _id: 5fdca08fcdbb4f1c41337c2a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (214, x'5FDCA08FCDBB4F1C41337C2A', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#IconicLanguage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A language made up of graphical elements. It can be natural, artificial, and even formal.');


-- { _id: 5fdca08fcdbb4f1c41337c33 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (215, x'5FDCA08FCDBB4F1C41337C33', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#IconicObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information object represented in an IconicLanguage');


-- { _id: 5fdca08fcdbb4f1c41337c38 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (216, x'5FDCA08FCDBB4F1C41337C38', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#KOS', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Knowledge Organization Systems: thesauri, terminologies, classification schemes, subject hierarchies, etc.');


-- { _id: 5fdca08fcdbb4f1c41337c41 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (217, x'5FDCA08FCDBB4F1C41337C41', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Language', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A natural or artificial language, provided with an alphabet (or vocabulary) and combinatorial rules. In the case of natural languages, their components are ''temporary'' and ''reconstructed'' out of actual usage. For example, a grammar for a natural language has the status of a theory for that language, and alternative ones can exist (e.g. generative vs. construction grammars).\nAnother distinction, between the general (systemic) rules for a language, and the local (contextual) rules for e.g. a certain context, speaker, place, etc., can be made separately.\nThe most comprehensive classification of languages ha probably been made by Umberto Eco, based on the production modes of the ''signs'' that are represented in a certain language. It uses several semiotic dimensions, and will be modeled in a forthcoming ontology.');


-- { _id: 5fdca08fcdbb4f1c41337c59 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (218, x'5FDCA08FCDBB4F1C41337C59', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Lexeme', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Lexical entries for dictionaries, lexica, etc. They are used to create reference forms of words.');


-- { _id: 5fdca08fcdbb4f1c41337c5e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (219, x'5FDCA08FCDBB4F1C41337C5E', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Lexicon', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A collection of lexical items (terms, entries, ...) that are witnessed to have a linguistic relevance.');


-- { _id: 5fdca08fcdbb4f1c41337c83 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (220, x'5FDCA08FCDBB4F1C41337C83', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#LinguisticAct', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A communicative situation including linguistic objects, agents, and a set of contexts: physical (informational realizations), conceptual (social objects), and referential (entities).\nA linguistic act has an associated CommunicativeFunction that it satisfies.');


-- { _id: 5fdca08fcdbb4f1c41337c96 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (221, x'5FDCA08FCDBB4F1C41337C96', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#LinguisticFunction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any linguistic function that classifies words according to a LinguisticTheory. \nThis class includes parts of speech, thematic roles, phrase structure components, verbal aspects, etc. e.g. Subject, Object, Instrument, Stative, etc.\nEach linguistic function must be defined in a LinguisticTheory; e.g. a thematic role can be defined either in a generative grammar, or in construction-based theory.');


-- { _id: 5fdca08fcdbb4f1c41337c9f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (222, x'5FDCA08FCDBB4F1C41337C9F', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#LinguisticObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information object represented in a NaturalLanguage');


-- { _id: 5fdca08fcdbb4f1c41337cb0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (223, x'5FDCA08FCDBB4F1C41337CB0', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#LinguisticTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any theory describing the structure and/or production and understanding of a natural language or a set of natural languages, or a component of one or more natural languages.');


-- { _id: 5fdca08fcdbb4f1c41337cc0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (224, x'5FDCA08FCDBB4F1C41337CC0', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Morpheme', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A part of a word that can express a meaning, which is part of the meaning of the entire word.');


-- { _id: 5fdca08fcdbb4f1c41337ccc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (225, x'5FDCA08FCDBB4F1C41337CCC', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#MultimediaObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization that realizes heterogeneous information objects. Examples include audiovisual performances, web pages, etc.');


-- { _id: 5fdca08fcdbb4f1c41337cd9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (226, x'5FDCA08FCDBB4F1C41337CD9', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Multiword', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A LinguisticObject made up of more than one Word, but distinct from a Phrase, which is a higher syntactic unit.');


-- { _id: 5fdca08fcdbb4f1c41337ce9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (227, x'5FDCA08FCDBB4F1C41337CE9', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#NaturalLanguage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A natural language, evolved and used in a community across time.\nNatural languages components are ''temporary'' and ''reconstructed'' out of actual usage. For example, a grammar for a (part of a) natural language has the status of a theory for that language, but alternative ones can exist (e.g. generative vs. construction grammars).');


-- { _id: 5fdca08fcdbb4f1c41337cee }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (228, x'5FDCA08FCDBB4F1C41337CEE', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Painting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: Graphic art consisting of an artistic composition made by applying paints to a surface; "a small painting by Picasso"; "he bought the painting as an investment"; "his pictures hang in the Louvre"');


-- { _id: 5fdca08fcdbb4f1c41337cfa }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (229, x'5FDCA08FCDBB4F1C41337CFA', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Phoneme', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A part of a word as it can be realized by Voicing\nA written information realization can be ''about'' a phoneme (as in the case of transcription systems), but it does not ''realize'' it: only Grapheme(s) are realized by written information (Writing).\nA phoneme is not necessarily able to express a meaning (any dul:SocialObject), although it can in principle (e.g. ''a'' in English).');


-- { _id: 5fdca08fcdbb4f1c41337d07 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (230, x'5FDCA08FCDBB4F1C41337D07', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Phrase', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A composition of Word(s) that can be considered a higher syntactic unit than a Word, and dul:isComponentOf a Sentence');


-- { _id: 5fdca08fcdbb4f1c41337d12 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (231, x'5FDCA08FCDBB4F1C41337D12', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#PlasticArt', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: The arts of shaping or modeling; carving and sculpture');


-- { _id: 5fdca08fcdbb4f1c41337d19 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (232, x'5FDCA08FCDBB4F1C41337D19', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Sculpture', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: A three-dimensional work of plastic art');


-- { _id: 5fdca08fcdbb4f1c41337d2f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (233, x'5FDCA08FCDBB4F1C41337D2F', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Sentence', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A composition of Phrase(s), assumed to express a state of affairs (here modelled as a dul:Situation). Graphically, a period is usually considered its boundary.');


-- { _id: 5fdca08fcdbb4f1c41337d33 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (234, x'5FDCA08FCDBB4F1C41337D33', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Sound', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization consisting of sound waves.');


-- { _id: 5fdca090cdbb4f1c41337d3d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (235, x'5FDCA090CDBB4F1C41337D3D', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Speech', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Conventional sounds realizing explicit communication. Speech is a primary code of communication (primary means that is an original body expression, especially if first learnt).');


-- { _id: 5fdca090cdbb4f1c41337d47 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (236, x'5FDCA090CDBB4F1C41337D47', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Statue', 'http://www.w3.org/2000/01/rdf-schema#comment', 'wn noun: A sculpture representing a human or animal');


-- { _id: 5fdca090cdbb4f1c41337d5e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (237, x'5FDCA090CDBB4F1C41337D5E', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Term', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A word or multiword that is established in some terminology from a domain of discourse.');


-- { _id: 5fdca090cdbb4f1c41337d6b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (238, x'5FDCA090CDBB4F1C41337D6B', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Text', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A LinguisticObject composed of at least one Sentence, and assumed to be realized in written form.');


-- { _id: 5fdca090cdbb4f1c41337d78 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (239, x'5FDCA090CDBB4F1C41337D78', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Thesaurus', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A collection of categories organized according to a specified syntax, typically used to create a controlled terminology in a domain. A useful rdfs encoding of a typical thesaurus syntax is the SKOS schema.');


-- { _id: 5fdca090cdbb4f1c41337d81 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (240, x'5FDCA090CDBB4F1C41337D81', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Voicing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization consisting of uttered sounds. In natural agents, it always co-occurs with bodily movements.');


-- { _id: 5fdca090cdbb4f1c41337d96 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (241, x'5FDCA090CDBB4F1C41337D96', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Word', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A linguistic object consisting of a string (independently of its physical realization).\nIts topological unity can change according to its physical realization: as a written realization, its boundaries are blank spaces, as a spoken realization, sometimes is silence, sometimes not, and higher order features intervene.\nGrammatical notions, such as noun, verb, adjective, etc., are roles defined by a grammar, and words (or larger linguistic objects) can play those roles in a given language. E.g., the word ''share'' can play both ''verb'' and ''noun'' roles in contemporary English, while the word ''come'' can only play the ''verb'' role in English, and the ''adverb'' or ''conjunction'' roles in Italian (but if we consider a word as only realized by phonemes, i.e. if we consider the oral realizations of ''come'', there is no common word ''come'' in the two languages).');


-- { _id: 5fdca090cdbb4f1c41337da7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (242, x'5FDCA090CDBB4F1C41337DA7', 'http://www.ontologydesignpatterns.org/ont/dul/IOLite.owl#Writing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization based on conventional symbols.\nIt is a secondary code of communication (secondary means that it is about an original bodily expression, i.e. a primary code). Therefore, we are not considering here early forms of iconic expression, which could be considered primary.');


-- { _id: 5fdca090cdbb4f1c41337dae }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (243, x'5FDCA090CDBB4F1C41337DAE', 'http://www.ease-crc.org/ont/SOMA.owl', 'http://www.w3.org/2002/07/owl#versionInfo', 'current');


-- { _id: 5fdca090cdbb4f1c41337db4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (244, x'5FDCA090CDBB4F1C41337DB4', 'http://www.ease-crc.org/ont/SOMA.owl#definesBearer', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an affordance which is a relation between a bearer and a trigger, to the role of the bearer when the affordance is manifested.');


-- { _id: 5fdca090cdbb4f1c41337dba }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (245, x'5FDCA090CDBB4F1C41337DBA', 'http://www.ease-crc.org/ont/SOMA.owl#definesTrigger', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an affordance which is a relation between a bearer and a trigger, to the role of the trigger when the affordance is manifested.');


-- { _id: 5fdca090cdbb4f1c41337dbf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (246, x'5FDCA090CDBB4F1C41337DBF', 'http://www.ease-crc.org/ont/SOMA.owl#hasBinding', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Asserts that in a context described by Description, a Binding relation holds.');


-- { _id: 5fdca090cdbb4f1c41337dc9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (247, x'5FDCA090CDBB4F1C41337DC9', 'http://www.ease-crc.org/ont/SOMA.owl#hasBindingFiller', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Indicates that an Entity is described by a Binding, in that it is associated with the Role/Parameter that the Binding binds it to. The Binding is only valid in some descriptive context such as a Workflow or Narrative.\n\nNote, the filler can be a Role/Parameter as well, and there are two distinct interpretations, depending on whether the Binding is a RoleRoleBinding or a RoleFillerBinding. See the comments on Binding for more details.\n\nOnly RoleFillerBindings can have general Entities as fillers. RoleRoleBindings can only connect to Roles or Parameters via this property.');


-- { _id: 5fdca090cdbb4f1c41337dd6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (248, x'5FDCA090CDBB4F1C41337DD6', 'http://www.ease-crc.org/ont/SOMA.owl#hasBindingRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Indicates that a Role/Parameter is going to be associated to some filler, or other Role/Parameter, by a Binding. The Binding is only valid in some descriptive context such as a Narrative or Workflow.');


-- { _id: 5fdca090cdbb4f1c41337de6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (249, x'5FDCA090CDBB4F1C41337DE6', 'http://www.ease-crc.org/ont/SOMA.owl#affordsBearer', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the bearer role defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337df1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (250, x'5FDCA090CDBB4F1C41337DF1', 'http://www.ease-crc.org/ont/SOMA.owl#affordsTrigger', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the trigger role defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337e02 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (251, x'5FDCA090CDBB4F1C41337E02', 'http://www.ease-crc.org/ont/SOMA.owl#isProcessTypeOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between roles and process types, e.g. a catalysator is needed to trigger some chemical reaction.');


-- { _id: 5fdca090cdbb4f1c41337e10 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (252, x'5FDCA090CDBB4F1C41337E10', 'http://www.ease-crc.org/ont/SOMA.owl#isTriggerDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an affordance which is a relation between a bearer and a trigger, to the role of the trigger when the affordance is manifested.');


-- { _id: 5fdca090cdbb4f1c41337e2e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (253, x'5FDCA090CDBB4F1C41337E2E', 'http://www.ease-crc.org/ont/SOMA.owl#affordsSetpoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the setpoint parameter defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337e3b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (254, x'5FDCA090CDBB4F1C41337E3B', 'http://www.ease-crc.org/ont/SOMA.owl#hasPredecessor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Indicates that a Task is the predecessor in a Succedence Relation; that is, this is the task to execute first.');


-- { _id: 5fdca090cdbb4f1c41337e48 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (255, x'5FDCA090CDBB4F1C41337E48', 'http://www.ease-crc.org/ont/SOMA.owl#hasSuccessor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Indicates that a Task is the successor in a Succedence Relation: that is, it is the Task to execute last.');


-- { _id: 5fdca090cdbb4f1c41337e52 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (256, x'5FDCA090CDBB4F1C41337E52', 'http://www.ease-crc.org/ont/SOMA.owl#affordanceDefines', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an Affordance and a Concept (often an EventType).');


-- { _id: 5fdca090cdbb4f1c41337e6a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (257, x'5FDCA090CDBB4F1C41337E6A', 'http://www.ease-crc.org/ont/SOMA.owl#isTaskDefinedInAffordance', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a Task and an Affordance, such that the task is defined in terms of using the affordance.');


-- { _id: 5fdca090cdbb4f1c41337e7d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (258, x'5FDCA090CDBB4F1C41337E7D', 'http://www.ease-crc.org/ont/SOMA.owl#affordsConcept', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a disposition and a concept defined in the affordance that describes the disposition.');


-- { _id: 5fdca090cdbb4f1c41337e87 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (259, x'5FDCA090CDBB4F1C41337E87', 'http://www.ease-crc.org/ont/SOMA.owl#isBearerAffordedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the bearer role defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337e97 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (260, x'5FDCA090CDBB4F1C41337E97', 'http://www.ease-crc.org/ont/SOMA.owl#isConceptAffordedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between a disposition and a concept defined in the affordance that describes the disposition.');


-- { _id: 5fdca090cdbb4f1c41337ea7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (261, x'5FDCA090CDBB4F1C41337EA7', 'http://www.ease-crc.org/ont/SOMA.owl#isSetpointAffordedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the setpoint parameter defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337eb9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (262, x'5FDCA090CDBB4F1C41337EB9', 'http://www.ease-crc.org/ont/SOMA.owl#affordsTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the task defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337ec9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (263, x'5FDCA090CDBB4F1C41337EC9', 'http://www.ease-crc.org/ont/SOMA.owl#isTaskAffordedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the task defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337ed3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (264, x'5FDCA090CDBB4F1C41337ED3', 'http://www.ease-crc.org/ont/SOMA.owl#isTriggerAffordedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a disposition to the trigger role defined by the affordance describing the disposition.');


-- { _id: 5fdca090cdbb4f1c41337ee2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (265, x'5FDCA090CDBB4F1C41337EE2', 'http://www.ease-crc.org/ont/SOMA.owl#after', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema where one of the entities strictly ends before the other one.');


-- { _id: 5fdca090cdbb4f1c41337ee9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (266, x'5FDCA090CDBB4F1C41337EE9', 'http://www.ease-crc.org/ont/SOMA.owl#before', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema where one of the entities strictly ends before the other one.');


-- { _id: 5fdca090cdbb4f1c41337f02 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (267, x'5FDCA090CDBB4F1C41337F02', 'http://www.ease-crc.org/ont/SOMA.owl#coOccurs', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic relation between any events that also implies that one event is temporally contained in the other.\n\nSub-properties are used to distinct between different cases of event endpoint relations that hold for different types of co-occurance.');


-- { _id: 5fdca090cdbb4f1c41337f1c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (268, x'5FDCA090CDBB4F1C41337F1C', 'http://www.ease-crc.org/ont/SOMA.owl#containsEvent', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A contains event B` means that A strictly starts before, and ends after B, i.e. B is wholly contained in A.');


-- { _id: 5fdca090cdbb4f1c41337f2c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (269, x'5FDCA090CDBB4F1C41337F2C', 'http://www.ease-crc.org/ont/SOMA.owl#during', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A during B` means that B strictly starts before, and ends after A, i.e. A is wholly contained in B.');


-- { _id: 5fdca090cdbb4f1c41337f38 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (270, x'5FDCA090CDBB4F1C41337F38', 'http://www.ease-crc.org/ont/SOMA.owl#containsObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between a container, and objects it contains.');


-- { _id: 5fdca090cdbb4f1c41337f3f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (271, x'5FDCA090CDBB4F1C41337F3F', 'http://www.ease-crc.org/ont/SOMA.owl#isInsideOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between an object (the container), and objects it contains.');


-- { _id: 5fdca091cdbb4f1c41337f4f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (272, x'5FDCA091CDBB4F1C41337F4F', 'http://www.ease-crc.org/ont/SOMA.owl#isBearerDefinedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an affordance which is a relation between a bearer and a trigger, to the role of the bearer when the affordance is manifested.');


-- { _id: 5fdca091cdbb4f1c41337f63 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (273, x'5FDCA091CDBB4F1C41337F63', 'http://www.ease-crc.org/ont/SOMA.owl#definesInput', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The defined participant is an "input": \n\n- some object existing at the beginning of a Task''s execution, and that will be acted on during the execution of the task;\n- some region/value which informs the way in which the Task will be executed.');


-- { _id: 5fdca091cdbb4f1c41337f68 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (274, x'5FDCA091CDBB4F1C41337F68', 'http://www.ease-crc.org/ont/SOMA.owl#definesParticipant', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Description definesParticipant a Concept to classify participants in Events associated to that Description.\n\nThe prototypical example is a Task, which is a concept to classify Actions (a form of Event). A Task may define several Roles, with which to classify participants in the event of that Task''s execution.');


-- { _id: 5fdca091cdbb4f1c41337f7d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (275, x'5FDCA091CDBB4F1C41337F7D', 'http://www.ease-crc.org/ont/SOMA.owl#definesOutput', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Defines an "output" participant:\n\n- an Entity (Object or state of affairs) that exists as a result of the execution of a Task;\n- a Region/value that has been demarcated/computed as a result of the execution of a Task.');


-- { _id: 5fdca091cdbb4f1c41337fa4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (276, x'5FDCA091CDBB4F1C41337FA4', 'http://www.ease-crc.org/ont/SOMA.owl#finishedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A finishes B` means that A ends exactly where B ends, and that B strictly starts before A.  As in "I finish my day by taking a shower".');


-- { _id: 5fdca091cdbb4f1c41337fab }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (277, x'5FDCA091CDBB4F1C41337FAB', 'http://www.ease-crc.org/ont/SOMA.owl#finishes', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A finishes B` means that A ends exactly where B ends, and that B strictly starts before A.  As in "I finish my day by taking a shower".');


-- { _id: 5fdca091cdbb4f1c41337fc2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (278, x'5FDCA091CDBB4F1C41337FC2', 'http://www.ease-crc.org/ont/SOMA.owl#hasAlterationResult', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an action that alters an object to the region that the alteration reached during the action.');


-- { _id: 5fdca091cdbb4f1c41337fc7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (279, x'5FDCA091CDBB4F1C41337FC7', 'http://www.ease-crc.org/ont/SOMA.owl#isAlterationResultOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Realtes an action that alters an object to the region that the alteration reached during the action.');


-- { _id: 5fdca091cdbb4f1c41337fe4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (280, x'5FDCA091CDBB4F1C41337FE4', 'http://www.ease-crc.org/ont/SOMA.owl#hasDesign', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates an object to the design according to which it was constructed.');


-- { _id: 5fdca091cdbb4f1c41337fec }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (281, x'5FDCA091CDBB4F1C41337FEC', 'http://www.ease-crc.org/ont/SOMA.owl#isDesignOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a design to an object that was constructed according to it.');


-- { _id: 5fdca091cdbb4f1c4133800e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (282, x'5FDCA091CDBB4F1C4133800E', 'http://www.ease-crc.org/ont/SOMA.owl#hasFrictionAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between physical objects and their friction attribute.');


-- { _id: 5fdca091cdbb4f1c41338043 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (283, x'5FDCA091CDBB4F1C41338043', 'http://www.ease-crc.org/ont/SOMA.owl#isLocalizationOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a localization quality to the object the localization belongs to.');


-- { _id: 5fdca091cdbb4f1c4133807f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (284, x'5FDCA091CDBB4F1C4133807F', 'http://www.ease-crc.org/ont/SOMA.owl#hasProcessType', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between roles and process types, e.g. a catalysator is needed to trigger some chemical reaction.');


-- { _id: 5fdca091cdbb4f1c41338087 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (285, x'5FDCA091CDBB4F1C41338087', 'http://www.ease-crc.org/ont/SOMA.owl#hasQuale', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a quality to its "value", called quale, which is an atomic quality region.');


-- { _id: 5fdca091cdbb4f1c4133808d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (286, x'5FDCA091CDBB4F1C4133808D', 'http://www.ease-crc.org/ont/SOMA.owl#isQualeOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a quality to its "value", called quale, which is an atomic quality region.');


-- { _id: 5fdca091cdbb4f1c413380cf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (287, x'5FDCA091CDBB4F1C413380CF', 'http://www.ease-crc.org/ont/SOMA.owl#hasTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation to indicate that a Task is part of a Workflow or ordering Relation: that is, the task may be executed during the execution of the Workflow, or there exists some Relation between the Tasks that informs how their executions are to be located in time.');


-- { _id: 5fdca091cdbb4f1c413380f4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (288, x'5FDCA091CDBB4F1C413380F4', 'http://www.ease-crc.org/ont/SOMA.owl#involvesArtifact', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Artifact participation.');


-- { _id: 5fdca091cdbb4f1c413380f9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (289, x'5FDCA091CDBB4F1C413380F9', 'http://www.ease-crc.org/ont/SOMA.owl#isArtifactInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Artifact participation.');


-- { _id: 5fdca091cdbb4f1c41338103 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (290, x'5FDCA091CDBB4F1C41338103', 'http://www.ease-crc.org/ont/SOMA.owl#involvesEffector', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Effector participation.');


-- { _id: 5fdca091cdbb4f1c41338108 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (291, x'5FDCA091CDBB4F1C41338108', 'http://www.ease-crc.org/ont/SOMA.owl#isEffectorInvolvedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Effector participation.');


-- { _id: 5fdca091cdbb4f1c41338115 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (292, x'5FDCA091CDBB4F1C41338115', 'http://www.ease-crc.org/ont/SOMA.owl#isDepositOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between an object (the deposit), and objects that are located ontop of it.');


-- { _id: 5fdca091cdbb4f1c4133811b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (293, x'5FDCA091CDBB4F1C4133811B', 'http://www.ease-crc.org/ont/SOMA.owl#isOntopOf', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between an object (the deposit), and objects that are located ontop of it.');


-- { _id: 5fdca091cdbb4f1c41338124 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (294, x'5FDCA091CDBB4F1C41338124', 'http://www.ease-crc.org/ont/SOMA.owl#isLinkedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between objects that are linked with each other such that they resist spatial separation.');


-- { _id: 5fdca092cdbb4f1c4133812b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (295, x'5FDCA092CDBB4F1C4133812B', 'http://www.ease-crc.org/ont/SOMA.owl#isMovedByAgent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation from an object to an agent who causes it to move.');


-- { _id: 5fdca092cdbb4f1c41338132 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (296, x'5FDCA092CDBB4F1C41338132', 'http://www.ease-crc.org/ont/SOMA.owl#movesObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation from an agent to an object that the agent causes to move.');


-- { _id: 5fdca092cdbb4f1c41338139 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (297, x'5FDCA092CDBB4F1C41338139', 'http://www.ease-crc.org/ont/SOMA.owl#isPhysicallyContainedIn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A spatial relation holding between an object (the container), and objects it contains.');


-- { _id: 5fdca092cdbb4f1c41338140 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (298, x'5FDCA092CDBB4F1C41338140', 'http://www.ease-crc.org/ont/SOMA.owl#isPlanFor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A special relation between a Plan and a Task, to indicate that the Plan describes a way to achieve the Task.');


-- { _id: 5fdca092cdbb4f1c41338141 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (299, x'5FDCA092CDBB4F1C41338141', 'http://www.ease-crc.org/ont/SOMA.owl#isPlanFor', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'Note that DUL already says Plans can define Tasks, but that relation is used differently: a Plan defines a Task because it contains it as a step.');


-- { _id: 5fdca092cdbb4f1c41338149 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (300, x'5FDCA092CDBB4F1C41338149', 'http://www.ease-crc.org/ont/SOMA.owl#isSupportedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object (the supporter) and another object (the supportee) where the supporter cancels the effect of gravity on the supportee.');


-- { _id: 5fdca092cdbb4f1c4133814a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (301, x'5FDCA092CDBB4F1C4133814A', 'http://www.ease-crc.org/ont/SOMA.owl#isSupportedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a supportee to one of its supporters.');


-- { _id: 5fdca092cdbb4f1c41338153 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (302, x'5FDCA092CDBB4F1C41338153', 'http://www.ease-crc.org/ont/SOMA.owl#supports', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object (the supporter) and another object (the supportee) where the supporter cancels the effect of gravity on the supportee.');


-- { _id: 5fdca092cdbb4f1c41338154 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (303, x'5FDCA092CDBB4F1C41338154', 'http://www.ease-crc.org/ont/SOMA.owl#supports', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a supportee to one of its supporters.');


-- { _id: 5fdca092cdbb4f1c4133815c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (304, x'5FDCA092CDBB4F1C4133815C', 'http://www.ease-crc.org/ont/SOMA.owl#simultaneous', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A simultaneous B` means that A strictly starts and ends at the same time instant as B, i.e. their temporal extend is equal.');


-- { _id: 5fdca092cdbb4f1c41338168 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (305, x'5FDCA092CDBB4F1C41338168', 'http://www.ease-crc.org/ont/SOMA.owl#startedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A starts B` means that A starts exactly where B starts, and that A strictly ends before B. As in "I start my day with a coffee".');


-- { _id: 5fdca092cdbb4f1c4133816f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (306, x'5FDCA092CDBB4F1C4133816F', 'http://www.ease-crc.org/ont/SOMA.owl#starts', 'http://www.w3.org/2000/01/rdf-schema#comment', '`A starts B` means that A starts exactly where B starts, and that A strictly ends before B. As in "I start my day with a coffee".');


-- { _id: 5fdca092cdbb4f1c413381a2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (307, x'5FDCA092CDBB4F1C413381A2', 'http://www.ease-crc.org/ont/SOMA.owl#hasFrictionValue', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The coefficient of friction denotes the ratio of friction force between touching objects. The coefficient is dimensionless.');


-- { _id: 5fdca092cdbb4f1c41338209 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (308, x'5FDCA092CDBB4F1C41338209', 'http://www.ease-crc.org/ont/SOMA.owl#UsageGuideline', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Provides a definition, or usage guideline, aimed at a particular community of the ontology''s users. The community is identified by the subproperty of UsageGuideline.\n\nA style recommendation for usage guidelines is that they should be brief. In contrast to usual concept annotations that can, and should be detailed about the reasons behind modelling decisions, usage guidelines are simply meant to answer questions about when it is appropriate to use a concept, and they must be a practical, easy to query and understand resource.');


-- { _id: 5fdca092cdbb4f1c41338214 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (309, x'5FDCA092CDBB4F1C41338214', 'http://www.ease-crc.org/ont/SOMA.owl#nickname', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Similar to rdfs:label, but without GUI or reasoner impact in Protege; avoiding Protege problems is why this is not a label subproperty. Nicknames are used by particular software working with the ontology as a way to give community-specific names to concepts. Communities are identified by the subproperty of nickname.');


-- { _id: 5fdca092cdbb4f1c4133822f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (310, x'5FDCA092CDBB4F1C4133822F', 'http://www.ease-crc.org/ont/SOMA.owl#6DPose', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A point in three dimensional space, given as translation, and its orientation.');


-- { _id: 5fdca092cdbb4f1c41338235 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (311, x'5FDCA092CDBB4F1C41338235', 'http://www.ease-crc.org/ont/SOMA.owl#AbductiveReasoning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A task in which the Agent proceeds from some set of statements about a world, and attempts to obtain an explanation for these statements. This explanation is often an inferred cause, such as a final cause or intention. Further, it is often required that there be some guarantees that the explanation produced by AbductiveReasoning have some desirable property, such as being the simplest or most likely given the set of statements to explain.');


-- { _id: 5fdca092cdbb4f1c41338239 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (312, x'5FDCA092CDBB4F1C41338239', 'http://www.ease-crc.org/ont/SOMA.owl#Reasoning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which an Agent endeavours to obtain new knowledge from knowledge it already possesses.');


-- { _id: 5fdca092cdbb4f1c4133823a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (313, x'5FDCA092CDBB4F1C4133823A', 'http://www.ease-crc.org/ont/SOMA.owl#Reasoning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo: a taxonomy of reasoning is not trivial. Classical theory distinguishes Deductive, Inductive, and with a stretch Abductive reasoning. However, modern practice distinguishes other categories that overlap with these, e.g. Probabilistic and Non-monotonic.\n\nBoth Abductive and Inductive inference may, and often do, use Probabilistic methods. Probabilistic inference is, by its nature, most opposed to Deductive inference which, classically, requires logical certainty.\n\nAny of the Abductive/Deductive/Inductive triad can be further affected by the Monotone/Non-monotone distinction. There are preferences (Inductive and Abductive reasoning is probably most often non-monotonic; most of Deductive reasoning is probably done in monotonic formalisms), but it is certainly the case that, e.g., non-monotone Deduction is possible.\n\nNote, this classification has nothing to do with reasoning domain (e.g. SpatialReasoning, TemporalReasoning, ...) and merely with techniques/logical-mathematical underpinnings.');


-- { _id: 5fdca092cdbb4f1c41338242 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (314, x'5FDCA092CDBB4F1C41338242', 'http://www.ease-crc.org/ont/SOMA.owl#Accident', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An Event for which causes are unknown and/or considered irrelevant. This is true also for "final causes" (that is, intentions) of Agents participating in the Accident: it is not the intentions of these Agents to bring about the Accident.\n\nNote a distinction between this definition and some informal, everyday uses of "accident" which require a causal structure and responsibility to be ascertained. An accident, in the informal sense, may require an explanation as to who made a mistake in bringing about the event; a "traffic accident", where we want to know who''s responsible, is an example of this.\n\nSuch an event does NOT fall under the definition of Accident here. An example of Accident would be a fair coin landing Heads: the causal chain for why this exact face landed is not important, all that matters is the brute fact that the coin landed Heads.');


-- { _id: 5fdca092cdbb4f1c41338243 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (315, x'5FDCA092CDBB4F1C41338243', 'http://www.ease-crc.org/ont/SOMA.owl#Accident', 'http://www.w3.org/2000/01/rdf-schema#comment', 'also think about "mistakes": (Mihai:) yes, but consider whether those might qualify as Situations. Likewise for Accidents, actually.');


-- { _id: 5fdca092cdbb4f1c41338251 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (316, x'5FDCA092CDBB4F1C41338251', 'http://www.ease-crc.org/ont/SOMA.owl#ActionExecutionPlan', 'http://www.w3.org/2000/01/rdf-schema#comment', 'idea: steps in workflows assert that they are defined by action execution plans.');


-- { _id: 5fdca092cdbb4f1c41338252 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (317, x'5FDCA092CDBB4F1C41338252', 'http://www.ease-crc.org/ont/SOMA.owl#ActionExecutionPlan', 'http://www.w3.org/2000/01/rdf-schema#comment', 'links role and parameter fillers to e.g. slots in a data structure');


-- { _id: 5fdca092cdbb4f1c4133825a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (318, x'5FDCA092CDBB4F1C4133825A', 'http://www.ease-crc.org/ont/SOMA.owl#Actuating', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Tasks where the goal is to move an object.\n\nUsually, an agent will use their prehensile effectors, ie. hands, for this purpose, so there is a lot of conceptual overlap between Actuating and Manipulating.\n\nHowever, these categories are nonetheless distinguished in that there are more ways to actuate objects than simply manipulating them; for example, some tool like a net or frying pan might be used to catch an object.\n\nAnother way to look at the difference between Actuating and Manipulating is in what they "profile", ie. focus on as important.\n\nFor Actuating, it is the object''s motion that is paramount.\n\nFor Manipulating, it is the movement of the hand(s) and the change in functional relationships (such as kinematic control) between the hand(s) and the manipulated object(s).');


-- { _id: 5fdca092cdbb4f1c4133825b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (319, x'5FDCA092CDBB4F1C4133825B', 'http://www.ease-crc.org/ont/SOMA.owl#Actuating', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo: think about use of tools. force events are generated between artifacts then. also not only the tool would be the ''salient artifact'' here.');


-- { _id: 5fdca092cdbb4f1c41338288 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (320, x'5FDCA092CDBB4F1C41338288', 'http://www.ease-crc.org/ont/SOMA.owl#AestheticDesign', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A design that describes an aesthetic quality of an object.\n\nAesthetics is the philosophical study of beauty and taste. The term stems from the Greek word ''aisthetikos'', meaning ''of sense perception'', and is related to the study of sensory values. From design point of view, aesthetics refers to the visual attractiveness of an object. Visual aesthetics have these key elements: Color, Shape, Pattern, Line, Texture, Visual weight, Balance, Scale, Proximity and Movement.');


-- { _id: 5fdca092cdbb4f1c413382a2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (321, x'5FDCA092CDBB4F1C413382A2', 'http://www.ease-crc.org/ont/SOMA.owl#Affordance', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between an object (the bearer) and others (the triggers) that describes the disposition of the bearer to be involved in an action execution that also involves some trigger object.');


-- { _id: 5fdca093cdbb4f1c413382e5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (322, x'5FDCA093CDBB4F1C413382E5', 'http://www.ease-crc.org/ont/SOMA.owl#Disposition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The tendency of an object (the bearer) to be used to perform certain tasks with others (the triggers).');


-- { _id: 5fdca093cdbb4f1c413382e6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (323, x'5FDCA093CDBB4F1C413382E6', 'http://www.ease-crc.org/ont/SOMA.owl#Disposition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'extrinsic');


-- { _id: 5fdca093cdbb4f1c413382f1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (324, x'5FDCA093CDBB4F1C413382F1', 'http://www.ease-crc.org/ont/SOMA.owl#AgentRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role employed in ExecutableSchemas that is filled by the main driver in carrying out the executable schema. \n\nWithin frame semantics, various frames related to perception might define an Experiencer role; we will treat such Experiencer roles also as instances of our AgentRole.\n\nThe entity playing an AgentRole is endowed with sentience and the capacity to deliberately choose actions in pursuit of goals. This distinguishes Agents from Causes, another role that appears in frame semantics as the participant in a situation that brings the situation about.');


-- { _id: 5fdca093cdbb4f1c413382f4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (325, x'5FDCA093CDBB4F1C413382F4', 'http://www.ease-crc.org/ont/SOMA.owl#Agonist', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role that classifies entities with a tendency to either cause an alteration or to preserve some state.');


-- { _id: 5fdca093cdbb4f1c413382f9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (326, x'5FDCA093CDBB4F1C413382F9', 'http://www.ease-crc.org/ont/SOMA.owl#Alteration', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which an aspect of some object changes such as ice cream melting in the sun.');


-- { _id: 5fdca093cdbb4f1c41338316 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (327, x'5FDCA093CDBB4F1C41338316', 'http://www.ease-crc.org/ont/SOMA.owl#AlterativeInteraction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A force interaction where the agonist has the tendency to set another object into motion. An example is ''opening a door'' where some object interacts with the door such that it moves out of its frame.');


-- { _id: 5fdca093cdbb4f1c41338332 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (328, x'5FDCA093CDBB4F1C41338332', 'http://www.ease-crc.org/ont/SOMA.owl#ForceInteraction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Classifies events in which two entities interact with each other with a reference to force. One of the entities, the agonist, has a tendency to either set the other entity (the antagonist) into motion, or to keep it still under the influence of some other force. The tendency only manifests in case the agonist is the "stronger entity".');


-- { _id: 5fdca093cdbb4f1c41338333 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (329, x'5FDCA093CDBB4F1C41338333', 'http://www.ease-crc.org/ont/SOMA.owl#ForceInteraction', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'Talmy, Leonard (1981) ‘Force Dynamics’. Language and Mental Imagery. May 1981, University of California, Berkeley.');


-- { _id: 5fdca093cdbb4f1c41338336 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (330, x'5FDCA093CDBB4F1C41338336', 'http://www.ease-crc.org/ont/SOMA.owl#PreservativeInteraction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A force interaction where the agonist has a tendency to keep another object still. An example is ''holding a door closed'' where some object interacts with the door to neutralize forces that could set the door into motion.');


-- { _id: 5fdca093cdbb4f1c41338342 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (331, x'5FDCA093CDBB4F1C41338342', 'http://www.ease-crc.org/ont/SOMA.owl#DexterityDiagnosis', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of the dexterity of a system, possibly in comparison to another system.');


-- { _id: 5fdca093cdbb4f1c4133834d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (332, x'5FDCA093CDBB4F1C4133834D', 'http://www.ease-crc.org/ont/SOMA.owl#Antagonist', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role that classifies entities that are opposed to the tendency of some agonist.');


-- { _id: 5fdca093cdbb4f1c41338350 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (333, x'5FDCA093CDBB4F1C41338350', 'http://www.ease-crc.org/ont/SOMA.owl#Appliance', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A device designed to perform a specific task, and that can be operated in some way.');


-- { _id: 5fdca093cdbb4f1c4133835e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (334, x'5FDCA093CDBB4F1C4133835E', 'http://www.ease-crc.org/ont/SOMA.owl#Locomotion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Conceptually related to Navigation, but distinguishable from it because of the profile, ie. the focus of the task.\n\nNavigation is about reaching some goal.\n\nLocomotion is concerned more with the actual motion.');


-- { _id: 5fdca093cdbb4f1c4133835f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (335, x'5FDCA093CDBB4F1C4133835F', 'http://www.ease-crc.org/ont/SOMA.owl#Locomotion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The Agent repositions their body in the environment.');


-- { _id: 5fdca093cdbb4f1c4133839e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (336, x'5FDCA093CDBB4F1C4133839E', 'http://www.ease-crc.org/ont/SOMA.owl#Dish', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Some object prepared with the intention that it will be eaten. Its preparation often follows a particular kind of Design, called Recipe.');


-- { _id: 5fdca093cdbb4f1c4133839f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (337, x'5FDCA093CDBB4F1C4133839F', 'http://www.ease-crc.org/ont/SOMA.owl#Dish', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'It is sometimes usual to refer to the procedure of preparing a Dish as a recipe. We argue there should be a distinction between a recipe as such, listing ingredients and amounts, vs. a preparation workflow that describes the necessary steps to create a Dish.');


-- { _id: 5fdca093cdbb4f1c413383a5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (338, x'5FDCA093CDBB4F1C413383A5', 'http://www.ease-crc.org/ont/SOMA.owl#Barrier', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object used to prevent others from entering or leaving a restricted space or group.');


-- { _id: 5fdca093cdbb4f1c413383e6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (339, x'5FDCA093CDBB4F1C413383E6', 'http://www.ease-crc.org/ont/SOMA.owl#Binding', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Relation between Roles/Parameters and their fillers that holds in a particular descriptive context, such as a Workflow or Narrative.\n\nIt covers two conceptually related, but somewhat ontologically distinct situations:\n\n-- a binding between two Roles, or two Parameters, with the meaning that in the particular descriptive context where the Binding holds, a filler for one Role/Parameter is also a filler for the other\n-- a binding between a Role/Parameter and an Entity able to fill that Role/Parameter, with the meaning that in the particular descriptive context where the Binding holds, the Entity fills the Role/Parameter.\n\nNote: in the second case, the Entity filling the Role/Parameter may be a Role or Parameter itself. This however does NOT reduce to the first case. Consider these examples:\n\n-- (first situation) The accountant is also the lawyer. In this case, there are two roles, and there is a person filling both of them. This is a factual, role-role binding.\n-- (second situation, linking to a generic Entity) The accountant is Bob. In this case, there is a factual, role-filler binding asserting who fills the accountant role.\n-- (second situation, linking to a role) The newly opened job is accountant. In this case, there is a factual, role-filler binding asserting that some role is filled by another, without making any assertion about the filler of this second role. It is not known, and not important, whether an accountant exists at this time.\n\nThere is a further, orthogonal distinction made between:\n-- factual: the Binding is asserted to hold in the descriptive context\n-- counterfactual: the Binding is used to express conditions in the descriptive context. A counterfactual Binding is not meant as an assertion that the Binding actually holds.');


-- { _id: 5fdca093cdbb4f1c413383ee }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (340, x'5FDCA093CDBB4F1C413383EE', 'http://www.ease-crc.org/ont/SOMA.owl#CounterfactualBinding', 'http://www.w3.org/2000/01/rdf-schema#comment', 'CounterfactualBindings are used to express conditions:\n\n-- that two roles share a filler (RoleRoleBindings);\n-- that the filler of a role is a particular entity (RoleFillerBindings). This is typically the case when the filler of the role may be one of a few constants, as is the case with the execution status of a robot task.\n\nTODO: for the robot workflows we are likely to need at the start, testing equality of fillers is enough. In the future, we may want to replace that with unifiability of fillers.');


-- { _id: 5fdca093cdbb4f1c413383f1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (341, x'5FDCA093CDBB4F1C413383F1', 'http://www.ease-crc.org/ont/SOMA.owl#FactualBinding', 'http://www.w3.org/2000/01/rdf-schema#comment', 'FactualBindings are used in a workflow to assert that:\n\n-- task- or workflow-defined roles share fillers (RoleRoleBindings). Example, the instrument of a cutting task may be the actee of a grasping task;\n-- task- or workflow-defined roles are filled by a particular entity (RoleFillerBindings). This is typically the case when roles, and especially parameters, can be assigned to constants. Example, the waiting time to cook soft eggs is 3 minutes.');


-- { _id: 5fdca093cdbb4f1c41338410 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (342, x'5FDCA093CDBB4F1C41338410', 'http://www.ease-crc.org/ont/SOMA.owl#Blade', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A flat cutting edge of an object used to cut through other objects, such as the blade of a ventilator cutting through the air.');


-- { _id: 5fdca094cdbb4f1c41338428 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (343, x'5FDCA094CDBB4F1C41338428', 'http://www.ease-crc.org/ont/SOMA.owl#Blockage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the barrier) to prevent others from accessing, leaving, or seeing a restricted space, or group.');


-- { _id: 5fdca094cdbb4f1c4133845a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (344, x'5FDCA094CDBB4F1C4133845A', 'http://www.ease-crc.org/ont/SOMA.owl#BodyMovement', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Motion described in terms of how parts of an Agent''s body move.\n\nAs such, this concept can be applied only to motions involving some PhysicalAgent, or body parts of a PhysicalAgent.');


-- { _id: 5fdca094cdbb4f1c4133845e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (345, x'5FDCA094CDBB4F1C4133845E', 'http://www.ease-crc.org/ont/SOMA.owl#Motion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An EventType that classifies motion Processes.');


-- { _id: 5fdca094cdbb4f1c4133845f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (346, x'5FDCA094CDBB4F1C4133845F', 'http://www.ease-crc.org/ont/SOMA.owl#Motion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Motion type');


-- { _id: 5fdca094cdbb4f1c41338462 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (347, x'5FDCA094CDBB4F1C41338462', 'http://www.ease-crc.org/ont/SOMA.owl#Boiling', 'http://www.w3.org/2000/01/rdf-schema#comment', 'In each instance of this collection some liquid matter is raised to its boilingPoint and is thereby changed from being in the Liquid-StateOfMatter to being in the Gaseous-StateOfMatter.');


-- { _id: 5fdca094cdbb4f1c4133847c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (348, x'5FDCA094CDBB4F1C4133847C', 'http://www.ease-crc.org/ont/SOMA.owl#Vaporizing', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'Some material transitions from a liquid to a gaseous phase.');


-- { _id: 5fdca094cdbb4f1c4133847d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (349, x'5FDCA094CDBB4F1C4133847D', 'http://www.ease-crc.org/ont/SOMA.owl#Vaporizing', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'Transitions from a solid to a gaseous phase are usually referred to as Sublimation.');


-- { _id: 5fdca094cdbb4f1c413384ae }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (350, x'5FDCA094CDBB4F1C413384AE', 'http://www.ease-crc.org/ont/SOMA.owl#Insertion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the container) to contain other objects that can be inserted into the container through a portal.');


-- { _id: 5fdca094cdbb4f1c413384bf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (351, x'5FDCA094CDBB4F1C413384BF', 'http://www.ease-crc.org/ont/SOMA.owl#DesignedContainer', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An item designed to be able to hold some other items, preventing their free movement and/or protecting them from outside influence. Containers may be used for storage, or to obtain control over items that are otherwise hard to manipulate directly (e.g. liquids).');


-- { _id: 5fdca094cdbb4f1c413384ec }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (352, x'5FDCA094CDBB4F1C413384EC', 'http://www.ease-crc.org/ont/SOMA.owl#Crockery', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object designed to contain food to store, cook, eat, or serve it.');


-- { _id: 5fdca094cdbb4f1c41338506 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (353, x'5FDCA094CDBB4F1C41338506', 'http://www.ease-crc.org/ont/SOMA.owl#BoxShape', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A symmetrical shape, either solid or hollow, contained by six rectangles.');


-- { _id: 5fdca094cdbb4f1c41338510 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (354, x'5FDCA094CDBB4F1C41338510', 'http://www.ease-crc.org/ont/SOMA.owl#Bread', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo(DB): this seems too specific. Should it go to a more specific ontology? like "SOMA-kitchen"?');


-- { _id: 5fdca094cdbb4f1c4133851a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (355, x'5FDCA094CDBB4F1C4133851A', 'http://www.ease-crc.org/ont/SOMA.owl#Intrinsic', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A physical quality that is independent of context.');


-- { _id: 5fdca094cdbb4f1c4133851b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (356, x'5FDCA094CDBB4F1C4133851B', 'http://www.ease-crc.org/ont/SOMA.owl#Intrinsic', 'http://www.w3.org/2000/01/rdf-schema#comment', 'intrinsic');


-- { _id: 5fdca094cdbb4f1c41338531 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (357, x'5FDCA094CDBB4F1C41338531', 'http://www.ease-crc.org/ont/SOMA.owl#CausalProcessRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role filled by a description of some action or process that brings about a motion.\n\nAs an example, consider the utterance "the tennisman served the ball by hitting it with the racket." In this utterance, the filler of the CausalProcessRole is expressed by the "by hitting it with the racket" constituent.');


-- { _id: 5fdca094cdbb4f1c4133853a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (358, x'5FDCA094CDBB4F1C4133853A', 'http://www.ease-crc.org/ont/SOMA.owl#ExecutableSchematicTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Also known as "executing schemas" or "x-schemas", these were defined by Bergen and Chang in their work "Embodied Construction Grammar in Simulation-Based Language Understanding" as:\n\n"Executing schemas, or x-schemas, are dynamic representations motivated in part by motor and perceptual systems (Bailey 1997; Narayanan 1997), on the assumption that the same underlying representations used for executing and perceiving an action are brought to bear in understanding language about that action. The x-schema formalism is an extension of Petri nets (Murata 1989) that can model sequential, concurrent, and\nasynchronous events"\n\nSOMA does not restrict the formalism of ExecutableSchematicTheories; i.e. they don''t have to be Petri Nets.\n\nThey maintain their role however as representations able to drive a simulation, at some level of abstraction, of an embodied action. This level of abstraction may be still fairly underspecified as in the case of the original x-schemas and as such not a plan that an agent could run in an actual physical environment without further information.');


-- { _id: 5fdca094cdbb4f1c41338558 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (359, x'5FDCA094CDBB4F1C41338558', 'http://www.ease-crc.org/ont/SOMA.owl#CausedMotionTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory describing a situation in which an agent performs an action which causes an object to move along a certain path. A popular example being "He sneezed the napkin off the table." (Goldberg 1995)\n\nLet xA, xP be objects filling the agent, patient roles of this schema. Then one can infer that xA movesObject xP.');


-- { _id: 5fdca094cdbb4f1c4133856b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (360, x'5FDCA094CDBB4F1C4133856B', 'http://www.ease-crc.org/ont/SOMA.owl#SourcePathGoalTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A very general image-schema of the Path family, this schema describes movement along a path from a source towards a goal.\n\nNote: in cognitive linguistics literature, the roles of this schema are Source, Path, Goal. However, to avoid overloading some other terminology in SOMA, we renamed Source to Origin and Goal to Destination.\n\nAs yet, this schema is not associated to any object property.');


-- { _id: 5fdca094cdbb4f1c4133856e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (361, x'5FDCA094CDBB4F1C4133856E', 'http://www.ease-crc.org/ont/SOMA.owl#ImageSchemaTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A theory that describes an image-schematic relationship between some entities.\n\nImage schemas are considered as fundamental, pre-conceptual, building blocks of cognition. They were introduced to characterize how human beings are believed to organize and make sense of experience.\n\nFor SOMA, whereas the focus of executable schematic theories is to describe how an agent might act, image schematic theories focus on descriptions of how objects behave in the absence of, or after, an active intervention from an agent.');


-- { _id: 5fdca094cdbb4f1c4133857f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (362, x'5FDCA094CDBB4F1C4133857F', 'http://www.ease-crc.org/ont/SOMA.owl#ChemicalProcess', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which the chemical constituency of an Entity or set of Entities changes.\n\nIn some sense any process that results in entities being created or destroyed might trivially fit here, however this concept is intended specifically for Events where the occuring chemical reactions are of importance.');


-- { _id: 5fdca095cdbb4f1c41338596 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (363, x'5FDCA095CDBB4F1C41338596', 'http://www.ease-crc.org/ont/SOMA.owl#CylinderShape', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A solid geometrical figure with straight parallel sides and a circular or oval cross section.');


-- { _id: 5fdca095cdbb4f1c413385af }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (364, x'5FDCA095CDBB4F1C413385AF', 'http://www.ease-crc.org/ont/SOMA.owl#SocialQuality', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any aspect of an entity that specifies social characteristics.');


-- { _id: 5fdca095cdbb4f1c413385ca }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (365, x'5FDCA095CDBB4F1C413385CA', 'http://www.ease-crc.org/ont/SOMA.owl#Collision', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A contact event of objects bumping into each other such that their movement is affected.');


-- { _id: 5fdca095cdbb4f1c413385dd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (366, x'5FDCA095CDBB4F1C413385DD', 'http://www.ease-crc.org/ont/SOMA.owl#Color', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The color of an object. Color regions encode the color value in some space such as RGB or HSV, and may further be used to classify the color as red, dark, etc. The color of an object may have different facets, e.g. a red and blue color.');


-- { _id: 5fdca095cdbb4f1c413385ef }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (367, x'5FDCA095CDBB4F1C413385EF', 'http://www.ease-crc.org/ont/SOMA.owl#Extrinsic', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A physical quality that depends on relationships to other objects, such as the color of an object which depends on light conditions in the environment.');


-- { _id: 5fdca095cdbb4f1c4133860d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (368, x'5FDCA095CDBB4F1C4133860D', 'http://www.ease-crc.org/ont/SOMA.owl#ImperativeClause', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A clause which commands some agent to perform a task or bring about a state of affairs.');


-- { _id: 5fdca095cdbb4f1c41338618 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (369, x'5FDCA095CDBB4F1C41338618', 'http://www.ease-crc.org/ont/SOMA.owl#CommitedObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object committed to a bigger whole. After being committed, the object does not exist anymore in its old form.');


-- { _id: 5fdca095cdbb4f1c4133861d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (370, x'5FDCA095CDBB4F1C4133861D', 'http://www.ease-crc.org/ont/SOMA.owl#CommunicationReport', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A task in which an Agent endeavors to describe truthfully some state of affairs.');


-- { _id: 5fdca095cdbb4f1c4133863f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (371, x'5FDCA095CDBB4F1C4133863F', 'http://www.ease-crc.org/ont/SOMA.owl#CommunicationTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Task in which two or more Agents exchange information. A CommunicationTask classifies only Events that have only Agents and Social objects as participants.\n\nOf course, the means of exchange is Physical, however this concept is to classify events for which we are not interested in the physical substrate, but rather who communicated and what the information content was.');


-- { _id: 5fdca095cdbb4f1c41338660 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (372, x'5FDCA095CDBB4F1C41338660', 'http://www.ease-crc.org/ont/SOMA.owl#CommunicationTopic', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role that appears in communication tasks, and indicates what the communication is about.\n\nCommunicationTopic can only classify a Social object that participates in an Action that is classified as (the execution of) a CommunicationTask.\n\nNote that classifies here is used in the plays-role sense. This isn''t to say that the social object, ie the information exchanged in the communication, is an instance of the topic. Rather, the topic role refers to what the information is about.\n\nFor example, if the topic of a communication is flowers, this does not mean the words themselves are flowers, merely that, in some sense, they are about flowers.');


-- { _id: 5fdca095cdbb4f1c41338677 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (373, x'5FDCA095CDBB4F1C41338677', 'http://www.ease-crc.org/ont/SOMA.owl#Composing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change the compositional structure of others.');


-- { _id: 5fdca095cdbb4f1c4133868e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (374, x'5FDCA095CDBB4F1C4133868E', 'http://www.ease-crc.org/ont/SOMA.owl#Variability', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change some aspect of others.');


-- { _id: 5fdca095cdbb4f1c413386a5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (375, x'5FDCA095CDBB4F1C413386A5', 'http://www.ease-crc.org/ont/SOMA.owl#SoftwareImplementation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization in form of a executable computer program.');


-- { _id: 5fdca095cdbb4f1c413386ac }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (376, x'5FDCA095CDBB4F1C413386AC', 'http://www.ease-crc.org/ont/SOMA.owl#ConditionalSuccedence', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation that holds between two OGPTasks that belong to the same OGPWorkflow, and which means that, if a condition is met, the successor task invocation is to be executed after the predecessor task invocation completes.\n\nThe condition is a conjunction of CounterfactualBindings. These bindings may be RoleRoleBindings (meaning, test whether the fillers for these Roles/Parameters are the same) or RoleFillerBindings (meaning, test whether the filler of the Role unifies with the candidate Entity).\n\nAn empty conjunction of CounterfactualBindings is assumed to be True.');


-- { _id: 5fdca095cdbb4f1c413386ad }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (377, x'5FDCA095CDBB4F1C413386AD', 'http://www.ease-crc.org/ont/SOMA.owl#ConditionalSuccedence', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Note: in RobotWorkflows, Tasks typically may have several possible successors, to be selected based on condition-testing.');


-- { _id: 5fdca095cdbb4f1c413386ca }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (378, x'5FDCA095CDBB4F1C413386CA', 'http://www.ease-crc.org/ont/SOMA.owl#Succedence', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation that holds in some descriptive context such as a Workflow, between two TaskInvocations belonging to that same Workflow. It means that one task invocation should follow the other.\n\nNote: a successor relation implemented as an OWL object property is sometimes enough, but not in general; in particular, when there are conditions imposed on the succession.\n\nAs a result, a reification pattern was applied here.');


-- { _id: 5fdca095cdbb4f1c413386cb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (379, x'5FDCA095CDBB4F1C413386CB', 'http://www.ease-crc.org/ont/SOMA.owl#Succedence', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Note: it is possible for a Succedence relation to exist between a TaskInvocation and itself; in this case, both the hasPredecessor and hasSuccessor roles are filled by the same TaskInvocation individual.\n\nCare must be taken with this however, as a natural interpretation of this situation is an infinite loop.');


-- { _id: 5fdca095cdbb4f1c413386dd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (380, x'5FDCA095CDBB4F1C413386DD', 'http://www.ease-crc.org/ont/SOMA.owl#Connectivity', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the connected object) to establish a connection with others.');


-- { _id: 5fdca095cdbb4f1c413386e4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (381, x'5FDCA095CDBB4F1C413386E4', 'http://www.ease-crc.org/ont/SOMA.owl#ModifyingPhysicalObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Superconcept for tasks that involve affecting some state that an object is in (e.g. where it is located), without creating or destroying the object.');


-- { _id: 5fdca096cdbb4f1c41338701 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (382, x'5FDCA096CDBB4F1C41338701', 'http://www.ease-crc.org/ont/SOMA.owl#Containment', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the container) to contain others.');


-- { _id: 5fdca096cdbb4f1c41338704 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (383, x'5FDCA096CDBB4F1C41338704', 'http://www.ease-crc.org/ont/SOMA.owl#IncludedObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object that is contained in something. This is meant very general and includes, e.g., elements contained in a set, or things that are spatially contained within the boundaries of some object.');


-- { _id: 5fdca096cdbb4f1c4133870f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (384, x'5FDCA096CDBB4F1C4133870F', 'http://www.ease-crc.org/ont/SOMA.owl#ContainmentTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory that describes a functional relation which ensures that the location of some entity, the locatum, is constrained to be within some region which is the interior of some other entity, the relatum.\n\nThis is also known as FunctionalControlInternal in GUM-4-space (Bateman et al. 2010).\n\nLet xL, xR be objects filling the locatum, relatum roles of this schema. Then one can infer that xL isInsideOf xR.');


-- { _id: 5fdca096cdbb4f1c41338716 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (385, x'5FDCA096CDBB4F1C41338716', 'http://www.ease-crc.org/ont/SOMA.owl#ControlTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of functional-spatial configurations where one object controls another object''s position in space, e.g. if a pot moves, then the popcorn contained therein moves, as well. Note that the objects do not need to be in direct contact.\n\nAdopted from GUM-4-space (Bateman et al. 2010).');


-- { _id: 5fdca096cdbb4f1c41338721 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (386, x'5FDCA096CDBB4F1C41338721', 'http://www.ease-crc.org/ont/SOMA.owl#FunctionalSpatialSchemaTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The superclass for theories describing functional spatial relations.\n\nAdopted from GUM-4-space (Bateman et al. 2010).');


-- { _id: 5fdca096cdbb4f1c41338740 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (387, x'5FDCA096CDBB4F1C41338740', 'http://www.ease-crc.org/ont/SOMA.owl#Cover', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object used to cover up others, such as a lid used as a cover for a pot.');


-- { _id: 5fdca096cdbb4f1c4133874e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (388, x'5FDCA096CDBB4F1C4133874E', 'http://www.ease-crc.org/ont/SOMA.owl#Coverage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the cover) to hide or to protect objects by covering them. An example is a door that covers items in a container to e.g. prevent dust getting inside of the container.');


-- { _id: 5fdca096cdbb4f1c4133875a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (389, x'5FDCA096CDBB4F1C4133875A', 'http://www.ease-crc.org/ont/SOMA.owl#CoverageTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory of a functional relation between two objects such that one of them, the locatum, blocks access to the interior of the relatum.\n\nLet xL, xR be objects filling the locatum, relatum roles of this schema. Then one can infer that xL coversObject xR.');


-- { _id: 5fdca096cdbb4f1c41338770 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (390, x'5FDCA096CDBB4F1C41338770', 'http://www.ease-crc.org/ont/SOMA.owl#CoveringTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory of how an agent can use an instrument to prevent access to the interior of a patient.');


-- { _id: 5fdca096cdbb4f1c41338782 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (391, x'5FDCA096CDBB4F1C41338782', 'http://www.ease-crc.org/ont/SOMA.owl#CrackingTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory of how an agent can inflict damage to the surface of an object.');


-- { _id: 5fdca096cdbb4f1c4133878b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (392, x'5FDCA096CDBB4F1C4133878B', 'http://www.ease-crc.org/ont/SOMA.owl#Creation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which an Entity is created in the physical world.\n\nNote, most of the physical Entities we will be considering here are in fact arrangements of many other, smaller physical Entities. Therefore another way to look at this is, a ''Physical creation'' is the process by which a set of physical Entities is arranged in a certain way, and the arrangement is then itself considered a physical Entity.');


-- { _id: 5fdca096cdbb4f1c41338797 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (393, x'5FDCA096CDBB4F1C41338797', 'http://www.ease-crc.org/ont/SOMA.owl#Tableware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Crockery, cutlery, and glassware used for serving and eating meals at a table.');


-- { _id: 5fdca096cdbb4f1c413387cc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (394, x'5FDCA096CDBB4F1C413387CC', 'http://www.ease-crc.org/ont/SOMA.owl#Rack', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A frame for holding or storing things.');


-- { _id: 5fdca096cdbb4f1c413387d0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (395, x'5FDCA096CDBB4F1C413387D0', 'http://www.ease-crc.org/ont/SOMA.owl#DesignedFurniture', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object used to make a room or building suitable for living or working.');


-- { _id: 5fdca096cdbb4f1c413387d3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (396, x'5FDCA096CDBB4F1C413387D3', 'http://www.ease-crc.org/ont/SOMA.owl#Cutlery', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Hand tools designed to be used for eating, preparing, or serving food.');


-- { _id: 5fdca096cdbb4f1c413387d6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (397, x'5FDCA096CDBB4F1C413387D6', 'http://www.ease-crc.org/ont/SOMA.owl#Cutting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The goal of this task is to separate one or more pieces from some target object by means of cutting into its constituent material. Unlike a disassembly, a cut is usually not easily reversible.');


-- { _id: 5fdca096cdbb4f1c413387f4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (398, x'5FDCA096CDBB4F1C413387F4', 'http://www.ease-crc.org/ont/SOMA.owl#Shaping', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change the shape of others.');


-- { _id: 5fdca096cdbb4f1c413387f7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (399, x'5FDCA096CDBB4F1C413387F7', 'http://www.ease-crc.org/ont/SOMA.owl#DesignedTool', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An item designed to enable some action, in which it will play an instrumental role.');


-- { _id: 5fdca096cdbb4f1c413387fd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (400, x'5FDCA096CDBB4F1C413387FD', 'http://www.ease-crc.org/ont/SOMA.owl#DeductiveReasoning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A task in which the Agent, using general logical principles that it considers logically valid, applied to premises that it considers logically true, arrives at conclusions that it considers logically certain.\n\nDeduction is often explained as starting from the "general" (some property X is known about all members of a set S), applying it to the "specific" (some Entity Y is known to belong to set S), to arrive at a specialization of the general property (X applies to Y).');


-- { _id: 5fdca096cdbb4f1c41338809 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (401, x'5FDCA096CDBB4F1C41338809', 'http://www.ease-crc.org/ont/SOMA.owl#Deformation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which a physical Entity changes its shape under the influence of some factors outside of the Entity.\n\nNote, changes of shape may be self-caused; for example, a gas will naturally disperse. This however would be a different type of process (Dispersion).\n\nA soft slab of clay deforming under its own weight on Earth would still count as deformation: it is the gravity of the Earth (so, a factor outside the slab of clay) which makes the slab change shape.');


-- { _id: 5fdca096cdbb4f1c4133882d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (402, x'5FDCA096CDBB4F1C4133882D', 'http://www.ease-crc.org/ont/SOMA.owl#FluidFlow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which a fluid moves or is moved from a location to another, but such that it maintains its constitution. A fluid is an Entity made of many smaller Entities, loosely bound to each other.\n\nAn issue to highlight here is the maintenance of constitution. Fluids-- gases in particular-- are prone to disperse. Such a process is not flow however, because the loose bounds between the constituents become even looser, to the point of the original Entity becoming entirely discombobulated. ');


-- { _id: 5fdca096cdbb4f1c41338830 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (403, x'5FDCA096CDBB4F1C41338830', 'http://www.ease-crc.org/ont/SOMA.owl#DependentPlace', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A feature that is not part of its host, like a hole in a piece of cheese.');


-- { _id: 5fdca096cdbb4f1c41338849 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (404, x'5FDCA096CDBB4F1C41338849', 'http://www.ease-crc.org/ont/SOMA.owl#Feature', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Features are ''parasitic'' entities that only exist insofar their host exists. Typical examples are holes, bumps, boundaries, or spots of color.');


-- { _id: 5fdca096cdbb4f1c4133884f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (405, x'5FDCA096CDBB4F1C4133884F', 'http://www.ease-crc.org/ont/SOMA.owl#Deposit', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object ontop which others are put to e.g. store them, or to place them in a meaningful way for future activities.');


-- { _id: 5fdca096cdbb4f1c41338856 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (406, x'5FDCA096CDBB4F1C41338856', 'http://www.ease-crc.org/ont/SOMA.owl#DesignedHandle', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An item designed to fit well within a grasping hand, often attached to another item to enhance its manipulability.');


-- { _id: 5fdca097cdbb4f1c41338873 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (407, x'5FDCA097CDBB4F1C41338873', 'http://www.ease-crc.org/ont/SOMA.owl#Destruction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A process by which a physical Entity is destroyed.\n\nNote, most of the physical Entities we are concerned with are actually arrangements of many smaller physical Entities, so another way to look at this is that a ''Physical destruction'' is a process by which an arrangement of physical Entities, which was previously itself considered a physical Entity, is changed to such an extent that it is no longer recognized as continuing to exist.');


-- { _id: 5fdca097cdbb4f1c41338898 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (408, x'5FDCA097CDBB4F1C41338898', 'http://www.ease-crc.org/ont/SOMA.owl#Dicing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A particular kind of cutting where the goal is to produce small pieces out of some object or material. Unlike slices, the pieces to be obtained do not have one or two dimensions being more prominent than others. "Dice", the pieces dicing results in, are approximately cubic.');


-- { _id: 5fdca097cdbb4f1c413388a4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (409, x'5FDCA097CDBB4F1C413388A4', 'http://www.ease-crc.org/ont/SOMA.owl#DigitalObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An information realization with object character. e.g. a software agent etc.');


-- { _id: 5fdca097cdbb4f1c413388aa }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (410, x'5FDCA097CDBB4F1C413388AA', 'http://www.ease-crc.org/ont/SOMA.owl#DirectedMotion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Motion that is considered to be toward a location or along a path. It is not important that the final location or path be the intention of some Agent, but it is considered that the important feature of this Motion is that it has a path and/or destination.');


-- { _id: 5fdca097cdbb4f1c413388b2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (411, x'5FDCA097CDBB4F1C413388B2', 'http://www.ease-crc.org/ont/SOMA.owl#UndirectedMotion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Motion of a physical Entity for which a destination or path are unknown and/or considered irrelevant; the important aspect about this Motion is simply that it occurs, rather than where it is headed or how it proceeds towards it.');


-- { _id: 5fdca097cdbb4f1c413388dc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (412, x'5FDCA097CDBB4F1C413388DC', 'http://www.ease-crc.org/ont/SOMA.owl#DirtyObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object whose Cleanliness quality has a value from the Dirty region.');


-- { _id: 5fdca097cdbb4f1c413389a4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (413, x'5FDCA097CDBB4F1C413389A4', 'http://www.ease-crc.org/ont/SOMA.owl#Door', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A hinged, sliding, or revolving barrier at the entrance to a building, room, or vehicle, or in the frame of a cupboard.');


-- { _id: 5fdca097cdbb4f1c413389d0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (414, x'5FDCA097CDBB4F1C413389D0', 'http://www.ease-crc.org/ont/SOMA.owl#Purification', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change the cleanliness of others.');


-- { _id: 5fdca098cdbb4f1c413389dd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (415, x'5FDCA098CDBB4F1C413389DD', 'http://www.ease-crc.org/ont/SOMA.owl#Taxis', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An innate behavioural response such as the knee-jerk reflex or the sucking reflex of human infants.');


-- { _id: 5fdca098cdbb4f1c41338a03 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (416, x'5FDCA098CDBB4F1C41338A03', 'http://www.ease-crc.org/ont/SOMA.owl#Drawer', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A storage compartment without a lid, made to slide horizontally in and out of a piece of furniture.');


-- { _id: 5fdca098cdbb4f1c41338a09 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (417, x'5FDCA098CDBB4F1C41338A09', 'http://www.ease-crc.org/ont/SOMA.owl#Dreaming', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any form of re-processing episodic memories for long-term memory by natural or aritifical agents.');


-- { _id: 5fdca098cdbb4f1c41338a14 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (418, x'5FDCA098CDBB4F1C41338A14', 'http://www.ease-crc.org/ont/SOMA.owl#MentalTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Task classifying some MentalAction, that is, an Action through which an Agent manipulates representations stored in its own cognition.');


-- { _id: 5fdca098cdbb4f1c41338a2c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (419, x'5FDCA098CDBB4F1C41338A2C', 'http://www.ease-crc.org/ont/SOMA.owl#Dropping', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The dropped object falls mainly under the influence of gravity. However, an agent may also drop something during navigation. The difference to ''Throwing'' is that there is no ''Limb motion'' which is a constitiuent of the action.\n\n''Dropping'' is intentional. Dropping by accident may not has a phase to release the grasp. It could be that the grasp was not strong enough and the objects "slips" away.');


-- { _id: 5fdca098cdbb4f1c41338a31 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (420, x'5FDCA098CDBB4F1C41338A31', 'http://www.ease-crc.org/ont/SOMA.owl#Placing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Distinguished from Positioning in that this task is more about placing an object at a functionally specified location (e.g., place the cup on the table) as opposed to positioning an object at a location defined by coordinates or a region of coordinates (position the cup at xyz).');


-- { _id: 5fdca098cdbb4f1c41338a3f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (421, x'5FDCA098CDBB4F1C41338A3F', 'http://www.ease-crc.org/ont/SOMA.owl#ESTSchemaTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory that describes the existence of an entity.\n\nDevelopmental psychology posits that "object permanence" (the assumption that physical objects keep existing even when the agent doesn''t perceive them, which consequently informs reasoning about where an object should be, even when perception of it is lost) is a cognitive ability that is not, at least in the very young human child, immediately manifest. Rather, it seems learned via interaction, and usually is among an infant''s cognitive repertoire by age 2.\n\nIn SOMA, we represent this ability of a cognitive agent as an ability to generate and maintain ESTSchemaTheories. Each instance of such a theory refers to one particular physical object, the one that the instance of the ESTSchemaTheory asserts to exist.\n\nBecause each instance of an ESTSchemaTheory refers to a single object, ESTSchemaTheories are not associated to any relation between OWL individuals.');


-- { _id: 5fdca098cdbb4f1c41338a46 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (422, x'5FDCA098CDBB4F1C41338A46', 'http://www.ease-crc.org/ont/SOMA.owl#ExistingObjectRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role that requires of its filler simply to exist, unlike other roles that may demand e.g. agentive or instrumental participation in some executable schema or plan (AgentRole and Instrument respectively).\n\nThe intention behind such a simple role is to have a way to represent, in a schematic formalism used to describe some scene, that an object is present. In particular, the schema used to convey this information is the ESTSchemaTheory, which has ExistingObjectRole as its sole defined role.');


-- { _id: 5fdca098cdbb4f1c41338a50 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (423, x'5FDCA098CDBB4F1C41338A50', 'http://www.ease-crc.org/ont/SOMA.owl#EnclosedObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object included within the spatial boundaries of another object.');


-- { _id: 5fdca098cdbb4f1c41338a5c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (424, x'5FDCA098CDBB4F1C41338A5C', 'http://www.ease-crc.org/ont/SOMA.owl#Enclosing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the container) to contain other objects by enclosing them to prevent their free movement.');


-- { _id: 5fdca098cdbb4f1c41338a6b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (425, x'5FDCA098CDBB4F1C41338A6B', 'http://www.ease-crc.org/ont/SOMA.owl#Manipulating', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Tasks where the goal is to move the prehensile effectors, ie. hands, of an agent so as to achieve some spatial or functional relation with some manipulated object. \n\nSpatial relations refer to positioning the hands in certain ways relative to the manipulated object, for example nearing or distancing them, or aligning them with some relevant axis.\n\nFunctional relations here refer to interactions between the hands and manipulated object which constrain the possible behavior of the object. Examples of functional relations in manipulation are support and kinematic control.\n\nNote that manipulation tasks are usually performed with the intention of moving an object in some way, so there is a large conceptual overlap between Manipulating and Actuating.\n\nHowever these concepts are nonetheless distinguished in what they "profile", ie. what they focus on as particularly important.\n\nActuating profiles the movement of the object itself.\n\nManipulating profiles the movement of the hands and the functional relations, such as kinematic control, they establish with the manipulated object.\n\nNote: we employ Manipulating here in its literal, original sense, of using hands for some purpose, and not in the metaphorical sense of exerting psychological pressure on someone.');


-- { _id: 5fdca098cdbb4f1c41338a70 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (426, x'5FDCA098CDBB4F1C41338A70', 'http://www.ease-crc.org/ont/SOMA.owl#SchematicTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A theory used to describe, analyze, and reason with the meaning of a linguistic message.\n\nNote that such theories are useful both when analyzing an actual linguistic production, and when creating a linguistic production to describe some observed experience.');


-- { _id: 5fdca098cdbb4f1c41338a93 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (427, x'5FDCA098CDBB4F1C41338A93', 'http://www.ease-crc.org/ont/SOMA.owl#ExecutionStateRegion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A region containing labels that describe different states in the evolution/completion of a task execution.');


-- { _id: 5fdca098cdbb4f1c41338aa3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (428, x'5FDCA098CDBB4F1C41338AA3', 'http://www.ease-crc.org/ont/SOMA.owl#PhysicalQuality', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Any aspect of an entity that is dependent on its physical manifestation.');


-- { _id: 5fdca098cdbb4f1c41338aaf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (429, x'5FDCA098CDBB4F1C41338AAF', 'http://www.ease-crc.org/ont/SOMA.owl#Unsuccessfulness', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation with a goal that was not or not fully achieved by some system.');


-- { _id: 5fdca098cdbb4f1c41338ada }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (430, x'5FDCA098CDBB4F1C41338ADA', 'http://www.ease-crc.org/ont/SOMA.owl#Fork', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Cutlery with two or more prongs used for lifting food to the mouth or holding it when cutting.');


-- { _id: 5fdca099cdbb4f1c41338b20 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (431, x'5FDCA099CDBB4F1C41338B20', 'http://www.ease-crc.org/ont/SOMA.owl#FreezerCompartment', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A freezer compartment used to regulate the temperature of contained objects to a value below zero degree Celsius.');


-- { _id: 5fdca099cdbb4f1c41338b34 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (432, x'5FDCA099CDBB4F1C41338B34', 'http://www.ease-crc.org/ont/SOMA.owl#Tempering', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change the temperature of others.');


-- { _id: 5fdca099cdbb4f1c41338b3c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (433, x'5FDCA099CDBB4F1C41338B3C', 'http://www.ease-crc.org/ont/SOMA.owl#FrictionAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The resistance that one surface or object encounters when moving over another.');


-- { _id: 5fdca099cdbb4f1c41338b43 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (434, x'5FDCA099CDBB4F1C41338B43', 'http://www.ease-crc.org/ont/SOMA.owl#FunctionalDesign', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The design of an object from functionality point of view. A functional design is useful to develop complex modular objects with components that have a specific purpose, and can function with minimum side effect on other components of that object. ');


-- { _id: 5fdca099cdbb4f1c41338b52 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (435, x'5FDCA099CDBB4F1C41338B52', 'http://www.ease-crc.org/ont/SOMA.owl#LocatumRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Denotes the object with primary focal prominence in a spatial or spatio-temporal schema. Terminological variants that appear in the literature on cognitive linguistics include Figure (Talmy 1983) and Trajector (Langacker 1986).');


-- { _id: 5fdca099cdbb4f1c41338b59 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (436, x'5FDCA099CDBB4F1C41338B59', 'http://www.ease-crc.org/ont/SOMA.owl#RelatumRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Denotes the reference object in a spatial or spatio-temporal schema, i.e. the object with secondary focal prominence. Terminological variants: Ground (Talmy 1983), Landmark (Langacker 1986).');


-- { _id: 5fdca099cdbb4f1c41338bd3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (437, x'5FDCA099CDBB4F1C41338BD3', 'http://www.ease-crc.org/ont/SOMA.owl#PrehensileEffector', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An effector used to grasp objects, such as a hand of a human, or the long prehensile tail of a monkey.');


-- { _id: 5fdca099cdbb4f1c41338bf9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (438, x'5FDCA099CDBB4F1C41338BF9', 'http://www.ease-crc.org/ont/SOMA.owl#HasQualityRegion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The relation between an individual quality and a region.');


-- { _id: 5fdca099cdbb4f1c41338bfa }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (439, x'5FDCA099CDBB4F1C41338BFA', 'http://www.ease-crc.org/ont/SOMA.owl#HasQualityRegion', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo(DB): added for NEEMs (quale change), but not sure yet about it...');


-- { _id: 5fdca099cdbb4f1c41338bfe }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (440, x'5FDCA099CDBB4F1C41338BFE', 'http://www.ease-crc.org/ont/SOMA.owl#HeadMovement', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The Agent moves a part of their body carrying high-bandwidth sensors such as cameras. The movement of other body parts is not significant.');


-- { _id: 5fdca099cdbb4f1c41338bff }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (441, x'5FDCA099CDBB4F1C41338BFF', 'http://www.ease-crc.org/ont/SOMA.owl#HeadMovement', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo: (Mihai:) This seems too specific, given the "Directed"/"Undirected motion" categories.');


-- { _id: 5fdca09acdbb4f1c41338c52 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (442, x'5FDCA09ACDBB4F1C41338C52', 'http://www.ease-crc.org/ont/SOMA.owl#Hotplate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A flat heated surface used for cooking food or keeping it hot.');


-- { _id: 5fdca09acdbb4f1c41338c62 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (443, x'5FDCA09ACDBB4F1C41338C62', 'http://www.ease-crc.org/ont/SOMA.owl#Locution', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An action in which an agent uses some actuator for communication purposes.');


-- { _id: 5fdca09acdbb4f1c41338c66 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (444, x'5FDCA09ACDBB4F1C41338C66', 'http://www.ease-crc.org/ont/SOMA.owl#Imagining', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which the Agent constructs a mental representation of a possible world. An Agent performing an Imagining activity does not aim to construct a representation that aspires to be faithful to some past, present, or future state of affairs of the actual world it is embodied in.');


-- { _id: 5fdca09acdbb4f1c41338c76 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (445, x'5FDCA09ACDBB4F1C41338C76', 'http://www.ease-crc.org/ont/SOMA.owl#Impediment', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the obstacle) to prohibit certain ways of entering or leaving a space or group. An example is a doorstopper constraining a door, prohibiting it to enter the area behind it.');


-- { _id: 5fdca09acdbb4f1c41338c7b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (446, x'5FDCA09ACDBB4F1C41338C7B', 'http://www.ease-crc.org/ont/SOMA.owl#Obstacle', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object used to restrict access to a protected space or group.');


-- { _id: 5fdca09acdbb4f1c41338c9e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (447, x'5FDCA09ACDBB4F1C41338C9E', 'http://www.ease-crc.org/ont/SOMA.owl#StateTransition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A transition between two states brought about by the Action of some Agent.');


-- { _id: 5fdca09acdbb4f1c41338ca1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (448, x'5FDCA09ACDBB4F1C41338CA1', 'http://www.ease-crc.org/ont/SOMA.owl#Inability', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation with a goal that some system is unable to achieve.');


-- { _id: 5fdca09acdbb4f1c41338ca4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (449, x'5FDCA09ACDBB4F1C41338CA4', 'http://www.ease-crc.org/ont/SOMA.owl#IncompatibleSoftware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation where two software systems are incompatible with each other.');


-- { _id: 5fdca09acdbb4f1c41338cac }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (450, x'5FDCA09ACDBB4F1C41338CAC', 'http://www.ease-crc.org/ont/SOMA.owl#InductiveReasoning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A task in which the Agent endeavors to accumulate confidence in some general statement about the world, by gathering instances in which this general statement appears to apply. Note that perfect confidence can never be guaranteed by induction.\n\nInduction is often described as a move from many "specifics" (swan A is white, swan B is white, swan C is white, ...) to the "general" (all swans are white).');


-- { _id: 5fdca09acdbb4f1c41338caf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (451, x'5FDCA09ACDBB4F1C41338CAF', 'http://www.ease-crc.org/ont/SOMA.owl#Infeasibility', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation with a goal that is impossible to achieve in some situational context.');


-- { _id: 5fdca09acdbb4f1c41338cbc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (452, x'5FDCA09ACDBB4F1C41338CBC', 'http://www.ease-crc.org/ont/SOMA.owl#InterpretedAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The DUL concept of Action is that it is an Event with an Agent participant, which causes the Event to happen because the Agent executes some Task, in pursuit of a Goal.\n\nIn general, identifying what an Agent actually intended is a hard problem of interpretation. Sometimes it may "seem obvious" that a sequence of movements corresponds to some activity or other, but even such "obvious" interpretation has to rely on a lot of shared cultural assumptions between the Agent performing the action and some other Agent observing the first''s behavior, or some history of communication between them.\n\nIn this category we will place Actions for which such extra knowledge is required, in order to have justification for interpretation.');


-- { _id: 5fdca09acdbb4f1c41338ccc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (453, x'5FDCA09ACDBB4F1C41338CCC', 'http://www.ease-crc.org/ont/SOMA.owl#ObservedAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The DUL concept of Action is that it is an Event with an Agent participant, which causes the Event to happen because the Agent executes some Task, in pursuit of a Goal.\n\nIn general, identifying what an Agent actually intended is a hard problem of interpretation. However, it is often useful to stop interpretation at what is readily observable, for example when labeling manipulation actions.\n\nObservedActions are therefore those for which we do not care about the Agent''s goals, but we do care about what happened in the world as a result of the Agent''s interference. This is why we prefer a separate concept, rather than Process which makes no agentive commitments at all.\n\nBecause of the above restriction, ObservedActions are "physical" ones, involving participants that are physical objects or agents which we could observe.\n\nAnother obvious but less intuitive consequence of the above is that even "mistakes" are included in this category. For example, suppose that Alice drops a vase. This would correspond to a Dropping action, with a dropping goal, if we modeled that goal explicitly. Alice could protest that she didn''t intend to drop the vase, it simply slipped, however taking that into account requires going beyond what''s inferrable by simply observing the motion of the participants; we have to get access to Alice''s intentions, which falls under the domain of InterpretedActions.\n\nIf however the "goals" for ObservedActions do not belong to the Agent performing the action, who do they belong to?\n\nOur stance is to treat the goals of ObservedActions as convenient fictions, tolerable for the pragmatic reason that it is often useful to speak of Actions purely in terms of their physical effects, as opposed to conformance to the performing Agent''s inner goals.');


-- { _id: 5fdca09acdbb4f1c41338ccf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (454, x'5FDCA09ACDBB4F1C41338CCF', 'http://www.ease-crc.org/ont/SOMA.owl#InterrogativeClause', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A clause which makes a request, typically information, of some agent.\n\nNote that in a semantic sense such clauses always request information, but in a pragmatic sense they can be used to convey commands or requests for action, such as e.g. "can you close the door?" The question is not just a request for information about ability, but a request to perform a task.');


-- { _id: 5fdca09acdbb4f1c41338cd8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (455, x'5FDCA09ACDBB4F1C41338CD8', 'http://www.ease-crc.org/ont/SOMA.owl#KineticFrictionAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Friction that occurs when two touching objects are moving relative to each other.');


-- { _id: 5fdca09acdbb4f1c41338cea }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (456, x'5FDCA09ACDBB4F1C41338CEA', 'http://www.ease-crc.org/ont/SOMA.owl#Knife', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An instrument composed of a blade fixed into a handle, used for cutting or as a weapon.');


-- { _id: 5fdca09acdbb4f1c41338cf5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (457, x'5FDCA09ACDBB4F1C41338CF5', 'http://www.ease-crc.org/ont/SOMA.owl#PosturalMoving', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The Agent changes or takes an overall configuration of its body but is otherwise not significantly affecting other objects nor moving a significant amount from its original location.\n\nPosture changes may take place as part of other actions, for example turning when walking.');


-- { _id: 5fdca09acdbb4f1c41338d25 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (458, x'5FDCA09ACDBB4F1C41338D25', 'http://www.ease-crc.org/ont/SOMA.owl#Pushing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo: define subclass ''PushingOver''? Would we expect two distinct contacts with the same surface then?');


-- { _id: 5fdca09bcdbb4f1c41338d66 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (459, x'5FDCA09BCDBB4F1C41338D66', 'http://www.ease-crc.org/ont/SOMA.owl#Linkage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the linked object) to establish a connection with others by being linked together.');


-- { _id: 5fdca09bcdbb4f1c41338d7a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (460, x'5FDCA09BCDBB4F1C41338D7A', 'http://www.ease-crc.org/ont/SOMA.owl#Localization', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The localization of an object. The region of this quality encodes values to localize the object in a dimensional space, e.g. Euclidean positions that localize the object in Euclidean space.');


-- { _id: 5fdca09bcdbb4f1c41338d89 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (461, x'5FDCA09BCDBB4F1C41338D89', 'http://www.ease-crc.org/ont/SOMA.owl#ManipulationAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'These are Actions in which the Agent exerts or prepares to exert some influence over some other participant Phyiscal Objects by way of its prehensile body parts (usually, hands).');


-- { _id: 5fdca09bcdbb4f1c41338d95 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (462, x'5FDCA09BCDBB4F1C41338D95', 'http://www.ease-crc.org/ont/SOMA.owl#MassAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The quantity of matter which a body contains, as measured by its acceleration under given force or by the force exerted on it by a gravitational field.');


-- { _id: 5fdca09bcdbb4f1c41338db4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (463, x'5FDCA09BCDBB4F1C41338DB4', 'http://www.ease-crc.org/ont/SOMA.owl#MentalAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An Event construed as the Agent participant affecting Entities that are representations of actual or potential Entities or Events in the physical world in which the Agent is embodied. These representations are maintained by the Agent participant in the ''Mental action'' event.\n\nOne could argue Mental actions are all Physical actions, because anything the Agent may use to maintain such representations will be physical things, However, we make this distinction because for Mental actions it is less important to consider the physical support of the representation and how it changes, and more important to track how the information content of the representation changes.');


-- { _id: 5fdca09bcdbb4f1c41338ddc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (464, x'5FDCA09BCDBB4F1C41338DDC', 'http://www.ease-crc.org/ont/SOMA.owl#MixingTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory about how an agent can mix a fluid or particulate object.');


-- { _id: 5fdca09bcdbb4f1c41338df4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (465, x'5FDCA09BCDBB4F1C41338DF4', 'http://www.ease-crc.org/ont/SOMA.owl#Pancake', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo(DB): this seems too specific. Should it go to a more specific ontology? like "SOMA-kitchen"?');


-- { _id: 5fdca09bcdbb4f1c41338df7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (466, x'5FDCA09BCDBB4F1C41338DF7', 'http://www.ease-crc.org/ont/SOMA.owl#PancakeMix', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo(DB): this seems too specific. Should it go to a more specific ontology? like "SOMA-kitchen"?');


-- { _id: 5fdca09bcdbb4f1c41338e02 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (467, x'5FDCA09BCDBB4F1C41338E02', 'http://www.ease-crc.org/ont/SOMA.owl#PathRole', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A role that classifies the path of a motion.');


-- { _id: 5fdca09bcdbb4f1c41338e05 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (468, x'5FDCA09BCDBB4F1C41338E05', 'http://www.ease-crc.org/ont/SOMA.owl#PhaseTransition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An EventType that classifies processes by which matter changes from some distinguishable phase to another. We will use this to refer to the classical phase transitions between Solid, Liquid, Gaseous, Plasma etc. phases.');


-- { _id: 5fdca09bcdbb4f1c41338e06 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (469, x'5FDCA09BCDBB4F1C41338E06', 'http://www.ease-crc.org/ont/SOMA.owl#PhaseTransition', 'http://www.w3.org/2000/01/rdf-schema#seeAlso', 'The phase transition concept has also been more or less metaphorically applied in other contexts. An example from physics is the "jamming transition", and sometimes "phase transitions" are spoken of when describing problem spaces such as 3SAT.\n\nIn all these cases, the metaphor points to the existence of several regions of qualitatively different behavior (unimpeded passage of solid grains vs deadlock in a corridor; problem instances where the answer NO is trivial to prove vs. problem instances where the answer YES is trivial to prove), separated fairly sharply when some quantity reaches a threshold.');


-- { _id: 5fdca09bcdbb4f1c41338e09 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (470, x'5FDCA09BCDBB4F1C41338E09', 'http://www.ease-crc.org/ont/SOMA.owl#PhysicalAcquiring', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The goal of this task is to make some object usable for other tasks, by possibly changing its physical state. Usually, it overlaps some task that describes the manner in which an object is obtained.\n\nThe prototypical example of PhysicalGetting is picking up an object.\n\nNote that buying an object is NOT PhysicalGetting. Buying, or ownership transfer in general, also involves an adjustment in social structures describing ownership.');


-- { _id: 5fdca09bcdbb4f1c41338e2c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (471, x'5FDCA09BCDBB4F1C41338E2C', 'http://www.ease-crc.org/ont/SOMA.owl#PlacingTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic theory of how an agent can place a patient at a particular goal location.');


-- { _id: 5fdca09bcdbb4f1c41338e3f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (472, x'5FDCA09BCDBB4F1C41338E3F', 'http://www.ease-crc.org/ont/SOMA.owl#Planning', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which the Agent endeavours to create a sequence of actions for itself which, if followed, will bring about a particular state of affairs in the world. This particular state of affairs is known to the agent and is often called the goal state of the planning action. Planning commits itself to feasibility: the Agent attempts to find a sequence of actions that it believes it will actually be able to perform.');


-- { _id: 5fdca09bcdbb4f1c41338e42 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (473, x'5FDCA09BCDBB4F1C41338E42', 'http://www.ease-crc.org/ont/SOMA.owl#Prospecting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which an Agent endeavours to construct a representation of a future state of affairs of the world it is embodied in.');


-- { _id: 5fdca09bcdbb4f1c41338e4d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (474, x'5FDCA09BCDBB4F1C41338E4D', 'http://www.ease-crc.org/ont/SOMA.owl#Plate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A flat and usually circular object from which food is eaten or served.');


-- { _id: 5fdca09bcdbb4f1c41338e53 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (475, x'5FDCA09BCDBB4F1C41338E53', 'http://www.ease-crc.org/ont/SOMA.owl#PosturalAction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The Agent changes or takes an overall configuration of their body but is otherwise not significantly affecting other objects nor moving a significant amount from its original location.\n\nPosture changes may take place as part of other actions, for example turning when walking.');


-- { _id: 5fdca09bcdbb4f1c41338e58 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (476, x'5FDCA09BCDBB4F1C41338E58', 'http://www.ease-crc.org/ont/SOMA.owl#Prediction', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which the Agent endeavours to construct a representation of a future state of the world. Prediction commits itself to some degree of accuracy: the Agent believes that eventually something similar to the predicted state will come to pass.');


-- { _id: 5fdca09bcdbb4f1c41338e6d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (477, x'5FDCA09BCDBB4F1C41338E6D', 'http://www.ease-crc.org/ont/SOMA.owl#Progression', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A situation that sattisies a description of how a process evolves over time.');


-- { _id: 5fdca09ccdbb4f1c41338e8d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (478, x'5FDCA09CCDBB4F1C41338E8D', 'http://www.ease-crc.org/ont/SOMA.owl#ProximalTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An image schematic theory that describes a qualitative spatial relation indicating relative proximity, as expressed by the prepositions ''near'', ''close to'', ''next to'', etc.\n\nIt may seem that proximity is a very simple notion, requiring no sophisticated theoretical underpinnings. However, proximity is an extremely object- and purpose-dependent relation. A store next door is in a closeness relation to a person, and so is the Sun in the sky, despite the physical distances being different by several orders of magnitude.\n\nAs such, a theory, i.e. a description of what a particular kind of closeness means and in which contexts it applies, is necessary.\n\nAdopted from GUM-4-space (Bateman et al. 2010).\n\nLet xL, xR be objects filling the locatum, relatum roles of this schema. Then one can infer that xL ''near to'' xR.');


-- { _id: 5fdca09ccdbb4f1c41338e9a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (479, x'5FDCA09CCDBB4F1C41338E9A', 'http://www.ease-crc.org/ont/SOMA.owl#QualityTransition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo(DB): added for NEEMs (quale change), but not sure yet about it...');


-- { _id: 5fdca09ccdbb4f1c41338fa0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (480, x'5FDCA09CCDBB4F1C41338FA0', 'http://www.ease-crc.org/ont/SOMA.owl#Refrigerator', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An appliance which is artificially kept cool and used to store food and drink.');


-- { _id: 5fdca09ccdbb4f1c41338fa5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (481, x'5FDCA09CCDBB4F1C41338FA5', 'http://www.ease-crc.org/ont/SOMA.owl#RelevantPart', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Features that are relevant parts of their host, like a bump or an edge.');


-- { _id: 5fdca09ccdbb4f1c41338fa8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (482, x'5FDCA09CCDBB4F1C41338FA8', 'http://www.ease-crc.org/ont/SOMA.owl#Remembering', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which the Agent endeavours to recall a record of a previous state of affairs in the world. The Agent must have witnessed this state of affairs in order to record it. Remembering commits itself to accuracy: the Agent attempts to reconstruct as accurate a record as it can. Note, this does not mean the Agent will communicate the recollection accurately.');


-- { _id: 5fdca09ccdbb4f1c41338fb0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (483, x'5FDCA09CCDBB4F1C41338FB0', 'http://www.ease-crc.org/ont/SOMA.owl#Retrospecting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which an Agent endeavors to construct a representation of a past state of affairs of the world it is embodied in.');


-- { _id: 5fdca09ccdbb4f1c41338fb1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (484, x'5FDCA09CCDBB4F1C41338FB1', 'http://www.ease-crc.org/ont/SOMA.owl#Retrospecting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Done by analogy with Prospecting. Currently mono-subcategory, but perhaps we might find more.\n\nAs an example, a kind of Abductive reasoning would fit here: reconstruction, in which the agent attempts to create a representation of a past state of affairs which the agent has not actually observed, based on traces and clues surviving to the present.');


-- { _id: 5fdca09dcdbb4f1c41338fbd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (485, x'5FDCA09DCDBB4F1C41338FBD', 'http://www.ease-crc.org/ont/SOMA.owl#Rubbing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The motion of an object sliding along the surface of another, for example, to clean the surface.');


-- { _id: 5fdca09dcdbb4f1c41338fcc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (486, x'5FDCA09DCDBB4F1C41338FCC', 'http://www.ease-crc.org/ont/SOMA.owl#Scene', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Scenes are Situations which interpret a State in terms of its conformance to some qualitative, image schematic description. I.e., the scene is described in terms of qualitative functional and spatial relations existing between participating objects.');


-- { _id: 5fdca09dcdbb4f1c41338fe6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (487, x'5FDCA09DCDBB4F1C41338FE6', 'http://www.ease-crc.org/ont/SOMA.owl#Sharpness', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The quality of having a thin edge or point that can cut something or make a hole into something. It is worth to note here that the social aspect of sharpness such as the quality of being clear, intelligent etc is not considered as sharpness according to this definition.');


-- { _id: 5fdca09dcdbb4f1c41339002 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (488, x'5FDCA09DCDBB4F1C41339002', 'http://www.ease-crc.org/ont/SOMA.owl#Shifting', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The disposition of an object (the tool) to change the localization of others.');


-- { _id: 5fdca09dcdbb4f1c41339007 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (489, x'5FDCA09DCDBB4F1C41339007', 'http://www.ease-crc.org/ont/SOMA.owl#Simulating', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Mental task in which the Agent endeavours to create representations of a sequence of states of affairs in the world. Simulation commits itself to some degree of transition accuracy: supposing the actual state of the world was the initial state of the simulation, the world state and simulation state should evolve to some degree similarly.\n\nSimulation does not commit itself to state accuracy: the initial state of the simulation is not constrained to be faithful to the actual state of the world in which the Agent is embodied. Counterfactual simulation ("what would happen if--?") is possible.');


-- { _id: 5fdca09dcdbb4f1c4133900f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (490, x'5FDCA09DCDBB4F1C4133900F', 'http://www.ease-crc.org/ont/SOMA.owl#Size', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The magnitude or dimension of a thing which can be measured as length, width, height, diameter, perimeter, area, volume.');


-- { _id: 5fdca09dcdbb4f1c41339012 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (491, x'5FDCA09DCDBB4F1C41339012', 'http://www.ease-crc.org/ont/SOMA.owl#Slicing', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A particular kind of cutting where the goal is to produce slices from some solid object.');


-- { _id: 5fdca09dcdbb4f1c4133901f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (492, x'5FDCA09DCDBB4F1C4133901F', 'http://www.ease-crc.org/ont/SOMA.owl#SoftwarePackage', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A structured archive of software that also often contains data needed to run the software, and scripts to build and configure the software.');


-- { _id: 5fdca09dcdbb4f1c4133904d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (493, x'5FDCA09DCDBB4F1C4133904D', 'http://www.ease-crc.org/ont/SOMA.owl#SphereShape', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A round solid figure with every point on its surface equidistant from its centre.');


-- { _id: 5fdca09dcdbb4f1c41339057 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (494, x'5FDCA09DCDBB4F1C41339057', 'http://www.ease-crc.org/ont/SOMA.owl#StaticFrictionAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Friction between two touching objects that do not move relative to each other.');


-- { _id: 5fdca09dcdbb4f1c41339067 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (495, x'5FDCA09DCDBB4F1C41339067', 'http://www.ease-crc.org/ont/SOMA.owl#StructuralDesign', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A design of an object which describes its stability, strength and rigidity, and considers the way in which parts of an object are arranged. \n        ');


-- { _id: 5fdca09dcdbb4f1c41339078 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (496, x'5FDCA09DCDBB4F1C41339078', 'http://www.ease-crc.org/ont/SOMA.owl#TaskInvocation', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An elementary workflow consisting in the invocation of one single task. It is used as a descriptive context inside of which factual bindings are valid between the task''s arguments and other entities (such as the "local variables" of a larger workflow).');


-- { _id: 5fdca09dcdbb4f1c4133907b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (497, x'5FDCA09DCDBB4F1C4133907B', 'http://www.ease-crc.org/ont/SOMA.owl#SuccessDiagnosis', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A diagnosis of the fullfilment of a goal that motivates the behavior of a system.');


-- { _id: 5fdca09dcdbb4f1c41339087 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (498, x'5FDCA09DCDBB4F1C41339087', 'http://www.ease-crc.org/ont/SOMA.owl#Successfulness', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation with a goal that was achieved by some system.');


-- { _id: 5fdca09dcdbb4f1c4133908a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (499, x'5FDCA09DCDBB4F1C4133908A', 'http://www.ease-crc.org/ont/SOMA.owl#SupportTheory', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An image schematic theory that describes the reified functional relation holding between two spatial objects x and y, such that x physically supports y in the presence of gravity; x and y need not be in contact. An example of such an expression is "The bowl is on the table".\n\nThis is also known as FunctionalControlExternal in GUM (Bateman et al. 2010).\n\nLet xL, xR be objects filling the locatum, relatum roles of this schema. Then one can infer that xL isSupportedBy xR.');


-- { _id: 5fdca09dcdbb4f1c413390a9 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (500, x'5FDCA09DCDBB4F1C413390A9', 'http://www.ease-crc.org/ont/SOMA.owl#Tapping', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A motion, usually repeated several times, for example, to probe the surface of an object.');


-- { _id: 5fdca09dcdbb4f1c413390c5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (501, x'5FDCA09DCDBB4F1C413390C5', 'http://www.ease-crc.org/ont/SOMA.owl#ThinkAloud', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A task in which an Agent, while in the course of performing some other task(s), reports on their own decision processes that guide this other task(s) for the benefit of an outside observer.');


-- { _id: 5fdca09ecdbb4f1c4133910d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (502, x'5FDCA09ECDBB4F1C4133910D', 'http://www.ease-crc.org/ont/SOMA.owl#Transient', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Objects may undergo changes during Processes; however, while the change Process is in operation, one cannot strictly say either the input of the Process still exists, nor that the result exists yet.\n\nA prototypical example is making a pancake on a heater. When PancakeMix is put on the hot plate, it ceases to be PancakeMix-- already, the chemical structure of the substance gets altered-- however it is only after sufficient heating that this object becomes a Pancake.\n\nTransients are the objects undergoing such change processes; they are no longer the initial objects fed into the process, nor are they the objects produced as results.\n\nInstead, a Transient transitionsFrom some initial Object that was fed into a change Process. Typically, a Transient may transitionTo some resulting Object (though not always, some processes simply destroy objects).\n\nIt is also possible that a Transient transitionsBack to the initial object. An example is the catalyst in a chemical reaction; another example is a loaf of bread after a slice has been cut off.');


-- { _id: 5fdca09ecdbb4f1c4133911a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (503, x'5FDCA09ECDBB4F1C4133911A', 'http://www.ease-crc.org/ont/SOMA.owl#UnavailableSoftware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A description of a situation where some software dependency is not available.');


-- { _id: 5fdca09ecdbb4f1c41339128 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (504, x'5FDCA09ECDBB4F1C41339128', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The EASE view: an Action is an Event in which an Agent executes some Task, typically defined by a Workflow, towards the achievement of some Goal.');


-- { _id: 5fdca09ecdbb4f1c41339166 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (505, x'5FDCA09ECDBB4F1C41339166', 'http://www.ease-crc.org/ont/SOMA.owl#hasInitialScene', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between StateTransitions and Scenes, which identifies the scene the transition starts from.');


-- { _id: 5fdca09ecdbb4f1c4133916e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (506, x'5FDCA09ECDBB4F1C4133916E', 'http://www.ease-crc.org/ont/SOMA.owl#hasTerminalScene', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between StateTransitions and Scenes, which identifies the scene the transition is expected to end at.');


-- { _id: 5fdca09ecdbb4f1c4133918b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (507, x'5FDCA09ECDBB4F1C4133918B', 'http://www.ease-crc.org/ont/SOMA.owl#coversObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relationship from an object (the coverer) that blocks access to another or its interior (the coveree).');


-- { _id: 5fdca09ecdbb4f1c41339192 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (508, x'5FDCA09ECDBB4F1C41339192', 'http://www.ease-crc.org/ont/SOMA.owl#isCoveredByObject', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation from an object (the coveree) which is itself, or has its interior, prevented from being accessed from outside by a coverer.');


-- { _id: 5fdca09ecdbb4f1c413391a0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (509, x'5FDCA09ECDBB4F1C413391A0', 'http://www.ease-crc.org/ont/SOMA.owl#meets', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema where one of the entities exactly ends where the other entity starts.');


-- { _id: 5fdca09ecdbb4f1c413391ac }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (510, x'5FDCA09ECDBB4F1C413391AC', 'http://www.ease-crc.org/ont/SOMA.owl#metBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A relation between entities, expressing a ''sequence'' schema where one of the entities exactly ends where the other entity starts.');


-- { _id: 5fdca09ecdbb4f1c413391bc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (511, x'5FDCA09ECDBB4F1C413391BC', 'http://www.ease-crc.org/ont/SOMA.owl#overlappedBy', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic relation between any entities that also implies ordering, e.g. "she has worked into the night".');


-- { _id: 5fdca09ecdbb4f1c413391c7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (512, x'5FDCA09ECDBB4F1C413391C7', 'http://www.ease-crc.org/ont/SOMA.owl#overlappedOn', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A schematic relation between any entities that also implies ordering, e.g. "she has worked into the night".');


-- { _id: 5fdca09ecdbb4f1c413391de }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (513, x'5FDCA09ECDBB4F1C413391DE', 'http://knowrob.org/kb/urdf.owl#hasBaseLink', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a physical object to the unique base link(=the first link in kinematic chain) of its kinematic chain.');


-- { _id: 5fdca09fcdbb4f1c413391fd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (514, x'5FDCA09FCDBB4F1C413391FD', 'http://knowrob.org/kb/urdf.owl#hasEndLink', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a physical object to the end link (= the last link in kinematic chain) of its kinematic chain, there may be several end links (e.g. fingers of a hand).');


-- { _id: 5fdca0a0cdbb4f1c4133930a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (515, x'5FDCA0A0CDBB4F1C4133930A', 'http://knowrob.org/kb/urdf.owl#hasURDFName', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The name of the link or joint.');


-- { _id: 5fdca0a0cdbb4f1c41339315 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (516, x'5FDCA0A0CDBB4F1C41339315', 'http://knowrob.org/kb/urdf.owl#ContinuousJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'a continuous hinge joint that rotates around the axis and has no upper and lower limits.');


-- { _id: 5fdca0a0cdbb4f1c4133932a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (517, x'5FDCA0A0CDBB4F1C4133932A', 'http://knowrob.org/kb/urdf.owl#FixedJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A joint that cannot move, designed to fixiate links.');


-- { _id: 5fdca0a0cdbb4f1c4133932e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (518, x'5FDCA0A0CDBB4F1C4133932E', 'http://knowrob.org/kb/urdf.owl#FloatingJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A joint that allows motion for all 6 degrees of freedom.');


-- { _id: 5fdca0a0cdbb4f1c4133933b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (519, x'5FDCA0A0CDBB4F1C4133933B', 'http://knowrob.org/kb/urdf.owl#HingeJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A joint that rotates along an axis.');


-- { _id: 5fdca0a0cdbb4f1c4133936a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (520, x'5FDCA0A0CDBB4F1C4133936A', 'http://knowrob.org/kb/urdf.owl#Inertia', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A property of physical objects to continue the current motion or state of rest unless external force is applied.');


-- { _id: 5fdca0a0cdbb4f1c41339392 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (521, x'5FDCA0A0CDBB4F1C41339392', 'http://knowrob.org/kb/urdf.owl#Joint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An object that is used to articulate links in a kinematic structure.');


-- { _id: 5fdca0a0cdbb4f1c41339395 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (522, x'5FDCA0A0CDBB4F1C41339395', 'http://knowrob.org/kb/urdf.owl#JointAttribute', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An attribute of a joint.');


-- { _id: 5fdca0a0cdbb4f1c4133939d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (523, x'5FDCA0A0CDBB4F1C4133939D', 'http://knowrob.org/kb/urdf.owl#JointAxis', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The joint axis specified in the joint frame. This is the axis of rotation for revolute joints, the axis of translation for prismatic joints, and the surface normal for planar joints. The axis is specified in the joint frame of reference. Fixed and floating joints do not use the axis field.');


-- { _id: 5fdca0a0cdbb4f1c413393c4 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (524, x'5FDCA0A0CDBB4F1C413393C4', 'http://knowrob.org/kb/urdf.owl#JointLimits', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Quantifies position, velocity and effort limit.');


-- { _id: 5fdca0a0cdbb4f1c413393c8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (525, x'5FDCA0A0CDBB4F1C413393C8', 'http://knowrob.org/kb/urdf.owl#JointPosition', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The position of a joint that moves connected links relative to each other.');


-- { _id: 5fdca0a0cdbb4f1c413393e0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (526, x'5FDCA0A0CDBB4F1C413393E0', 'http://knowrob.org/kb/urdf.owl#JointReferencePositions', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Reference joint positions indicating at which position a falling and raising edge are expected.');


-- { _id: 5fdca0a1cdbb4f1c41339403 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (527, x'5FDCA0A1CDBB4F1C41339403', 'http://knowrob.org/kb/urdf.owl#JointSoftLimits', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The limits of a joint where the safety controller starts limiting the joint position.');


-- { _id: 5fdca0a1cdbb4f1c4133940e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (528, x'5FDCA0A1CDBB4F1C4133940E', 'http://knowrob.org/kb/urdf.owl#MovableJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A joint where the two connected links can move relative to each other in some dimension.');


-- { _id: 5fdca0a1cdbb4f1c41339420 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (529, x'5FDCA0A1CDBB4F1C41339420', 'http://knowrob.org/kb/urdf.owl#PlanarJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A joint that allows motion in a plane perpendicular to the axis.');


-- { _id: 5fdca0a1cdbb4f1c41339436 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (530, x'5FDCA0A1CDBB4F1C41339436', 'http://knowrob.org/kb/urdf.owl#PrismaticJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sliding joint that slides along the axis, and has a limited range specified by the upper and lower limits.');


-- { _id: 5fdca0a1cdbb4f1c41339446 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (531, x'5FDCA0A1CDBB4F1C41339446', 'http://knowrob.org/kb/urdf.owl#RevoluteJoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'a hinge joint that rotates along the axis and has a limited range specified by the upper and lower limits.');


-- { _id: 5fdca0a1cdbb4f1c4133946c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (532, x'5FDCA0A1CDBB4F1C4133946C', 'http://knowrob.org/kb/knowrob.owl', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Copyright © 2007-2011 by\n          Technische Universität München. This work is licensed under\n          CreativeCommons Attribution 3.0, so you are granted to use, copy,\n          distribute, transmit and adapt this work, but you must attribute\n          the work to the original authors.\n\n          Parts of this ontology are based on the OpenCyc ontology. The OpenCyc\n          OWL Ontologies are Copyright © 2001-2009 Cycorp, Inc., Austin, TX,\n          USA. All rights reserved.\n\n          These files contain an OWL representation of information contained\n          in the OpenCyc Knowledge Base. The content of these OWL files are\n          licensed under the Creative Commons Attribution 3.0 license. The\n          content of these OWL files, including the OpenCyc content they\n          represent, constitutes the "Work" referred to in the\n          Creative Commons license. The terms of this license equally apply\n          to, without limitation, renamings and other logically equivalent\n          reformulations of the content of these OWL files (or portions\n          thereof) in any natural or formal language, as well as to derivations\n          of this content or inclusion of it in other ontologies.\n        ');


-- { _id: 5fdca0a1cdbb4f1c4133947a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (533, x'5FDCA0A1CDBB4F1C4133947A', 'http://knowrob.org/kb/knowrob.owl#actor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The most general instance of ActorSlot (q.v.): all other actor slots are specializations of this predicate. Thus actors is a broad relation that holds between a given event and any contemporary existing thing (see SomethingExisting) that is meaningfully involved in the event. (actors EVENT ACTOR) means that ACTOR is somehow saliently (directly or indirectly) involved in EVENT during EVENT. An object''s merely being cotemporal (see cotemporal) with an event is obviously not sufficient for being an actor in it, nor is participating (however centrally) in a representation or re-enactment of the event. But note that being an "actor" in the relevant sense is not restricted to things that play "active" (as opposed to passive or instrumental) roles in a given event.');


-- { _id: 5fdca0a1cdbb4f1c41339486 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (534, x'5FDCA0A1CDBB4F1C41339486', 'http://knowrob.org/kb/knowrob.owl#connectedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An instance of ConnectionPredicate. (connectedTo OBJ1 OBJ2) means that OBJ1 and OBJ2 are (directly or indirectly) physically connected in a way that allows at most only limited types of relative motion between them. A hinged connection, for example, allows limited rotational motion between OBJ1 and OBJ2. In many cases, being connectedTo implicitly involves another object(s); e.g. a door is connectedTo a door frame by a hinge, which is itself connectedTo_Directly (q.v.) both the door and the frame.');


-- { _id: 5fdca0a1cdbb4f1c413394ba }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (535, x'5FDCA0A1CDBB4F1C413394BA', 'http://knowrob.org/kb/knowrob.owl#eventOccursAt', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An ActorSlot and a specialization of inRegion that relates a particular event to the instance of EnduringThing_Localized at which it occurs. (eventOccursAt EVENT LOC) means that the spatial extent of EVENT is within LOC. For example, (eventOccursAt LomaPrietaEarthquake SanFranciscoBayArea).\n\nSee also the more general predicate eventPartiallyOccursAt, which relates an event to any instance of SpatialThing_Localized in which some sub-event of it occurs.');


-- { _id: 5fdca0a2cdbb4f1c4133957f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (536, x'5FDCA0A2CDBB4F1C4133957F', 'http://knowrob.org/kb/knowrob.owl#near', 'http://www.w3.org/2000/01/rdf-schema#comment', 'This intentionally-vague predicate relates spatial things that are relatively near each other. (near THIS THAT) means that the distance between THIS and THAT is such that -- given the situation at hand and the sorts of things that THIS and THAT are -- they would be considered near each other by most observers. Note that an object is near itself, anything it touches, and any part of itself. When appropriate, use a more precisely-defined predicate such as nearToDegree, nearRelativeTo, nearForRolesInEventType, nearnessForRolesInEventType, touches_Directly, or physicalParts.');


-- { _id: 5fdca0a2cdbb4f1c413395a7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (537, x'5FDCA0A2CDBB4F1C413395A7', 'http://knowrob.org/kb/knowrob.owl#preActor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An ActorSlot (q.v.) that relates an event to those of its participants that pre-exist it. (preActors EVENT OBJECT) means that OBJECT is a participant (see actors) in EVENT and that OBJECT exists before EVENT begins. Note that OBJECT also exists during at least part of EVENT (as actors generalizes to temporallyIntersects). preActors is a very general actor-slot, subsuming doneBy, objectActedOn, objectMoving, and many others.');


-- { _id: 5fdca0a2cdbb4f1c413395c5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (538, x'5FDCA0A2CDBB4F1C413395C5', 'http://knowrob.org/kb/knowrob.owl#rotationallyConnectedTo', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A ConnectionPredicate (q.v.) and thus a specialization of connectedTo (q.v.). (rotationallyConnectedTo OBJ1 OBJ2) means that OBJ1 and OBJ2 are connected in such a way that rotational motion, and only rotational motion, can happen between them. The range of rotational motion possible might be full or partial. Non-rotational movement between two rotationally connected objects can occur only if the connection is broken, deformed, or disassembled. If OBJ1 and OBJ2 do rotate relative to one another, then this may be due to sliding of their surfaces, articulation of some joint part, or deformation of OBJ1 or OBJ2 (so long as that deformation only allows rotation between OBJ1 and OBJ2). Positive examples: Femurs are rotationally connected to hips, doors are rotationally connected to door frames, doorknobs are rotationally connected to doors, and propellers are rotationally connected to airplanes; in computer trackballs the ball is rotationally connected to the housing. Also a book cover is rotationally connected to its binding (but flapHingedTo is even more appropriate for describing such a connection because it is more specific). Negative examples: a planet orbiting a star (they are not connected; cf. MovingInACircle) and a toothpick stuck in a person''s leg (although elastic deformation of flesh allows there to be rotational motion between toothpick and leg, it also may allow a small amount of translational motion to occur between them; in-Lodged is more appropriate for describing this case).');


-- { _id: 5fdca0a3cdbb4f1c41339681 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (539, x'5FDCA0A3CDBB4F1C41339681', 'http://knowrob.org/kb/knowrob.owl#lightConeAngle', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The opening angle of spot lights. Must be below or equal pi/2. Default is pi/3.');


-- { _id: 5fdca0a3cdbb4f1c4133968b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (540, x'5FDCA0A3CDBB4F1C4133968B', 'http://knowrob.org/kb/knowrob.owl#lightDirection', 'http://www.w3.org/2000/01/rdf-schema#comment', 'determines orientation of spot lights.');


-- { _id: 5fdca0a3cdbb4f1c4133968e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (541, x'5FDCA0A3CDBB4F1C4133968E', 'http://knowrob.org/kb/knowrob.owl#lightDistance', 'http://www.w3.org/2000/01/rdf-schema#comment', 'determines light attenuation. I guess threejs interprets this as "the light shines lightDistance meters" (or so)');


-- { _id: 5fdca0a3cdbb4f1c41339698 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (542, x'5FDCA0A3CDBB4F1C41339698', 'http://knowrob.org/kb/knowrob.owl#lightExponent', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Used as exponent in spot effect computation: effect=x^exponent. Exponents below 1 make light brighter, above darker. Default value is 10. Only meaningful for spotlights.');


-- { _id: 5fdca0a3cdbb4f1c413396a1 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (543, x'5FDCA0A3CDBB4F1C413396A1', 'http://knowrob.org/kb/knowrob.owl#lightIntensity', 'http://www.w3.org/2000/01/rdf-schema#comment', 'numeric value of the light''s strength/intensity. Default is 1.');


-- { _id: 5fdca0a3cdbb4f1c413396bf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (544, x'5FDCA0A3CDBB4F1C413396BF', 'http://knowrob.org/kb/knowrob.owl#lightType', 'http://www.w3.org/2000/01/rdf-schema#comment', 'One of ''spot'', ''point'', or ''directional''. Corresponds to different light types used in Computer Graphics.');


-- { _id: 5fdca0a4cdbb4f1c413397a3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (545, x'5FDCA0A4CDBB4F1C413397A3', 'http://knowrob.org/kb/knowrob.owl#AtomicArgument', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An atomic term in the language in which the procedure is implemented.');


-- { _id: 5fdca0a4cdbb4f1c413397b5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (546, x'5FDCA0A4CDBB4F1C413397B5', 'http://knowrob.org/kb/knowrob.owl#Battery', 'http://www.w3.org/2000/01/rdf-schema#comment', 'providers of DC electricity from chemical reactions');


-- { _id: 5fdca0a4cdbb4f1c413397c0 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (547, x'5FDCA0A4CDBB4F1C413397C0', 'http://knowrob.org/kb/knowrob.owl#CartesianCoordinateSystem', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A specialization of CoordinateSystem. Each instance of CartesianCoordinateSystem is based on two or three perpendicular axes that intersect at a point, called the origin. Two axes are used for coordinating a two-dimensional space; three axes are used for coordinating a three-dimensional space. Any point in the space coordinated by the system can be specified by a pair (or triple) of Distances, representing distances from the origin along each of the two (or three) axes.');


-- { _id: 5fdca0a4cdbb4f1c413397c3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (548, x'5FDCA0A4CDBB4F1C413397C3', 'http://knowrob.org/kb/knowrob.owl#CeilingLight', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The collection of all ceiling lights.');


-- { _id: 5fdca0a4cdbb4f1c413397e8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (549, x'5FDCA0A4CDBB4F1C413397E8', 'http://knowrob.org/kb/knowrob.owl#CompoundArgument', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A compound term in the language in which the procedure is implemented.');


-- { _id: 5fdca0a4cdbb4f1c413397eb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (550, x'5FDCA0A4CDBB4F1C413397EB', 'http://knowrob.org/kb/knowrob.owl#ComputationalPredicate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A boolean procedure yielding true if the fact implied by the predicate can be derived using the argument instantiation provided when the predicate is called. In some implementations arguments may be left without instantiation before a predicate is called in which case the call yields true if an appropiate instantiation could be found.');


-- { _id: 5fdca0a4cdbb4f1c4133980b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (551, x'5FDCA0A4CDBB4F1C4133980B', 'http://knowrob.org/kb/knowrob.owl#ComputationalProcedure', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An implemented procedure with specific functor and arity that can be computed by calling it with appropiate arguments possibly yielding one or more outputs.');


-- { _id: 5fdca0a5cdbb4f1c4133981b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (552, x'5FDCA0A5CDBB4F1C4133981B', 'http://knowrob.org/kb/knowrob.owl#Constraint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'fixme: there is an issue with the DUL axiom that parameters only classify regions, and ''is constraint for'' is a sub-property of classifies with domain Parameter and range Entity. this seems like a bug in DUL.');


-- { _id: 5fdca0a5cdbb4f1c4133981e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (553, x'5FDCA0A5CDBB4F1C4133981E', 'http://knowrob.org/kb/knowrob.owl#Cooling', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A specialization of TemperatureChangingProcess. Each instance of CoolingProcess is an event in which the temperature of some object (related to the instance of CoolingProcess by objectOfStateChange) is lowered.');


-- { _id: 5fdca0a5cdbb4f1c41339821 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (554, x'5FDCA0A5CDBB4F1C41339821', 'http://knowrob.org/kb/knowrob.owl#CoordinateSystem', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A specialization of FrameOfReference. This is the collection of systems with respect to which the locations of SpatialThings can be specified.\nThe two most common types of coordinate systems are CartesianCoordinateSystems and PolarCoordinateSystems.');


-- { _id: 5fdca0a5cdbb4f1c4133983e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (555, x'5FDCA0A5CDBB4F1C4133983E', 'http://knowrob.org/kb/knowrob.owl#ElectricLamp', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The collection for all kinds of freestanding (easily moveable) electrical lamps.');


-- { _id: 5fdca0a5cdbb4f1c41339848 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (556, x'5FDCA0A5CDBB4F1C41339848', 'http://knowrob.org/kb/knowrob.owl#ElectricalLightingDevice', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Devices that provide light by transforming electrical current into light energy.');


-- { _id: 5fdca0a5cdbb4f1c41339862 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (557, x'5FDCA0A5CDBB4F1C41339862', 'http://knowrob.org/kb/knowrob.owl#Flashlight', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A small portable electric lamp powered by batteries.');


-- { _id: 5fdca0a5cdbb4f1c41339881 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (558, x'5FDCA0A5CDBB4F1C41339881', 'http://knowrob.org/kb/knowrob.owl#FrameOfReference', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Each instance of FrameOfReference is a representation of the context in which certain data are to be interpreted. Such contexts are typically physical, but may be purely mathematical. For example, a CartesianCoordinateSystem can be used to represent the positions of things on the surface of the Eath, but can also be used to represent an abstract gepometric space.');


-- { _id: 5fdca0a5cdbb4f1c41339888 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (559, x'5FDCA0A5CDBB4F1C41339888', 'http://knowrob.org/kb/knowrob.owl#Heating', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A specialization of TemperatureChangingProcess. During each HeatingProcess event, the temperature of the objectOfStateChange is increased by applying heat to the object. Any instance of IntrinsicStateChangeEvent in which an object temperature is increased is also an instance of this collection.');


-- { _id: 5fdca0a5cdbb4f1c4133989e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (560, x'5FDCA0A5CDBB4F1C4133989E', 'http://knowrob.org/kb/knowrob.owl#IndicatorLight', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The collection of all indicator lights.');


-- { _id: 5fdca0a5cdbb4f1c413398cc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (561, x'5FDCA0A5CDBB4F1C413398CC', 'http://knowrob.org/kb/knowrob.owl#KBQuerying', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A querying action where some predicate of the KB is called.');


-- { _id: 5fdca0a6cdbb4f1c41339935 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (562, x'5FDCA0A6CDBB4F1C41339935', 'http://knowrob.org/kb/knowrob.owl#Lamp-Hanging', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The collection of all hanging lamps.');


-- { _id: 5fdca0a6cdbb4f1c4133994b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (563, x'5FDCA0A6CDBB4F1C4133994B', 'http://knowrob.org/kb/knowrob.owl#LightFixture', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Light fixtures are lights that are permanently attached as parts of rooms or buildings. e.g. Flourescent light fixtures in office building ceilings.');


-- { _id: 5fdca0a6cdbb4f1c41339952 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (564, x'5FDCA0A6CDBB4F1C41339952', 'http://knowrob.org/kb/knowrob.owl#Lightbulb', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A bulb of glass or quartz enclosing material that incandesces or fluoresces when provided with current, thus generating light.');


-- { _id: 5fdca0a6cdbb4f1c41339978 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (565, x'5FDCA0A6CDBB4F1C41339978', 'http://knowrob.org/kb/knowrob.owl#NonRechargeableBattery', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Batteries which may not be recharged (cf. ChargingABattery).');


-- { _id: 5fdca0a6cdbb4f1c41339997 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (566, x'5FDCA0A6CDBB4F1C41339997', 'http://knowrob.org/kb/knowrob.owl#ParameterInference', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A reasoning task where the value of a parameter is determined.');


-- { _id: 5fdca0a7cdbb4f1c413399d2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (567, x'5FDCA0A7CDBB4F1C413399D2', 'http://knowrob.org/kb/knowrob.owl#ProcedureArgument', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An argument of a procedure. Note that this is *not* the instantiation of the argument but rather a description of it in terms of structure and type. e.g., NumberArgument is used to denote arguments that are a number constant! In most cases VariableArgument should be used.');


-- { _id: 5fdca0a7cdbb4f1c413399e8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (568, x'5FDCA0A7CDBB4F1C413399E8', 'http://knowrob.org/kb/knowrob.owl#RechargeableBattery', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Batteries which may be recharged (cf. ChargingABattery).');


-- { _id: 5fdca0a7cdbb4f1c41339a13 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (569, x'5FDCA0A7CDBB4F1C41339A13', 'http://knowrob.org/kb/knowrob.owl#SamplingRate', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The frequency at which a sensor takes measurements.');


-- { _id: 5fdca0a7cdbb4f1c41339a40 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (570, x'5FDCA0A7CDBB4F1C41339A40', 'http://knowrob.org/kb/knowrob.owl#SensorDevice', 'http://www.w3.org/2000/01/rdf-schema#comment', 'todo: axiomatize measured quantitiy.');


-- { _id: 5fdca0a7cdbb4f1c41339a76 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (571, x'5FDCA0A7CDBB4F1C41339A76', 'http://knowrob.org/kb/knowrob.owl#StreetLight', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The collection of all streetlights.');


-- { _id: 5fdca0a7cdbb4f1c41339a9c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (572, x'5FDCA0A7CDBB4F1C41339A9C', 'http://knowrob.org/kb/knowrob.owl#TimePoint', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An instance of TimePoint is an interval of time that has no duration (or, if you prefer, an infinitely small duration). A time point corresponds to what is colloquially described as an "instant" or "moment". If time is likened to a (perhaps infinitely long) straight line, then each TimePoint is like a particular point on that line. Given that time intervals are defined purely by their locations in time, no two time intervals can occupy exactly the same times; and since time points are intervals with no duration, no two time points can even overlap.');


-- { _id: 5fdca0a8cdbb4f1c41339b3b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (573, x'5FDCA0A8CDBB4F1C41339B3B', 'http://www.ease-crc.org/ont/SOMA.owl#EntryOGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Note: equality constraints between parameter sets for Entry/Exit points and the OGPTask defined by a RobotWorkflow might suggest that the OGPTask defined by the workflow can be used as an entry/exit point.\n\nThis however is not the case, as these tasks have different meanings for the KnowRob workflow interpreter.\n\n-- work-flow defined task: any general purpose task, such as some robot behavior, described by a workflow. Encountering such a task during a run of the interpreter will evoke the defining workflow.\n-- entry point task: bind roles and parameters in the workflow to values obtained from the evoker of the workflow\n-- exit point task: bind roles and parameters in the workflow to outputs, and return control to the workflow''s evoker.');


-- { _id: 5fdca0a8cdbb4f1c41339b3c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (574, x'5FDCA0A8CDBB4F1C41339B3C', 'http://www.ease-crc.org/ont/SOMA.owl#EntryOGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The first Task in a RobotWorkflow, which is simply to receive the inputs and bind them to the appropriate roles defined in the workflow.\n\nA RobotWorkflow has only 1 entry point.\n\nThis task has no outputs.');


-- { _id: 5fdca0a8cdbb4f1c41339b3d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (575, x'5FDCA0A8CDBB4F1C41339B3D', 'http://www.ease-crc.org/ont/SOMA.owl#EntryOGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'WARNING: the following constraint was not modelled in the Tbox, but it is expected that RobotWorkflows will implement it.\n\nThe EntryRobotWorkflow should have the same inputs as the RobotTask defined by the RobotWorkflow.');


-- { _id: 5fdca0a8cdbb4f1c41339b4a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (576, x'5FDCA0A8CDBB4F1C41339B4A', 'http://www.ease-crc.org/ont/SOMA.owl#ExitOGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A final Task in a OGPWorkflow, which is simply to return some information as a "result" of the workflow''s execution.\n\nThis task only uses outputs. The values for the outputs are calculated by the KnowRob workflow interpreter based on the Bindings between roles that exist in the workflow.');


-- { _id: 5fdca0a8cdbb4f1c41339b8c }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (577, x'5FDCA0A8CDBB4F1C41339B8C', 'http://www.ease-crc.org/ont/SOMA.owl#OGPTask', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A Task to be interpreted by the KnowRob Workflow interpreter.\n\nUsually, has a non-empty set of input (Role or Parameter)s, and a non-empty set of output (Role or Parameter)s-- however, eiter or both of these sets may be empty in the case of tasks with trivial input/outputs.');


-- { _id: 5fdca0a9cdbb4f1c41339bbc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (578, x'5FDCA0A9CDBB4F1C41339BBC', 'http://www.ease-crc.org/ont/SOMA.owl#OGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A natural exit of an OGPWorkflow is the arrival at an ExitOGPWorkflow task.\n\nA premature exit will however happen when an OGPTask is completed, which is not an ExitOGPWorkflow, and which has no triggerable ConditionalSuccedence relations for which it is the predecessor task.\n\nThis situation can occur when\n\n-- the OGPTask in question is not a predecessor task for any ConditionalSuccedence in the workflow;\n-- none of the ConditionalSuccedence relations that have the task as predecessor can fire, because neither of their conditions are met.\n\nBoth of these situations are errors: they signal that the workflow is incompletely described.');


-- { _id: 5fdca0a9cdbb4f1c41339bbd }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (579, x'5FDCA0A9CDBB4F1C41339BBD', 'http://www.ease-crc.org/ont/SOMA.owl#OGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A workflow meant to guide the action of a robot agent and interpreted by the KnowRob workflow interpreter.\n\nIt is a workflow for exactly one OGPTask, but may contain several invocations of OGPTasks linked by ConditionalSuccedence relations.\n\nIt has at most one entry point, which is the first OGPTask to execute when enacting the Workflow. If no first task is present, then the Workflow is empty.\n\nIt may have several exit points. When an exit point is reached, the Workflow execution has completed. They result in a termination of the workflow, and a return to its invoker, with a special error status and a record of the output of the last task.');


-- { _id: 5fdca0a9cdbb4f1c41339bbe }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (580, x'5FDCA0A9CDBB4F1C41339BBE', 'http://www.ease-crc.org/ont/SOMA.owl#OGPWorkflow', 'http://www.w3.org/2000/01/rdf-schema#comment', 'WARNING: not all constraints are easy to enforce in OWL Tboxes; in particular, the following constraints have not been modelled in the Tbox. It is required however that OGPWorkflows obey them.\n\n-- the input parameters of the OGPTask defined by the OGPWorkflow are exactly the same as the input parameters of the EntryOGPWorkflow belonging to the OGPWorkflow;\n-- the output parameters of the OGPTask defined by the OGPWorkflow are exactly the same as the output parameters defined by every ExitOGPWorkflow belonging to the OGPWorkflow.');


-- { _id: 5fdca0abcdbb4f1c41339dca }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (581, x'5FDCA0ABCDBB4F1C41339DCA', 'http://knowrob.org/kb/srdl2-comp.owl#hasBaseLink', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a physical object to the unique base link(=the first link in kinematic chain) of its kinematic chain.');


-- { _id: 5fdca0abcdbb4f1c41339ddb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (582, x'5FDCA0ABCDBB4F1C41339DDB', 'http://knowrob.org/kb/srdl2-comp.owl#hasEndLink', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Relates a physical object to the end link (= the last link in kinematic chain) of its kinematic chain, there may be several end links (e.g. fingers of a hand).');


-- { _id: 5fdca0abcdbb4f1c41339e36 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (583, x'5FDCA0ABCDBB4F1C41339E36', 'http://knowrob.org/kb/srdl2-comp.owl#Accelerometer', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures acceleration.');


-- { _id: 5fdca0abcdbb4f1c41339e3e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (584, x'5FDCA0ABCDBB4F1C41339E3E', 'http://knowrob.org/kb/srdl2-comp.owl#BladderGripper', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A gripper designed for rod-shaped or cylindrical objects. Useful to handle fragile objects.');


-- { _id: 5fdca0abcdbb4f1c41339e41 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (585, x'5FDCA0ABCDBB4F1C41339E41', 'http://knowrob.org/kb/srdl2-comp.owl#BluetoothDevice', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A device that communicates via bluetooth.');


-- { _id: 5fdca0abcdbb4f1c41339e4b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (586, x'5FDCA0ABCDBB4F1C41339E4B', 'http://knowrob.org/kb/srdl2-comp.owl#ColorCamera', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures light waves to create a picture where the light waves are encoded in some color space.');


-- { _id: 5fdca0abcdbb4f1c41339e54 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (587, x'5FDCA0ABCDBB4F1C41339E54', 'http://knowrob.org/kb/srdl2-comp.owl#ComputationCore', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A computer processor.');


-- { _id: 5fdca0abcdbb4f1c41339e57 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (588, x'5FDCA0ABCDBB4F1C41339E57', 'http://knowrob.org/kb/srdl2-comp.owl#ComputerHardware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'An electircal device designed to be a component in a computer.');


-- { _id: 5fdca0abcdbb4f1c41339e60 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (589, x'5FDCA0ABCDBB4F1C41339E60', 'http://knowrob.org/kb/srdl2-comp.owl#DistanceSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures the distance to the surface of objects facing the sensor.');


-- { _id: 5fdca0accdbb4f1c41339e70 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (590, x'5FDCA0ACCDBB4F1C41339E70', 'http://knowrob.org/kb/srdl2-comp.owl#Gyroscope', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that uses gravity to measure orientation. It consists of a freely rotating disk called rotor that is mounted on a spinning axis on a larger wheel.');


-- { _id: 5fdca0accdbb4f1c41339e79 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (591, x'5FDCA0ACCDBB4F1C41339E79', 'http://knowrob.org/kb/srdl2-comp.owl#InertialSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures body internal forces.');


-- { _id: 5fdca0accdbb4f1c41339e81 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (592, x'5FDCA0ACCDBB4F1C41339E81', 'http://knowrob.org/kb/srdl2-comp.owl#InfraredCamera', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures infrared radiation to create a picture where the radiation is encoded in some color space (usually with bright colors indicating high radiation).');


-- { _id: 5fdca0accdbb4f1c41339eaa }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (593, x'5FDCA0ACCDBB4F1C41339EAA', 'http://knowrob.org/kb/srdl2-comp.owl#LaserScanner', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that uses laser beams to measures the distance to the surface of objects facing the sensor.');


-- { _id: 5fdca0accdbb4f1c41339ebc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (594, x'5FDCA0ACCDBB4F1C41339EBC', 'http://knowrob.org/kb/srdl2-comp.owl#LeggedBase', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A robot base with mechanical limbs that can move the robot by walking.');


-- { _id: 5fdca0accdbb4f1c41339ebf }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (595, x'5FDCA0ACCDBB4F1C41339EBF', 'http://knowrob.org/kb/srdl2-comp.owl#LightWaveSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures light waves.');


-- { _id: 5fdca0accdbb4f1c41339ec2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (596, x'5FDCA0ACCDBB4F1C41339EC2', 'http://knowrob.org/kb/srdl2-comp.owl#LocalizationSoftware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Software components that allow the robot to localize itself');


-- { _id: 5fdca0accdbb4f1c41339ecb }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (597, x'5FDCA0ACCDBB4F1C41339ECB', 'http://knowrob.org/kb/srdl2-comp.owl#MagneticGripper', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A gripper that uses magnets to hold metallic objects.');


-- { _id: 5fdca0accdbb4f1c41339ece }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (598, x'5FDCA0ACCDBB4F1C41339ECE', 'http://knowrob.org/kb/srdl2-comp.owl#MappingSoftware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Software components that build environment maps from sensor data');


-- { _id: 5fdca0accdbb4f1c41339ed8 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (599, x'5FDCA0ACCDBB4F1C41339ED8', 'http://knowrob.org/kb/srdl2-comp.owl#MecanumWheel', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A wheel that can move a vehicle in any direction on the surface plane.');


-- { _id: 5fdca0accdbb4f1c41339ee7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (600, x'5FDCA0ACCDBB4F1C41339EE7', 'http://knowrob.org/kb/srdl2-comp.owl#MechanicalGripper', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A robot hand with fingers that can wrap around objects.');


-- { _id: 5fdca0accdbb4f1c41339ef2 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (601, x'5FDCA0ACCDBB4F1C41339EF2', 'http://knowrob.org/kb/srdl2-comp.owl#MemoryDevice', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A device that stores information.');


-- { _id: 5fdca0accdbb4f1c41339ef7 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (602, x'5FDCA0ACCDBB4F1C41339EF7', 'http://knowrob.org/kb/srdl2-comp.owl#Microphone', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that converts sound waves into electrical energy.');


-- { _id: 5fdca0accdbb4f1c41339eff }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (603, x'5FDCA0ACCDBB4F1C41339EFF', 'http://knowrob.org/kb/srdl2-comp.owl#MonochromeCamera', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures light waves to create a picture where the light waves are encoded in monochrome color space.');


-- { _id: 5fdca0accdbb4f1c41339f08 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (604, x'5FDCA0ACCDBB4F1C41339F08', 'http://knowrob.org/kb/srdl2-comp.owl#MotionController', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Software components for planning motions of components of the robot (arms, hands,...)');


-- { _id: 5fdca0accdbb4f1c41339f17 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (605, x'5FDCA0ACCDBB4F1C41339F17', 'http://knowrob.org/kb/srdl2-comp.owl#OmniWheel', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A wheel that can move a vehicle forwards and backwards.');


-- { _id: 5fdca0accdbb4f1c41339f1a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (606, x'5FDCA0ACCDBB4F1C41339F1A', 'http://knowrob.org/kb/srdl2-comp.owl#OrientationSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures its orientation.');


-- { _id: 5fdca0accdbb4f1c41339f2a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (607, x'5FDCA0ACCDBB4F1C41339F2A', 'http://knowrob.org/kb/srdl2-comp.owl#PerceptionSoftware', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Software components that interpret sensor data to perceive the environment');


-- { _id: 5fdca0accdbb4f1c41339f33 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (608, x'5FDCA0ACCDBB4F1C41339F33', 'http://knowrob.org/kb/srdl2-comp.owl#Pressure', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Pressure is the force applied perpendicular to the surface of a physical object. The SI unit is pascal (Pa) but other units are also common (bar, pounds per squere inch).');


-- { _id: 5fdca0accdbb4f1c41339f38 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (609, x'5FDCA0ACCDBB4F1C41339F38', 'http://knowrob.org/kb/srdl2-comp.owl#PressureSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures pressure of gases or liquids.');


-- { _id: 5fdca0accdbb4f1c41339f41 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (610, x'5FDCA0ACCDBB4F1C41339F41', 'http://knowrob.org/kb/srdl2-comp.owl#RadiationSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures radiation.');


-- { _id: 5fdca0accdbb4f1c41339f54 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (611, x'5FDCA0ACCDBB4F1C41339F54', 'http://knowrob.org/kb/srdl2-comp.owl#Simulator', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Software components that allow the robot to simulate its environment or its actions');


-- { _id: 5fdca0adcdbb4f1c41339f57 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (612, x'5FDCA0ADCDBB4F1C41339F57', 'http://knowrob.org/kb/srdl2-comp.owl#SoundWaveSensor', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device that measures sound waves.');


-- { _id: 5fdca0adcdbb4f1c41339f5a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (613, x'5FDCA0ADCDBB4F1C41339F5A', 'http://knowrob.org/kb/srdl2-comp.owl#StereoCamera', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A sensor device measuring distance to surfaces of objects facing the camera to create a depth picture.');


-- { _id: 5fdca0adcdbb4f1c41339f5f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (614, x'5FDCA0ADCDBB4F1C41339F5F', 'http://knowrob.org/kb/srdl2-comp.owl#SuctionGripper', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A gripper that suctions objects it holds, e.g. by creating a vacuum. Often only useful with objects that have a flat surface.');


-- { _id: 5fdca0adcdbb4f1c41339f6a }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (615, x'5FDCA0ADCDBB4F1C41339F6A', 'http://knowrob.org/kb/srdl2-comp.owl#TrackedBase', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A robot base mounted on a track that is followed by the robot.');


-- { _id: 5fdca0adcdbb4f1c41339f72 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (616, x'5FDCA0ADCDBB4F1C41339F72', 'http://knowrob.org/kb/srdl2-comp.owl#WheeledBase', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A robot base with wheels that can move the robot by driving.');


-- { _id: 5fdca0adcdbb4f1c41339f7b }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (617, x'5FDCA0ADCDBB4F1C41339F7B', 'http://knowrob.org/kb/srdl2-comp.owl#2DLaserScanner', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A laser scanner where the laser beam ony covers 2D space.');


-- { _id: 5fdca0adcdbb4f1c41339f7e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (618, x'5FDCA0ADCDBB4F1C41339F7E', 'http://knowrob.org/kb/srdl2-comp.owl#3DLaserScanner', 'http://www.w3.org/2000/01/rdf-schema#comment', 'A laser scanner where the laser beams cover 3D space.');


-- { _id: 5fdca0adcdbb4f1c41339fa6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (619, x'5FDCA0ADCDBB4F1C41339FA6', 'http://knowrob.org/kb/urdf.owl#Span', 'http://www.w3.org/2000/01/rdf-schema#comment', 'The distance between the two finger tips with maximum distance.');


-- { _id: 5fdca0aecdbb4f1c4133a02f }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (620, x'5FDCA0AECDBB4F1C4133A02F', 'http://knowrob.org/kb/srdl2-cap.owl#Capability', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Taxonomy based capability representation');


-- { _id: 5fdca0b1cdbb4f1c4133a2f5 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (621, x'5FDCA0B1CDBB4F1C4133A2F5', 'http://knowrob.org/kb/IAI-kitchen.owl#Knob', 'http://www.w3.org/2000/01/rdf-schema#comment', 'It can be descrbed as usually round shaped object(although the shape can vary based on design), attached to surface of something (mostly doors or euipments) which can be used either for opening and closing in case of doors or starting and stoping in case of machines or equipments.');


-- { _id: 5fdca11dcdbb4f1c4133efdc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (622, x'5FDCA11DCDBB4F1C4133EFDC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_NEOMWFTX', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Action: FETCHING-AND-PLACING');


-- { _id: 5fdca11ecdbb4f1c4133f03d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (623, x'5FDCA11ECDBB4F1C4133F03D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_KRBHVQCZ', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :HAND -####- "right"');


-- { _id: 5fdca11ecdbb4f1c4133f03e }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (624, x'5FDCA11ECDBB4F1C4133F03E', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_KRBHVQCZ', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :POS -####- "holding_position"');


-- { _id: 5fdca11ecdbb4f1c4133f0ad }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (625, x'5FDCA11ECDBB4F1C4133F0AD', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_PKZNDBLS', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :WITH-HAND -####- "right"');


-- { _id: 5fdca11ecdbb4f1c4133f0c6 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (626, x'5FDCA11ECDBB4F1C4133F0C6', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_JSDHQWLU', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :WITH-HAND -####- "right"');


-- { _id: 5fdca121cdbb4f1c4133f3a3 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (627, x'5FDCA121CDBB4F1C4133F3A3', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_KEVOPSIW', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :PATH -####- "SM_Table_1"');


-- { _id: 5fdca121cdbb4f1c4133f40d }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (628, x'5FDCA121CDBB4F1C4133F40D', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_BDUIQOYR', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :TO -####- "SM_Table_1"');


-- { _id: 5fdca127cdbb4f1c41340041 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (629, x'5FDCA127CDBB4F1C41340041', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_UOXCNBLE', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :AT -####- #<CL-TRANSFORMS:3D-VECTOR (-289.0d0 -103.0d0 76.0d0)>');


-- { _id: 5fdca128cdbb4f1c413401ee }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (630, x'5FDCA128CDBB4F1C413401EE', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_BDMSRXOZ', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :FROM-HAND -####- "right"');


-- { _id: 5fdca128cdbb4f1c413401fc }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (631, x'5FDCA128CDBB4F1C413401FC', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_KONJYSLR', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :AT -####- #<CL-TRANSFORMS:3D-VECTOR (-289.0d0 -103.0d0 76.0d0)>');


-- { _id: 5fdca128cdbb4f1c41340225 }
INSERT INTO `5fdca422f5f14142fe678936_annotations` (`ID`, `_id`, `s`, `p`, `v`)
    VALUES
        (632, x'5FDCA128CDBB4F1C41340225', 'http://www.ontologydesignpatterns.org/ont/dul/DUL.owl#Action_NEOMWFTX', 'http://www.w3.org/2000/01/rdf-schema#comment', 'Unknown Parameter: :AT -####- #<CL-TRANSFORMS:3D-VECTOR (-289.0d0 -103.0d0 76.0d0)>');

