CREATE TABLE `meta` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `description` LONGTEXT,
    `image` LONGTEXT,
    `repo` LONGTEXT,
    `model_version` LONGTEXT,
    `visibility` BIT,
    `name` LONGTEXT,
    `url` LONGTEXT,
    `created_at` LONGTEXT,
    `created_by` LONGTEXT,
    `environment` LONGTEXT,
    `mail` LONGTEXT,
    `activity_fk` INTEGER,
    `agent` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `meta_keywords` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `String` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `meta_projects` (
    `ID` INTEGER NOT NULL,
    `parent_fk` INTEGER,
    `INDEX` INTEGER,
    `Object_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `meta_projects_Object` (
    `ID` INTEGER NOT NULL,
    `url` LONGTEXT,
    `name` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `meta_activity` (
    `ID` INTEGER NOT NULL,
    `name` LONGTEXT,
    `url` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `meta`
ADD CONSTRAINT `s3t_meta_meta_activity_0` FOREIGN KEY (`activity_fk`) REFERENCES `meta_activity`(`ID`);


ALTER TABLE `meta_keywords`
ADD CONSTRAINT `s3t_meta_keywords_meta_0` FOREIGN KEY (`parent_fk`) REFERENCES `meta`(`ID`);


ALTER TABLE `meta_projects`
ADD CONSTRAINT `s3t_meta_projects_meta_0` FOREIGN KEY (`parent_fk`) REFERENCES `meta`(`ID`),
ADD CONSTRAINT `s3t_meta_projects_meta_projects_Object_0` FOREIGN KEY (`Object_fk`) REFERENCES `meta_projects_Object`(`ID`);



-- { _id: 5fc8ff968f880006aa208e19 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (0, x'5FC8FF968F880006AA208E19', 'DEFAULT NEEM', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, NULL, NULL, 'DEFAULT NEEM DO NOT DELETE', 'neems/refills-2020-scanning shelves', '2020-12-03T16:09:10+00:00', 'Default', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (0, 0, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (1, 0, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (2, 0, 2, 'Kitchen');


-- { _id: 5fd0f191f3fc822d8e73d715 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (1, x'5FD0F191F3FC822D8E73D715', 'Episodic memories of a PR2 robot setting a table including a spoon, bowl and milk box in a simulated kitchen environment.', 'https://www.open-ease.org/wp-content/uploads/2020/12/spoon-drawer-bullet.png', 'ease-2020-projection-fetch-and-place', NULL, TRUE, 'PR2 robot setting up a table in bullet world', 'https://neemgit.informatik.uni-bremen.de/neems/ease-2020-pr2-setting-up-table', '2020-12-05T17:11:25+00:00', 'Sebastian Koralewski', NULL, 'seba@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (3, 1, 0, 'PR2');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (4, 1, 1, 'bowl');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (5, 1, 2, 'spoon');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (6, 1, 3, 'milk');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (7, 1, 4, 'pick-and-place');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (0, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (0, 1, 0, 0);


-- { _id: 5fd233c6742286993c1ded43 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (2, x'5FD233C6742286993C1DED43', 'Test NEEM for object meshes', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Kitchen NEEM with Object Mesh', 'neems/pr2-pick-and-place', '2020-12-10T15:42:14+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (8, 2, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (9, 2, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (10, 2, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (11, 2, 3, 'Retail');


-- { _id: 5fd78ff7525332aa81235858 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (3, x'5FD78FF7525332AA81235858', 'Test NEEM for object milk', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Kitchen NEEM with Milk', 'neems/pr2-pick-and-place', '2020-12-14T17:16:55+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (12, 3, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (13, 3, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (14, 3, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (15, 3, 3, 'Retail');


-- { _id: 5fd88322c6e46f72faf269f6 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (4, x'5FD88322C6E46F72FAF269F6', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, NULL, FALSE, 'NEEM for robot scanning shelves', 'neems/refills-2020-scanning shelves', '2020-12-15T10:34:26+00:00', 'Refills', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (16, 4, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (17, 4, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (18, 4, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (19, 4, 3, 'Retail');


-- { _id: 5fd8b0f822e0ae537cebe5c1 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (5, x'5FD8B0F822E0AE537CEBE5C1', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Avatar Neem', 'neems/pr2-pick-and-place', '2020-12-15T13:50:00+00:00', 'Mona', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (20, 5, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (21, 5, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (22, 5, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (23, 5, 3, 'Retail');


-- { _id: 5fd9de691a361e45dd825544 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (6, x'5FD9DE691A361E45DD825544', 'Kitchen Neem with cleaned TF', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Kitchen Neem with cleaned TF', 'neems/pr2-pick-and-place', '2020-12-16T11:16:09+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (24, 6, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (25, 6, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (26, 6, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (27, 6, 3, 'Retail');


-- { _id: 5fda3b44ae89a2477bdfdf55 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (7, x'5FDA3B44AE89A2477BDFDF55', 'Simulation Kitchen Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Simulation Kitchen Neem', 'neems/pr2-pick-and-place', '2020-12-16T17:52:20+00:00', 'Michael Neumann', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (28, 7, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (29, 7, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (30, 7, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (31, 7, 3, 'Retail');


-- { _id: 5fda3da3e96ee178f6997257 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (8, x'5FDA3DA3E96EE178F6997257', 'Episodic memories of a PR2 robot setting a table in a simulated laboratory kitchen environment at the University of Bremen.', 'https://www.open-ease.org/wp-content/uploads/2020/12/UNREAL_PR2.png', 'ease-2020-urobosim-fetch-and-place', NULL, FALSE, 'PR2 Robot setting up a table in simulated IAI laboratory kitchen environment', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2020-12-16T18:02:27+00:00', 'Michael Neumann', NULL, 'neumann.michael@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (32, 8, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (33, 8, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (34, 8, 2, 'Unreal');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (1, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (1, 8, 0, 1);


-- { _id: 5fdb5a0a7a4fcc99cc22780c }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (9, x'5FDB5A0A7A4FCC99CC22780C', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Avatar Neem', 'neems/pr2-pick-and-place', '2020-12-17T14:15:54+00:00', 'Mona', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (35, 9, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (36, 9, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (37, 9, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (38, 9, 3, 'Retail');


-- { _id: 5fdc8a28b9d040ec9e8ef8fc }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (10, x'5FDC8A28B9D040EC9E8EF8FC', 'NEEM where a PR2 setups a table for breakfast', NULL, NULL, NULL, NULL, 'Setting-Up-Playground', 'https://neemgit.informatik.uni-bremen.de/neems/ease-2020-pr2-setting-up-table', '2020-12-09T16:41:32+00:00', 'Sebastian Koralewski', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (39, 10, 0, 'PR2');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (40, 10, 1, 'setting-up-table');


-- { _id: 5fdc9319a10087f5b5c008c7 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (11, x'5FDC9319A10087F5B5C008C7', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Avatar Neem', 'neems/pr2-pick-and-place', '2020-12-18T12:31:37+00:00', 'Mona', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (41, 11, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (42, 11, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (43, 11, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (44, 11, 3, 'Retail');


-- { _id: 5fdc979f55605baa6a41da8c }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (12, x'5FDC979F55605BAA6A41DA8C', 'Episodic memories of a Kuka KMR-IIWA robot scanning the shelves in a simualated retail store environment.', 'https://db3pap006files.storage.live.com/y4mrn4BuZEMDHqd3kHnoliQMq2qxtny48_HgN3UwSyFhmORULbxDgdQ3PREJs7ERdtUdVO-YVTkujh41PuNX2vi5dhsX09-Xmfy3HCi_tonaZ5cz_B5XzRxYit5_U_Le_5cBdEAlDUs0dlWSR4fXlgh2SBV9NoKRckPDSFLiUZ96nQGx6nzCSE4jGLmpURelW9CAs4KQr9HOLGBFOMS-U69HA/Kuka_Robot-15.jpg?psid=1&width=1322&height=882', 'refills-shelf-scanning-simulation', NULL, TRUE, 'Kuka KMR-IIWA robot scanning retail shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning-simulation', '2020-12-18T12:50:55+00:00', 'Simon Stelter', NULL, 'stelter@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (45, 12, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (46, 12, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (47, 12, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (48, 12, 3, 'Retail');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (2, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (2, 12, 0, 2);

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (3, 'http://www.refills-project.eu/', 'Refills');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (3, 12, 1, 3);


-- { _id: 5fdca09838feeb6c912dda9c }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (13, x'5FDCA09838FEEB6C912DDA9C', 'Kitchen Neem with Spoon and Cereal', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Kitchen Neem with Spoon and Cereal', 'neems/pr2-pick-and-place', '2020-12-18T13:29:12+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (49, 13, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (50, 13, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (51, 13, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (52, 13, 3, 'Retail');


-- { _id: 5fdca2bcdab33892cea161a0 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (14, x'5FDCA2BCDAB33892CEA161A0', 'Episodic memories of a human operator performing fetch and place tasks in a simulated environment by controlling an avatar mimicking the body of a human.', 'https://www.open-ease.org/wp-content/uploads/2020/12/Avater_Unreal.png', 'ease-2020-avatar-fetch-and-place', NULL, TRUE, 'Human avatar performing fetch and place task', 'https://neemgit.informatik.uni-bremen.de/neems/ease-2020-avatar-fetch-and-place-episode', '2020-12-18T13:38:20+00:00', 'Mona Abdel-Keream', NULL, 'abdelker@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (53, 14, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (54, 14, 1, 'Human');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (4, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (4, 14, 0, 4);


-- { _id: 5fdca422f5f14142fe678936 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (15, x'5FDCA422F5F14142FE678936', 'Avatar Neem 3', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Avatar Neem 3', 'neems/pr2-pick-and-place', '2020-12-18T13:44:18+00:00', 'Mona', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (55, 15, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (56, 15, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (57, 15, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (58, 15, 3, 'Retail');


-- { _id: 5fdca76498451d248b36a544 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (16, x'5FDCA76498451D248B36A544', 'Avatar Neem 2', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Avatar Neem 2', 'neems/pr2-pick-and-place', '2020-12-18T13:58:12+00:00', 'Mona', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (59, 16, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (60, 16, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (61, 16, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (62, 16, 3, 'Retail');


-- { _id: 5fdcdbd3f3cae32bacc27677 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (17, x'5FDCDBD3F3CAE32BACC27677', 'Kitchen Neem with Milk', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Kitchen Neem with Milk', 'neems/pr2-pick-and-place', '2020-12-18T17:41:55+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (63, 17, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (64, 17, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (65, 17, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (66, 17, 3, 'Retail');


-- { _id: 5fdd0b742efcb19602be9dcc }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (18, x'5FDD0B742EFCB19602BE9DCC', 'Complete Kitchen Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, NULL, NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2020-12-18T21:05:08+00:00', 'Sebastian', NULL, NULL, NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (67, 18, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (68, 18, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (69, 18, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (70, 18, 3, 'Retail');


-- { _id: 5ffc6f717a5e2f7b7898eb74 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (19, x'5FFC6F717A5E2F7B7898EB74', 'Episodic memories of a PR2 robot setting a table including a spoon, bowl and milk box in a simulated kitchen environment.', 'https://www.open-ease.org/wp-content/uploads/2020/12/spoon-drawer-bullet.png', 'ease-2020-projection-fetch-and-place', NULL, FALSE, 'PR2 robot setting up a table in bullet world', 'https://neemgit.informatik.uni-bremen.de/neems/ease-2020-pr2-setting-up-table', '2021-01-11T17:11:25+00:00', 'Sebastian Koralewski', NULL, 'seba@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (71, 19, 0, 'PR2');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (72, 19, 1, 'bowl');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (73, 19, 2, 'spoon');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (74, 19, 3, 'milk');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (75, 19, 4, 'pick-and-place');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (5, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (5, 19, 0, 5);


-- { _id: 5fff20f376bed2f3c389e840 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (0, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (20, x'5FFF20F376BED2F3C389E840', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning-simulation', '2021-01-13T17:33:55+00:00', 'Refills', 'Retail', NULL, 0, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (76, 20, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (77, 20, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (78, 20, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (79, 20, 3, 'Retail');


-- { _id: 600012448c6a8e4067cde7b3 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (1, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (21, x'600012448C6A8E4067CDE7B3', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning-simulation', '2021-01-14T10:43:32+00:00', 'Refills', 'Retail', NULL, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (80, 21, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (81, 21, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (82, 21, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (83, 21, 3, 'Retail');


-- { _id: 60056630c55325ae8fa54c38 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (2, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (22, x'60056630C55325AE8FA54C38', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-01-18T11:42:56+00:00', 'Mona', 'Kitchen', NULL, 2, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (84, 22, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (85, 22, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (86, 22, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (87, 22, 3, 'Retail');


-- { _id: 600701166e7b30aae2f2386c }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (3, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (23, x'600701166E7B30AAE2F2386C', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-19T16:56:06+00:00', 'Simon Stelter', 'Retail', NULL, 3, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (88, 23, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (89, 23, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (90, 23, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (91, 23, 3, 'Retail');


-- { _id: 6007f3f8859a9a5a93948b05 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (4, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (24, x'6007F3F8859A9A5A93948B05', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-01-20T10:12:24+00:00', 'Mona', 'Kitchen', NULL, 4, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (92, 24, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (93, 24, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (94, 24, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (95, 24, 3, 'Retail');


-- { _id: 600855c7fe23c7b827ffadac }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (5, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (25, x'600855C7FE23C7B827FFADAC', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-20T17:09:43+00:00', 'Simon Stelter', 'Retail', NULL, 5, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (96, 25, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (97, 25, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (98, 25, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (99, 25, 3, 'Retail');


-- { _id: 600855d39a20c838a01afb2c }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (6, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (26, x'600855D39A20C838A01AFB2C', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-20T17:09:55+00:00', 'Simon Stelter', 'Retail', NULL, 6, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (100, 26, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (101, 26, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (102, 26, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (103, 26, 3, 'Retail');


-- { _id: 600866c32a4b5acec372653b }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (7, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (27, x'600866C32A4B5ACEC372653B', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-20T18:22:11+00:00', 'Simon Stelter', 'Retail', NULL, 7, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (104, 27, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (105, 27, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (106, 27, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (107, 27, 3, 'Retail');


-- { _id: 6009b6670644a281fbad3657 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (8, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (28, x'6009B6670644A281FBAD3657', 'NEEM for scanning shelves. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-21T18:14:15+00:00', 'Simon Stelter', 'Retail', NULL, 8, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (108, 28, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (109, 28, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (110, 28, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (111, 28, 3, 'Retail');


-- { _id: 601042627e765711e2c10ab0 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (29, x'601042627E765711E2C10AB0', 'Episodic memories of a Kuka KMR-IIWA robot scanning the shelves in a retail store environment.', 'https://db3pap006files.storage.live.com/y4mrn4BuZEMDHqd3kHnoliQMq2qxtny48_HgN3UwSyFhmORULbxDgdQ3PREJs7ERdtUdVO-YVTkujh41PuNX2vi5dhsX09-Xmfy3HCi_tonaZ5cz_B5XzRxYit5_U_Le_5cBdEAlDUs0dlWSR4fXlgh2SBV9NoKRckPDSFLiUZ96nQGx6nzCSE4jGLmpURelW9CAs4KQr9HOLGBFOMS-U69HA/Kuka_Robot-15.jpg?psid=1&width=1322&height=882', 'refills-shelf-scanning', NULL, TRUE, 'Kuka KMR-IIWA robot scanning retail shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning', '2021-01-26T17:25:06+00:00', 'Simon Stelter', NULL, 'stelter@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (112, 29, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (113, 29, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (114, 29, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (115, 29, 3, 'Retail');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (6, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (6, 29, 0, 6);

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (7, 'http://www.refills-project.eu/', 'Refills');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (7, 29, 1, 7);


-- { _id: 602d22cbe9cd86989e89615a }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (9, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (30, x'602D22CBE9CD86989E89615A', 'Bullet World Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-02-17T15:06:03+00:00', 'Sebastian', 'Kitchen', NULL, 9, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (116, 30, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (117, 30, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (118, 30, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (119, 30, 3, 'Retail');


-- { _id: 603127322113d53026863697 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (31, x'603127322113D53026863697', 'Episodic memories of a PR2 robot setting a table in a simulated laboratory kitchen environment at the University of Bremen.', 'https://www.open-ease.org/wp-content/uploads/2020/12/UNREAL_PR2.png', 'ease-2020-urobosim-fetch-and-place', NULL, TRUE, 'PR2 Robot setting up a table in simulated IAI laboratory kitchen environment', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2020-12-16T18:02:27+00:00', 'Michael Neumann', NULL, 'neumann.michael@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (120, 31, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (121, 31, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (122, 31, 2, 'Unreal');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (8, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (8, 31, 0, 8);


-- { _id: 6033cba773071d84fd0c7ce7 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (10, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (32, x'6033CBA773071D84FD0C7CE7', 'UROBSIM Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-02-22T16:20:07+00:00', 'Michael Neumann', 'Kitchen', NULL, 10, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (123, 32, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (124, 32, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (125, 32, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (126, 32, 3, 'Retail');


-- { _id: 6035103c6eacbb96a5736eb5 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (11, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (33, x'6035103C6EACBB96A5736EB5', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-02-23T15:25:00+00:00', 'Mona Abdel-Keream', 'Kitchen', NULL, 11, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (127, 33, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (128, 33, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (129, 33, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (130, 33, 3, 'Retail');


-- { _id: 60391798bd0858dfb1aaccfd }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (34, x'60391798BD0858DFB1AACCFD', 'Episodic memories of a human operator performing table setting in a simulated virtual reality environment.', 'https://i.imgur.com/mGaBUnq.png', 'ease-2020-kitchenclash-set-table', '0.1', TRUE, 'Set the table for two persons.', 'https://neemgit.informatik.uni-bremen.de/neems/kitchenclash', '2021-02-25T14:13:20+00:00', 'Johannes Pfau', 'Kitchen', 'jpfau@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (131, 34, 0, 'KitchenClash');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (9, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (9, 34, 0, 9);


-- { _id: 60392c01ac14f9c7daab8e2b }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (35, x'60392C01AC14F9C7DAAB8E2B', 'Episodic memories of a human operator preparing a basic cucumber salad in a simulated virtual reality environment.', 'https://i.imgur.com/hSnydEb.png', 'ease-2020-kitchenclash-prepare-cucumber-salad', '0.1', FALSE, 'Prepare a basic cucumber salad.', 'https://neemgit.informatik.uni-bremen.de/neems/kitchenclash', '2021-02-25T14:13:20+00:00', 'Johannes Pfau', 'Kitchen', 'jpfau@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (132, 35, 0, 'KitchenClash');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (10, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (10, 35, 0, 10);


-- { _id: 603932bebca1070a4784e0c8 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (36, x'603932BEBCA1070A4784E0C8', 'Episodic memories of a human operator preparing a steak in a simulated virtual reality environment.', 'https://i.imgur.com/B0Qsrnq.png', 'ease-2020-kitchenclash-prepare-a-steak', '0.1', FALSE, 'Prepare a steak.', 'https://neemgit.informatik.uni-bremen.de/neems/kitchenclash', '2021-02-25T14:13:20+00:00', 'Johannes Pfau', 'Kitchen', 'jpfau@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (133, 36, 0, 'KitchenClash');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (11, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (11, 36, 0, 11);


-- { _id: 603ceb673566dfb8a2b8b47d }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (12, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (37, x'603CEB673566DFB8A2B8B47D', 'Avatar Neem', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Complete Kitchen Neem', 'neems/pr2-pick-and-place', '2021-03-01T14:25:59+00:00', 'Mona Abdel-Keream', 'Kitchen', NULL, 12, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (134, 37, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (135, 37, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (136, 37, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (137, 37, 3, 'Retail');


-- { _id: 603e560da63be060ab5c0a4c }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (13, 'Shelves scanning', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (38, x'603E560DA63BE060AB5C0A4C', 'NEEM for scanning shelves.', 'https://www.innovations-report.de/wp-content/uploads/post-pictures/ro_686792-750x422.jpg', NULL, '0.1', NULL, 'NEEM for robot scanning shelves', 'https://neemgit.informatik.uni-bremen.de/neems/refills-shelf-scanning-simulation', '2021-03-02T16:13:17+00:00', 'Refills', 'Retail', NULL, 13, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (138, 38, 0, 'Shelves');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (139, 38, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (140, 38, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (141, 38, 3, 'Retail');


-- { _id: 603e6b80c4c85f740b753247 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (39, x'603E6B80C4C85F740B753247', 'Multimodal dataset of human table setting.', 'https://owncloud.csl.uni-bremen.de/s/TCRQ8AS7X2smqRR/preview', 'ease-2020-elan-table-setting', '0.1', FALSE, 'EASE Table Setting Dataset', 'https://neemgit.informatik.uni-bremen.de/neems/ease-tsd', '2021-02-26T15:12:12+00:00', 'Moritz', 'Kitchen', 'mome@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (142, 39, 0, 'EASE-TSD');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (143, 39, 1, 'Table Setting');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (144, 39, 2, 'Think-Aloud Protocols');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (12, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (12, 39, 0, 12);


-- { _id: 603f2d41834754314fb973a3 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (40, x'603F2D41834754314FB973A3', 'Multimodal dataset of human table setting.', 'https://owncloud.csl.uni-bremen.de/s/TCRQ8AS7X2smqRR/preview', 'ease-2020-elan-table-setting', '0.1', FALSE, 'EASE Table Setting Dataset', 'https://neemgit.informatik.uni-bremen.de/neems/ease-tsd', '2021-02-26T15:12:12+00:00', 'Mome', 'Kitchen', 'mome@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (145, 40, 0, 'EASE-TSD');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (146, 40, 1, 'Table Setting');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (147, 40, 2, 'Think-Aloud Protocols');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (13, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (13, 40, 0, 13);


-- { _id: 6082c4197bde3a6bd233d477 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (41, x'6082C4197BDE3A6BD233D477', 'Multimodal dataset of human table setting.', 'https://owncloud.csl.uni-bremen.de/s/TCRQ8AS7X2smqRR/preview', 'ease-2020-elan-table-setting', '0.1', TRUE, 'EASE Table Setting Dataset', 'https://neemgit.informatik.uni-bremen.de/neems/ease-tsd', '2021-04-23T14:55:12+00:00', 'Moritz', 'Kitchen', 'mome@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (148, 41, 0, 'EASE-TSD');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (149, 41, 1, 'Table Setting');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (150, 41, 2, 'Think-Aloud Protocols');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (14, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (14, 41, 0, 14);


-- { _id: 610d44f3fc88ac442a0b20ab }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (42, x'610D44F3FC88AC442A0B20AB', 'IAI student NEEM for teaching purpose.', 'https://ease-crc.github.io/soma/images/thinker.jpg', 'iaistudentrobot', '0.1', FALSE, 'IAI student robot', 'https://neemgit.informatik.uni-bremen.de/neems/iaistudentrobot', '2021-04-23T14:55:12+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (151, 42, 0, 'IMPROVER');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (152, 42, 1, 'Simple Robot');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (15, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (15, 42, 0, 15);


-- { _id: 6155c8416dff5d779421feba }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (43, x'6155C8416DFF5D779421FEBA', 'Episodic memories of a PR2 robot setting a table in a simulated laboratory kitchen environment at the University of Bremen.', 'https://www.open-ease.org/wp-content/uploads/2020/12/UNREAL_PR2.png', 'urobosim-milk-trash-bin', '0.1', TRUE, 'PR2 Robot throwing away milk in simulated IAI laboratory kitchen environment', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-milk-trash-bin', '2021-09-30T16:22:57+00:00', 'Michael Neumann', NULL, 'neumann.michael@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (153, 43, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (154, 43, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (155, 43, 2, 'Unreal');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (16, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (16, 43, 0, 16);


-- { _id: 615ee5096137204912edee7a }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (44, x'615EE5096137204912EDEE7A', 'Episodic memories of a PR2 robot setting a table in a simulated laboratory kitchen environment at the University of Bremen.', 'https://www.open-ease.org/wp-content/uploads/2020/12/UNREAL_PR2.png', 'ease-2020-urobosim-fetch-and-place', NULL, FALSE, 'PR2 Robot setting up a table in simulated IAI laboratory kitchen environment', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2020-12-16T18:02:27+00:00', 'Michael Neumann', NULL, 'neumann.michael@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (156, 44, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (157, 44, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (158, 44, 2, 'Unreal');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (17, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (17, 44, 0, 17);


-- { _id: 618263960c6b7e50e79394c6 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (14, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (45, x'618263960C6B7E50E79394C6', 'Popcorn Demo', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', FALSE, 'Popcorn Demo of the PR2', 'neems/pr2-popcorn-demo', '2021-11-03T11:25:26+00:00', 'Alina Hawkin', 'Kitchen', NULL, 14, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (159, 45, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (160, 45, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (161, 45, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (162, 45, 3, 'Retail');


-- { _id: 61b9f40894357c04ca9bb043 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (46, x'61B9F40894357C04CA9BB043', 'Episodic memories of human participants performing a vertical planar movement with a virtual spoon.', 'https://i.imgur.com/cs1gBma.png', 'ease-mad-vertical-movement-vr', '0.1', TRUE, 'ease-mad-vertical-movement-vr', 'https://neemgit.informatik.uni-bremen.de/neems/ease-mad-vertical-movement-vr', '2021-12-15T12:48:00+00:00', 'Jaime Maldonado', 'Kitchen', 'jmaldonado@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (163, 46, 0, 'EASE');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (164, 46, 1, 'spoon');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (165, 46, 2, 'putting down');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (166, 46, 3, 'vertical movement');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (167, 46, 4, 'planar movement');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (168, 46, 5, 'virtual environment');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (169, 46, 6, 'target velocity');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (18, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (18, 46, 0, 18);


-- { _id: 6273e75de9ed31d64f14b8e8 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (15, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (47, x'6273E75DE9ED31D64F14B8E8', 'Simulation-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Hololens Test', 'neems/pr2-popcorn-demo-test', '2022-05-05T17:03:57+00:00', 'Michael Neumann', 'Kitchen', NULL, 15, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (170, 47, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (171, 47, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (172, 47, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (173, 47, 3, 'Retail');


-- { _id: 62a323eda3a0a7d4e3576718 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (16, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (48, x'62A323EDA3A0A7D4E3576718', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-06-10T12:58:53+00:00', 'Michael Neumann', 'Kitchen', NULL, 16, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (174, 48, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (175, 48, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (176, 48, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (177, 48, 3, 'Retail');


-- { _id: 62b9cc6f1ba82bb55ec8ca91 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (49, x'62B9CC6F1BA82BB55EC8CA91', 'Waterfront store map', 'https://i.imgur.com/85s45nq.png', 'waterfrontstore', '0.1', FALSE, 'SemanticMap', 'https://neemgit.informatik.uni-bremen.de/neems/waterfrontstore', '2022-06-24T12:20:00+00:00', 'Kaviya', 'Retail store', 'kaviya@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (178, 49, 0, 'Waterfront store');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (179, 49, 1, 'Semantic map');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (19, 'https://knowledge4retail.org/en/home-2', 'K4R');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (19, 49, 0, 19);


-- { _id: 62cffb50c83ee512985bcd07 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (17, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (50, x'62CFFB50C83EE512985BCD07', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-14T13:17:36+00:00', 'Michael Neumann', 'Kitchen', NULL, 17, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (180, 50, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (181, 50, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (182, 50, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (183, 50, 3, 'Retail');


-- { _id: 62d13541761cd73cf24db65e }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (18, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (51, x'62D13541761CD73CF24DB65E', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T11:37:05+00:00', 'Michael Neumann', 'Kitchen', NULL, 18, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (184, 51, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (185, 51, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (186, 51, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (187, 51, 3, 'Retail');


-- { _id: 62d1428dea517ac85ecb3e6e }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (19, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (52, x'62D1428DEA517AC85ECB3E6E', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T12:33:49+00:00', 'Michael Neumann', 'Kitchen', NULL, 19, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (188, 52, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (189, 52, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (190, 52, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (191, 52, 3, 'Retail');


-- { _id: 62d168984257e560f5d9a142 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (20, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (53, x'62D168984257E560F5D9A142', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T15:16:08+00:00', 'Michael Neumann', 'Kitchen', NULL, 20, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (192, 53, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (193, 53, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (194, 53, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (195, 53, 3, 'Retail');


-- { _id: 62d172c9420696b68fc18136 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (21, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (54, x'62D172C9420696B68FC18136', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T15:59:37+00:00', 'Michael Neumann', 'Kitchen', NULL, 21, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (196, 54, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (197, 54, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (198, 54, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (199, 54, 3, 'Retail');


-- { _id: 62d1811b562fec847a7a7934 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (22, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (55, x'62D1811B562FEC847A7A7934', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T17:00:43+00:00', 'Michael Neumann', 'Kitchen', NULL, 22, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (200, 55, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (201, 55, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (202, 55, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (203, 55, 3, 'Retail');


-- { _id: 62d1812fad229768921b9ef8 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (23, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (56, x'62D1812FAD229768921B9EF8', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-15T17:01:03+00:00', 'Michael Neumann', 'Kitchen', NULL, 23, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (204, 56, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (205, 56, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (206, 56, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (207, 56, 3, 'Retail');


-- { _id: 62d5728ee102d1cdf64f0ca4 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (24, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (57, x'62D5728EE102D1CDF64F0CA4', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-07-18T16:47:42+00:00', 'Michael Neumann', 'Kitchen', NULL, 24, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (208, 57, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (209, 57, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (210, 57, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (211, 57, 3, 'Retail');


-- { _id: 62d5729bb3869a9a9c942f24 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (25, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (58, x'62D5729BB3869A9A9C942F24', 'Episodic memories of a PR2 robot setting a table in a simulated laboratory kitchen environment at the University of Bremen.', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', 'URoboSim-Tablesetting', '0.1', TRUE, 'Urobosim PR2 setting a table', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2022-07-18T16:47:55+00:00', 'Michael Neumann', 'Kitchen', NULL, 25, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (212, 58, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (213, 58, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (214, 58, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (215, 58, 3, 'Retail');


-- { _id: 62fb72bf9d2499f0ea4e9fc0 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (59, x'62FB72BF9D2499F0EA4E9FC0', 'The pouring neem simulation with Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Pouring.png', 'pouring-simulation-unreal', '0.1', FALSE, 'Pouring simulation', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2022-08-15T11:50:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (216, 59, 0, 'simulation');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (20, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (20, 59, 0, 20);


-- { _id: 62fcf3cf9be2d91abd31233e }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (60, x'62FCF3CF9BE2D91ABD31233E', 'The pouring neem simulation with Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Pouring.png', 'pouring-simulation-unreal', '0.1', TRUE, 'Pouring simulation', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2022-08-15T11:50:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (217, 60, 0, 'simulation');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (21, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (21, 60, 0, 21);


-- { _id: 63060cebff954444bfd0ebb0 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (61, x'63060CEBFF954444BFD0EBB0', 'TIAGO Robot empty NEEM.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/tiago_robot.png', 'iaistudentrobot', '0.1', NULL, 'TIAGO Robot empty NEEM', 'https://neemgit.informatik.uni-bremen.de/neems/iaistudentrobot', '2022-08-24T09:45:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (218, 61, 0, 'TIAGO Robot');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (22, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (22, 61, 0, 22);


-- { _id: 630614f0ff954448f792b2c3 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (62, x'630614F0FF954448F792B2C3', 'TIAGO Robot empty NEEM.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/tiago_robot.png', 'iaistudentrobot', '0.1', FALSE, 'TIAGO Robot empty NEEM', 'https://neemgit.informatik.uni-bremen.de/neems/iaistudentrobot', '2022-08-24T09:45:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (219, 62, 0, 'TIAGO Robot');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (23, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (23, 62, 0, 23);


-- { _id: 6308a86683758a3f61e1a1e4 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (26, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (63, x'6308A86683758A3F61E1A1E4', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-08-26T13:03:02+00:00', 'Michael Neumann', 'Kitchen', NULL, 26, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (220, 63, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (221, 63, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (222, 63, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (223, 63, 3, 'Retail');


-- { _id: 6310d1c044e21b458c2500ab }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (27, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (64, x'6310D1C044E21B458C2500AB', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-01T17:37:36+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 27, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (224, 64, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (225, 64, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (226, 64, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (227, 64, 3, 'Retail');


-- { _id: 6310d1da92f12c1865e4b846 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (28, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (65, x'6310D1DA92F12C1865E4B846', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-01T17:38:02+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 28, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (228, 65, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (229, 65, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (230, 65, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (231, 65, 3, 'Retail');


-- { _id: 6319e5d9ff9544481f48ac9b }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (66, x'6319E5D9FF9544481F48AC9B', 'The pouring neem performed by human in Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/pouring_with_hands.png', 'pouring-with-humans-unreal', '0.1', TRUE, 'Pouring VR demonstration', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2022-08-15T11:50:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (232, 66, 0, 'pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (24, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (24, 66, 0, 24);


-- { _id: 63204384ff9544794e1eaa1f }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (67, x'63204384FF9544794E1EAA1F', 'The pouring popcorn neem performed by human in Unreal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Popcorn_Poruing.png', 'pouring-popcorn-with-humans-unreal', '0.1', FALSE, 'Pouring VR demonstration', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2022-08-15T11:50:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (233, 67, 0, 'popcorn pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (25, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (25, 67, 0, 25);


-- { _id: 63207c69ff95440ac58600d6 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (68, x'63207C69FF95440AC58600D6', 'The pouring popcorn neem performed by human in Unreal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Popcorn_Poruing.png', 'pouring-popcorn-with-humans-unreal', '0.1', TRUE, 'Pouring VR demonstration', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2022-08-15T11:50:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (234, 68, 0, 'popcorn pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (26, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (26, 68, 0, 26);


-- { _id: 6321c7e332ac7facffa96647 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (29, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (69, x'6321C7E332AC7FACFFA96647', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-14T14:24:03+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 29, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (235, 69, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (236, 69, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (237, 69, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (238, 69, 3, 'Retail');


-- { _id: 6321cb3cbd7c0949f4576ef2 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (30, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (70, x'6321CB3CBD7C0949F4576EF2', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-14T14:38:20+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 30, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (239, 70, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (240, 70, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (241, 70, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (242, 70, 3, 'Retail');


-- { _id: 6321cd56fe5eb63d8b7b7567 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (31, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (71, x'6321CD56FE5EB63D8B7B7567', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-14T14:47:18+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 31, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (243, 71, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (244, 71, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (245, 71, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (246, 71, 3, 'Retail');


-- { _id: 63342f4d353424d03a1ef59a }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (32, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (72, x'63342F4D353424D03A1EF59A', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-28T13:26:05+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 32, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (247, 72, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (248, 72, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (249, 72, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (250, 72, 3, 'Retail');


-- { _id: 63344d58fdf71c9d7210d24e }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (33, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (73, x'63344D58FDF71C9D7210D24E', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-28T15:34:16+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 33, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (251, 73, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (252, 73, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (253, 73, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (254, 73, 3, 'Retail');


-- { _id: 633592ff022842bd856ba42a }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (34, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (74, x'633592FF022842BD856BA42A', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-29T14:43:43+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 34, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (255, 74, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (256, 74, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (257, 74, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (258, 74, 3, 'Retail');


-- { _id: 63371bcd044d9f7579fdf564 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (35, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (75, x'63371BCD044D9F7579FDF564', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-09-30T18:39:41+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 35, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (259, 75, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (260, 75, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (261, 75, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (262, 75, 3, 'Retail');


-- { _id: 633819942a459501ef4d4209 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (36, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (76, x'633819942A459501EF4D4209', 'Episodic memories of a PR2 robot setting a table in a simulated apartment environment at the University of Bremen.', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', 'URoboSim-Apartment-Tablesetting', '0.1', TRUE, 'Urobosim PR2 setting a table in Apartment environment', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2022-10-01T12:42:28+00:00', 'Michael Neumann', 'Kitchen', NULL, 36, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (263, 76, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (264, 76, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (265, 76, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (266, 76, 3, 'Retail');


-- { _id: 6346c6c8f0d7e5f5e3a0ced0 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (37, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (77, x'6346C6C8F0D7E5F5E3A0CED0', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-12T15:53:12+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 37, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (267, 77, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (268, 77, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (269, 77, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (270, 77, 3, 'Retail');


-- { _id: 634eb1cd720bd771f7e22405 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (38, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (78, x'634EB1CD720BD771F7E22405', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-18T16:01:49+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 38, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (271, 78, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (272, 78, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (273, 78, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (274, 78, 3, 'Retail');


-- { _id: 635000b9c6182568e1a5917d }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (39, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (79, x'635000B9C6182568E1A5917D', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-19T15:50:49+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 39, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (275, 79, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (276, 79, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (277, 79, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (278, 79, 3, 'Retail');


-- { _id: 63500f84a6d0298449455703 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (40, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (80, x'63500F84A6D0298449455703', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-19T16:53:56+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 40, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (279, 80, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (280, 80, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (281, 80, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (282, 80, 3, 'Retail');


-- { _id: 6356be60343385d7f54dbd48 }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (41, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (81, x'6356BE60343385D7F54DBD48', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-24T18:33:36+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 41, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (283, 81, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (284, 81, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (285, 81, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (286, 81, 3, 'Retail');


-- { _id: 6357e04be68e14b7e294aa3e }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (42, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (82, x'6357E04BE68E14B7E294AA3E', 'UROBSIM-test', 'https://www.uni-bremen.de/fileadmin/_processed_/1/a/csm_csm_20200212_KI_Ranking_Copyright_SFB_EASE_Universitaet_Bremen_806dcbaae9_94500cca75.jpg', NULL, '0.1', NULL, 'Kitchen Test', 'neems/pr2-popcorn-demo-test', '2022-10-25T15:10:35+00:00', 'Sascha Jongebloed', 'Kitchen', NULL, 42, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (287, 82, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (288, 82, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (289, 82, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (290, 82, 3, 'Retail');


-- { _id: 6357fad897fdbc7c4d98ccbc }
INSERT INTO `meta_activity` (`ID`, `name`, `url`)
    VALUES
        (43, 'Kitchen activity', 'http://www.ease-crc.org/ont/SOMA.owl');

INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (83, x'6357FAD897FDBC7C4D98CCBC', 'Experiment of PR2 making Popcorn in Bullet-Projection', 'https://pbs.twimg.com/media/EE0Hx8HX4AE1iKP.jpg', 'Popcorn-Demo-In-Projection', '0.1', TRUE, 'Kitchen Test', 'https://neemgit.informatik.uni-bremen.de/neems/urobosim-kitchen-fetch-place', '2022-10-25T17:03:52+00:00', 'Alina Hawkin', 'Kitchen', NULL, 43, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (291, 83, 0, 'Kitchen');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (292, 83, 1, 'Robot');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (293, 83, 2, 'Refills');

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (294, 83, 3, 'Retail');


-- { _id: 63ca8c87bf8aaacc31c905f8 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (84, x'63CA8C87BF8AAACC31C905F8', 'The pouring neem in IAI apartment lab performed by human in Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Pouring_apartment.png', 'pouring-with-humans-unreal', '0.1', FALSE, 'Pouring VR demonstration in new apartment lab', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2023-01-13T16:30:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (295, 84, 0, 'pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (27, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (27, 84, 0, 27);


-- { _id: 63d25b44a924e33cd9ca2591 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (85, x'63D25B44A924E33CD9CA2591', 'The pouring neem in IAI apartment lab performed by human in Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Pouring_apartment.png', 'pouring-with-humans-unreal', '0.1', FALSE, 'Pouring VR demonstration in new apartment lab', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2023-01-13T16:30:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (296, 85, 0, 'pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (28, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (28, 85, 0, 28);


-- { _id: 63d93736bc1f60335b4418d7 }
INSERT INTO `meta` (`ID`, `_id`, `description`, `image`, `repo`, `model_version`, `visibility`, `name`, `url`, `created_at`, `created_by`, `environment`, `mail`, `activity_fk`, `agent`)
    VALUES
        (86, x'63D93736BC1F60335B4418D7', 'The pouring neem in IAI apartment lab performed by human in Uneal engine.', 'https://raw.githubusercontent.com/AbhijitVyas/Images/master/Pouring_apartment.png', 'pouring-with-humans-unreal', '0.1', TRUE, 'Pouring VR demonstration in new apartment lab', 'https://neemgit.informatik.uni-bremen.de/neems/pouring-simulation-unreal', '2023-01-13T16:30:00+00:00', 'Abhijit', 'Kitchen', 'avyas@uni-bremen.de', NULL, NULL);

INSERT INTO `meta_keywords` (`ID`, `parent_fk`, `INDEX`, `String`)
    VALUES
        (297, 86, 0, 'pouring demo');

INSERT INTO `meta_projects_Object` (`ID`, `url`, `name`)
    VALUES
        (29, 'https://ease-crc.org/', 'EASE');

INSERT INTO `meta_projects` (`ID`, `parent_fk`, `INDEX`, `Object_fk`)
    VALUES
        (29, 86, 0, 29);

