CREATE TABLE `5fdca422f5f14142fe678936_tf` (
    `ID` INTEGER NOT NULL,
    `_id` VARBINARY(12),
    `header_fk` INTEGER,
    `child_frame_id` LONGTEXT,
    `transform_fk` INTEGER,
    `__recorded` DATETIME,
    `__topic` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_tf_header` (
    `ID` INTEGER NOT NULL,
    `seq` INTEGER,
    `stamp` DATETIME,
    `frame_id` LONGTEXT,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_tf_transform` (
    `ID` INTEGER NOT NULL,
    `translation_fk` INTEGER,
    `rotation_fk` INTEGER,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_tf_transform_translation` (
    `ID` INTEGER NOT NULL,
    `x` DOUBLE,
    `y` DOUBLE,
    `z` DOUBLE,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


CREATE TABLE `5fdca422f5f14142fe678936_tf_transform_rotation` (
    `ID` INTEGER NOT NULL,
    `x` DOUBLE,
    `y` DOUBLE,
    `z` DOUBLE,
    `w` DOUBLE,
    PRIMARY KEY (`ID`)
) CHARSET=utf8mb4;


ALTER TABLE `5fdca422f5f14142fe678936_tf`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__0` FOREIGN KEY (`header_fk`) REFERENCES `5fdca422f5f14142fe678936_tf_header`(`ID`),
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__1` FOREIGN KEY (`transform_fk`) REFERENCES `5fdca422f5f14142fe678936_tf_transform`(`ID`);


ALTER TABLE `5fdca422f5f14142fe678936_tf_transform`
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__3` FOREIGN KEY (`rotation_fk`) REFERENCES `5fdca422f5f14142fe678936_tf_transform_rotation`(`ID`),
ADD CONSTRAINT `s3t_5fdca422f5f14142fe678936__5fdca422f5f14142fe678936__2` FOREIGN KEY (`translation_fk`) REFERENCES `5fdca422f5f14142fe678936_tf_transform_translation`(`ID`);



-- { _id: 5fdca08ccdbb4f1c413372ef }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (0, 0.0, 0.0, -1.0, 3.5762786865234375E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (0, -3.397465705871582, 1.3602944612503052, 0.700618326663971);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (0, 0, 0);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (0, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (0, x'5FDCA08CCDBB4F1C413372EF', 0, 'SM_Table_Design2_6', 0, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337300 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (1, -0.001402727561071515, 9.411260252818465E-4, 0.04122493416070938, 0.999148428440094);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (1, -3.872014045715332, 0.9903542399406433, 0.7575092315673828);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (1, 1, 1);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (1, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (1, x'5FDCA08CCDBB4F1C41337300', 1, 'SM_DinnerFork_0', 1, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337301 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (2, -9.92662098724395E-5, 1.2219592463225126E-4, -0.09584593772888184, 0.9953961968421936);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (2, 1.4096626043319702, 0.8732774257659912, 0.8468446135520935);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (2, 2, 2);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (2, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (2, x'5FDCA08CCDBB4F1C41337301', 2, 'SM_ClassicPlate16cm_1', 2, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337302 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (3, 0.0, 0.0, -0.7071060538291931, 0.7071075439453125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (3, -3.993598461151123, 1.1661452054977417, 0.7639079093933105);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (3, 3, 3);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (3, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (3, x'5FDCA08CCDBB4F1C41337302', 3, 'BP_Newspaper_0', 3, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337303 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (4, 2.453359484206885E-4, 4.5805656554875895E-5, -2.900288336604717E-6, 0.9999999403953552);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (4, 1.4658243656158447, 0.8899391889572144, 0.7512261271476746);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (4, 4, 4);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (4, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (4, x'5FDCA08CCDBB4F1C41337303', 4, 'SM_TableKnife7', 4, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337304 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (5, 4.1904197132680565E-5, -1.337839348707348E-4, 0.258810818195343, 0.9659280180931091);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (5, 1.3499832153320312, 0.4999895393848419, 0.9107467532157898);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (5, 5, 5);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (5, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (5, x'5FDCA08CCDBB4F1C41337304', 5, 'BP_PouringBottle2_2', 5, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337305 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (6, -9.926629718393087E-5, 1.2219585187267512E-4, -0.09584665298461914, 0.9953961372375488);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (6, 1.4096665382385254, 0.8732799887657166, 0.8618413209915161);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (6, 6, 6);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (6, 2171, '2020-12-18 12:29:00.817000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (6, x'5FDCA08CCDBB4F1C41337305', 6, 'SM_Waffle_3', 6, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337307 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (7, 0.0, 0.0, 0.0, 1.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (7, 0.0, 0.0, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (7, 7, 7);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (7, 0, '2020-12-18 12:29:00.862000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (7, x'5FDCA08CCDBB4F1C41337307', 7, 'iai_kitchen/world', 7, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337308 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (8, 2.164889985420516E-17, 2.1648901508566386E-17, 0.7071067690849304, 0.7071067094802856);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (8, 0.9168383479118347, 1.011760950088501, 0.01274894643574953);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (8, 8, 8);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (8, 2171, '2020-12-18 12:29:00.818000', 'map');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (8, x'5FDCA08CCDBB4F1C41337308', 8, 'root', 8, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337309 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (9, 0.045784592628479004, -0.7090233564376831, 0.02080357074737549, 0.7033894062042236);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (9, -0.025147931650280952, -0.0012602233327925205, 0.9693854451179504);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (9, 9, 9);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (9, 2171, '2020-12-18 12:29:00.818000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (9, x'5FDCA08CCDBB4F1C41337309', 9, 'pelvis', 9, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133730a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (10, 0.002802222967147827, -0.01211559772491455, 0.00811167061328888, 0.9998895525932312);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (10, 0.13287481665611267, -1.4305114426349519E-8, 3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (10, 10, 10);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (10, 2171, '2020-12-18 12:29:00.818000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (10, x'5FDCA08CCDBB4F1C4133730A', 10, 'spine_01', 10, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133730b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (11, 0.02046807110309601, 0.00154954195022583, 0.0030913949012756348, 0.9997843503952026);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (11, 0.13287471234798431, -6.19888282926695E-8, 2.8610228852699038E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (11, 11, 11);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (11, 2171, '2020-12-18 12:29:00.818000', 'spine_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (11, x'5FDCA08CCDBB4F1C4133730B', 11, 'spine_02', 11, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133730c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (12, 0.020467668771743774, 0.0012485086917877197, 0.003119155764579773, 0.9997848272323608);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (12, 0.13287462294101715, 5.2452087118126656E-8, 1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (12, 12, 12);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (12, 2171, '2020-12-18 12:29:00.818000', 'spine_02');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (12, x'5FDCA08CCDBB4F1C4133730C', 12, 'spine_03', 12, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133730d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (13, 0.02653832733631134, 0.0288507342338562, -0.1577931046485901, 0.9866937398910522);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (13, 0.13577081263065338, 4.76837147544984E-9, -9.53674295089968E-9);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (13, 13, 13);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (13, 2171, '2020-12-18 12:29:00.818000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (13, x'5FDCA08CCDBB4F1C4133730D', 13, 'neck_01', 13, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133730f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (14, 0.037986621260643005, 0.08335977792739868, 0.09967578947544098, 0.9907939434051514);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (14, 0.0619429275393486, -5.4836270635405526E-8, -1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (14, 14, 14);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (14, 2171, '2020-12-18 12:29:00.818000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (14, x'5FDCA08CCDBB4F1C4133730F', 14, 'head', 14, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337310 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (15, 0.0, 0.0, -2.9802322387695312E-8, -0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (15, 0.17169572412967682, 4.768371297814156E-8, 5.7220457705398076E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (15, 15, 15);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (15, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (15, x'5FDCA08CCDBB4F1C41337310', 15, 'head_end', 15, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337311 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (16, 1.4901161193847656E-8, -8.940696716308594E-8, -0.9327647686004639, 0.3604849874973297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (16, 0.04814537242054939, -0.03339293226599693, 8.34465012644614E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (16, 16, 16);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (16, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (16, x'5FDCA08CCDBB4F1C41337311', 16, 'jaw', 16, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337312 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (17, 7.450580596923828E-9, 1.4901161193847656E-8, 1.043081283569336E-7, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (17, 0.08386562019586563, -4.1961669694501325E-7, -1.0490417423625331E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (17, 17, 17);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (17, 2171, '2020-12-18 12:29:00.818000', 'jaw');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (17, x'5FDCA08CCDBB4F1C41337312', 17, 'jaw_end', 17, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337313 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (18, -1.6316771507263184E-6, -1.6093254089355469E-6, 0.7071066498756409, -0.7071065902709961);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (18, 0.08079267293214798, -0.08578197658061981, -0.03334050998091698);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (18, 18, 18);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (18, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (18, x'5FDCA08CCDBB4F1C41337313', 18, 'eye_l', 18, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337314 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (19, 4.190951585769653E-8, 2.294778823852539E-6, -2.2426247596740723E-6, -0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (19, 0.01237776130437851, -1.3954937116977817E-7, 2.384185648907078E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (19, 19, 19);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (19, 2171, '2020-12-18 12:29:00.818000', 'eye_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (19, x'5FDCA08CCDBB4F1C41337314', 19, 'eye_end_l', 19, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337315 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (20, -6.034970283508301E-7, -5.066394805908203E-7, 0.7071067094802856, -0.7071065902709961);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (20, 0.08219180256128311, -0.08402173221111298, 0.03018580935895443);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (20, 20, 20);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (20, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (20, x'5FDCA08CCDBB4F1C41337315', 20, 'eye_r', 20, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337316 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (21, 2.1420419216156006E-8, 8.456408977508545E-7, 7.599592208862305E-7, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (21, 0.012043552473187447, -2.1502374636384047E-7, -4.261731945121028E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (21, 21, 21);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (21, 2171, '2020-12-18 12:29:00.818000', 'eye_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (21, x'5FDCA08CCDBB4F1C41337316', 21, 'eye_end_r', 21, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337317 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (22, 0.27059808373451233, 0.2705979645252228, 0.6532813906669617, -0.6532813310623169);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (22, 0.011961583979427814, -0.0984513908624649, -0.022376129403710365);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (22, 22, 22);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (22, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (22, x'5FDCA08CCDBB4F1C41337317', 22, 'mouth_l', 22, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337319 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (23, -0.27059802412986755, -0.2705979347229004, 0.6532813310623169, -0.6532813906669617);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (23, 0.01235661469399929, -0.097226582467556, 0.020254919305443764);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (23, 23, 23);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (23, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (23, x'5FDCA08CCDBB4F1C41337319', 23, 'mouth_r', 23, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (24, 0.004946209490299225, 0.0037670135498046875, 0.6058719754219055, -0.7955375909805298);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (24, 0.08079267293214798, -0.08578197658061981, -0.03334050998091698);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (24, 24, 24);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (24, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (24, x'5FDCA08CCDBB4F1C4133731A', 24, 'eyelid_l', 24, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (25, 0.0, 0.0, 0.0, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (25, 0.02087048813700676, -9.95397542169485E-8, -1.1280178568995325E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (25, 25, 25);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (25, 2171, '2020-12-18 12:29:00.818000', 'eyelid_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (25, x'5FDCA08CCDBB4F1C4133731B', 25, 'eyelid_end_l', 25, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (26, -0.03427096828818321, -0.025994718074798584, 0.6037703156471252, -0.7959967851638794);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (26, 0.08219180256128311, -0.08402173221111298, 0.03018580935895443);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (26, 26, 26);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (26, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (26, x'5FDCA08CCDBB4F1C4133731C', 26, 'eyelid_r', 26, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (27, 0.03619357943534851, 0.023245036602020264, -0.6639788150787354, -0.7465130090713501);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (27, 0.020865151658654213, -2.5033950024067053E-8, -2.4735927084407194E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (27, 27, 27);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (27, 2171, '2020-12-18 12:29:00.818000', 'eyelid_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (27, x'5FDCA08CCDBB4F1C4133731D', 27, 'eyelid_end_r', 27, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (28, -0.27059802412986755, -0.6532813310623169, -0.6532813310623169, 0.270597904920578);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (28, 0.09995999932289124, -0.11375173926353455, -0.022581102326512337);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (28, 28, 28);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (28, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (28, x'5FDCA08CCDBB4F1C4133731E', 28, 'eyebrow_l', 28, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133731f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (29, 0.27059802412986755, 0.6532812714576721, -0.6532813906669617, 0.27059799432754517);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (29, 0.10014157742261887, -0.11232811957597733, 0.022152578458189964);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (29, 29, 29);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (29, 2171, '2020-12-18 12:29:00.818000', 'head');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (29, x'5FDCA08CCDBB4F1C4133731F', 29, 'eyebrow_r', 29, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337320 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (30, -0.02018488571047783, 0.8038966059684753, -0.03127443790435791, 0.5936028957366943);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (30, 0.08128908276557922, 0.0012884140014648438, -0.05555655434727669);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (30, 30, 30);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (30, 2171, '2020-12-18 12:29:00.818000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (30, x'5FDCA08CCDBB4F1C41337320', 30, 'clavicle_l', 30, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337321 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (31, 0.24864093959331512, 0.4445827305316925, -0.0931749939918518, 0.855477511882782);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (31, 0.1018904596567154, 1.907348590179936E-8, -7.748603536583687E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (31, 31, 31);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (31, 2171, '2020-12-18 12:29:00.818000', 'clavicle_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (31, x'5FDCA08CCDBB4F1C41337321', 31, 'upperarm_l', 31, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337322 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (32, 0.07674220204353333, -0.002685755491256714, -0.14128181338310242, 0.986986517906189);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (32, 0.27966687083244324, 7.629394360719743E-8, 3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (32, 32, 32);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (32, 2171, '2020-12-18 12:29:00.818000', 'upperarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (32, x'5FDCA08CCDBB4F1C41337322', 32, 'lowerarm_l', 32, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337323 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (33, -0.8225377798080444, 0.02119457721710205, 0.054531700909137726, 0.5656927824020386);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (33, 0.2738725244998932, 5.7220457705398076E-8, 1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (33, 33, 33);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (33, 2171, '2020-12-18 12:29:00.818000', 'lowerarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (33, x'5FDCA08CCDBB4F1C41337323', 33, 'hand_l', 33, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337324 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (34, 0.7335100769996643, 0.20786167681217194, -0.06562450528144836, 0.64377760887146);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (34, 0.04113749787211418, 0.00893585104495287, -0.03275030106306076);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (34, 34, 34);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (34, 2171, '2020-12-18 12:29:00.818000', 'hand_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (34, x'5FDCA08CCDBB4F1C41337324', 34, 'thumb_01_l', 34, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337326 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (35, 0.04046478867530823, -0.0273003950715065, 0.17477497458457947, 0.9833976030349731);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (35, 0.017426228150725365, 1.609325295248709E-8, 2.5033950024067053E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (35, 35, 35);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (35, 2171, '2020-12-18 12:29:00.818000', 'thumb_01_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (35, x'5FDCA08CCDBB4F1C41337326', 35, 'thumb_02_l', 35, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337327 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (36, 0.004736974835395813, -0.006252489984035492, 0.14190274477005005, 0.9898493885993958);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (36, 0.025369180366396904, -2.7418138870416442E-8, -5.9604644775390625E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (36, 36, 36);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (36, 2171, '2020-12-18 12:29:00.818000', 'thumb_02_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (36, x'5FDCA08CCDBB4F1C41337327', 36, 'thumb_03_l', 36, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337328 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (37, 1.4901161193847656E-7, -4.470348358154297E-8, 8.940696716308594E-8, -0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (37, 0.01915132999420166, 2.3841859597695247E-9, -4.482269275740691E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (37, 37, 37);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (37, 2171, '2020-12-18 12:29:00.818000', 'thumb_03_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (37, x'5FDCA08CCDBB4F1C41337328', 37, 'thumb_end_l', 37, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337329 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (38, -0.12775056064128876, 0.006686598062515259, 0.07719846814870834, 0.9887746572494507);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (38, 0.08338066190481186, 0.001334165339358151, -0.02137594111263752);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (38, 38, 38);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (38, 2171, '2020-12-18 12:29:00.818000', 'hand_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (38, x'5FDCA08CCDBB4F1C41337329', 38, 'index_01_l', 38, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (39, -0.007526703178882599, -0.008887499570846558, 0.16988763213157654, 0.9853945970535278);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (39, 0.03424803540110588, 6.712973288358626E-8, 4.76837147544984E-9);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (39, 39, 39);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (39, 2171, '2020-12-18 12:29:00.818000', 'index_01_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (39, x'5FDCA08CCDBB4F1C4133732A', 39, 'index_02_l', 39, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (40, -0.003923915326595306, 0.014836639165878296, 0.035288602113723755, 0.9992592334747314);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (40, 0.026146208867430687, 2.5033950024067053E-8, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (40, 40, 40);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (40, 2171, '2020-12-18 12:29:00.818000', 'index_02_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (40, x'5FDCA08CCDBB4F1C4133732B', 40, 'index_03_l', 40, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (41, 6.705522537231445E-8, -2.9802322387695312E-8, -1.043081283569336E-7, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (41, 0.019804447889328003, 4.4584274405679025E-7, -1.0609626599489275E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (41, 41, 41);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (41, 2171, '2020-12-18 12:29:00.818000', 'index_03_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (41, x'5FDCA08CCDBB4F1C4133732C', 41, 'index_end_l', 41, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (42, -0.12470193207263947, 0.022204726934432983, 0.07058943808078766, 0.9894306659698486);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (42, 0.08346676826477051, -3.0963419703766704E-5, -0.002369737485423684);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (42, 42, 42);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (42, 2171, '2020-12-18 12:29:00.818000', 'hand_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (42, x'5FDCA08CCDBB4F1C4133732D', 42, 'middle_01_l', 42, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (43, 0.015252530574798584, -0.028468310832977295, 0.30428415536880493, 0.9520334005355835);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (43, 0.03819311410188675, -1.19209286886246E-9, -6.914138594993346E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (43, 43, 43);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (43, 2171, '2020-12-18 12:29:00.818000', 'middle_01_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (43, x'5FDCA08CCDBB4F1C4133732E', 43, 'middle_02_l', 43, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133732f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (44, 0.00818704068660736, -0.016236454248428345, 0.16578622162342072, 0.9859937429428101);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (44, 0.028875507414340973, -4.76837147544984E-9, 3.695488004495928E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (44, 44, 44);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (44, 2171, '2020-12-18 12:29:00.818000', 'middle_02_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (44, x'5FDCA08CCDBB4F1C4133732F', 44, 'middle_03_l', 44, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337331 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (45, 8.940696716308594E-8, -2.9802322387695312E-8, -1.341104507446289E-7, -0.9999997019767761);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (45, 0.021833185106515884, 5.888938972020696E-7, -9.298324243900424E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (45, 45, 45);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (45, 2171, '2020-12-18 12:29:00.818000', 'middle_03_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (45, x'5FDCA08CCDBB4F1C41337331', 45, 'middle_end_l', 45, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337332 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (46, -0.15773917734622955, -0.010648965835571289, 0.08487051725387573, 0.9837691187858582);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (46, 0.08406076580286026, 9.558272431604564E-4, 0.016155585646629333);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (46, 46, 46);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (46, 2171, '2020-12-18 12:29:00.818000', 'hand_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (46, x'5FDCA08CCDBB4F1C41337332', 46, 'ring_01_l', 46, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337333 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (47, 0.037177443504333496, -0.03415435552597046, 0.37334752082824707, 0.9263168573379517);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (47, 0.036119475960731506, 4.17232506322307E-8, 5.960465188081798E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (47, 47, 47);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (47, 2171, '2020-12-18 12:29:00.818000', 'ring_01_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (47, x'5FDCA08CCDBB4F1C41337333', 47, 'ring_02_l', 47, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337334 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (48, 0.00670836865901947, -0.008574128150939941, 0.133065864443779, 0.9910473823547363);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (48, 0.02721036598086357, 7.1525572131747595E-9, -3.695488359767296E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (48, 48, 48);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (48, 2171, '2020-12-18 12:29:00.818000', 'ring_02_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (48, x'5FDCA08CCDBB4F1C41337334', 48, 'ring_03_l', 48, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337335 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (49, 7.450580596923828E-8, 5.9604644775390625E-8, -7.450580596923828E-8, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (49, 0.020519379526376724, 1.4305113893442467E-7, -5.424022830879949E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (49, 49, 49);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (49, 2171, '2020-12-18 12:29:00.818000', 'ring_03_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (49, x'5FDCA08CCDBB4F1C41337335', 49, 'ring_end_l', 49, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337336 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (50, -0.108551986515522, -0.01800277829170227, 0.06454263627529144, 0.9918296933174133);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (50, 0.08082938939332962, 0.005676846485584974, 0.03244980797171593);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (50, 50, 50);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (50, 2171, '2020-12-18 12:29:00.818000', 'hand_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (50, x'5FDCA08CCDBB4F1C41337336', 50, 'pinky_01_l', 50, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337337 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (51, 0.06995588541030884, -0.0245969295501709, 0.42437130212783813, 0.902446448802948);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (51, 0.026422545313835144, -2.2351740458503855E-9, -4.291534239087014E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (51, 51, 51);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (51, 2171, '2020-12-18 12:29:00.818000', 'pinky_01_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (51, x'5FDCA08CCDBB4F1C41337337', 51, 'pinky_02_l', 51, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337339 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (52, 0.022766858339309692, -0.014439165592193604, 0.18753832578659058, 0.9818869829177856);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (52, 0.019894812256097794, -4.76837147544984E-9, 4.649162121950212E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (52, 52, 52);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (52, 2171, '2020-12-18 12:29:00.818000', 'pinky_02_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (52, x'5FDCA08CCDBB4F1C41337339', 52, 'pinky_03_l', 52, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (53, 1.1920928955078125E-7, -2.9802322387695312E-8, -4.470348358154297E-8, -0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (53, 0.015065612271428108, 1.8477440733022377E-7, -8.225440950582197E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (53, 53, 53);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (53, 2171, '2020-12-18 12:29:00.818000', 'pinky_03_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (53, x'5FDCA08CCDBB4F1C4133733A', 53, 'pinky_end_l', 53, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (54, -2.9802322387695312E-8, -7.450580596923828E-9, 5.9604644775390625E-8, 0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (54, 0.13693629205226898, 6.19888282926695E-8, -2.8610228852699038E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (54, 54, 54);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (54, 2171, '2020-12-18 12:29:00.818000', 'lowerarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (54, x'5FDCA08CCDBB4F1C4133733B', 54, 'lowerarm_twist_01_l', 54, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (55, -2.9802322387695312E-8, 0.0, 5.9604644775390625E-8, 0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (55, 0.1398332118988037, 2.8610228852699038E-8, 1.5258788721439487E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (55, 55, 55);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (55, 2171, '2020-12-18 12:29:00.818000', 'upperarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (55, x'5FDCA08CCDBB4F1C4133733C', 55, 'upperarm_twist_01_l', 55, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (56, 0.7926143407821655, 0.016853630542755127, -0.6092749834060669, 0.016196195036172867);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (56, 0.08129604905843735, 0.0014931511832401156, 0.04423956945538521);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (56, 56, 56);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (56, 2171, '2020-12-18 12:29:00.818000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (56, x'5FDCA08CCDBB4F1C4133733D', 56, 'clavicle_r', 56, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (57, 0.15146757662296295, 0.4709867537021637, -0.034105297178030014, 0.8683695793151855);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (57, -0.10299161821603775, -6.67572024326546E-8, -1.2874602361989673E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (57, 57, 57);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (57, 2171, '2020-12-18 12:29:00.818000', 'clavicle_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (57, x'5FDCA08CCDBB4F1C4133733E', 57, 'upperarm_r', 57, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133733f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (58, 0.09134773910045624, 0.042677924036979675, -0.12344524264335632, 0.9872159957885742);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (58, -0.28196197748184204, 1.907348590179936E-8, 1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (58, 58, 58);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (58, 2171, '2020-12-18 12:29:00.818000', 'upperarm_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (58, x'5FDCA08CCDBB4F1C4133733F', 58, 'lowerarm_r', 58, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337340 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (59, -0.7471149563789368, -0.011726513504981995, 0.021600037813186646, 0.6642402410507202);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (59, -0.2706550359725952, -9.53674295089968E-9, -5.7220457705398076E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (59, 59, 59);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (59, 2171, '2020-12-18 12:29:00.818000', 'lowerarm_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (59, x'5FDCA08CCDBB4F1C41337340', 59, 'hand_r', 59, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337342 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (60, 0.760951042175293, 0.19970771670341492, -0.04689359664916992, 0.6155250072479248);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (60, -0.026984866708517075, -0.010696305893361568, 0.033965639770030975);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (60, 60, 60);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (60, 2171, '2020-12-18 12:29:00.818000', 'hand_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (60, x'5FDCA08CCDBB4F1C41337342', 60, 'thumb_01_r', 60, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337343 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (61, 0.04779043793678284, -0.027864709496498108, 0.19679412245750427, 0.9788826704025269);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (61, -0.02570653334259987, -4.649162121950212E-8, 7.629394360719743E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (61, 61, 61);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (61, 2171, '2020-12-18 12:29:00.818000', 'thumb_01_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (61, x'5FDCA08CCDBB4F1C41337343', 61, 'thumb_02_r', 61, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337345 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (62, 0.013230621814727783, -0.007009349763393402, 0.16592659056186676, 0.9860242605209351);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (62, -0.025992829352617264, -2.2649766506788183E-8, -8.82148754044465E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (62, 62, 62);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (62, 2171, '2020-12-18 12:29:00.818000', 'thumb_02_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (62, x'5FDCA08CCDBB4F1C41337345', 62, 'thumb_03_r', 62, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337346 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (63, 2.9802322387695312E-8, -9.313225746154785E-8, -8.940696716308594E-8, -0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (63, -0.01975487358868122, 1.0788441073827926E-7, 1.275539318612573E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (63, 63, 63);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (63, 2171, '2020-12-18 12:29:00.818000', 'thumb_03_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (63, x'5FDCA08CCDBB4F1C41337346', 63, 'thumb_end_r', 63, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337347 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (64, -0.12676012516021729, -0.003784775733947754, 0.07267528772354126, 0.9892601370811462);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (64, -0.08378896862268448, -0.001119396649301052, 0.021051712334156036);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (64, 64, 64);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (64, 2171, '2020-12-18 12:29:00.818000', 'hand_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (64, x'5FDCA08CCDBB4F1C41337347', 64, 'index_01_r', 64, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337348 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (65, 0.01912807673215866, -0.03996914625167847, 0.3226437568664551, 0.9454827308654785);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (65, -0.03507700189948082, 2.4437904144747336E-8, 1.668930060816365E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (65, 65, 65);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (65, 2171, '2020-12-18 12:29:00.818000', 'index_01_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (65, x'5FDCA08CCDBB4F1C41337348', 65, 'index_02_r', 65, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337349 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (66, 0.005602441728115082, -0.013010025024414062, 0.13851584494113922, 0.9902588129043579);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (66, -0.026117488741874695, -5.2452087118126656E-8, -6.556511067401516E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (66, 66, 66);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (66, 2171, '2020-12-18 12:29:00.818000', 'index_02_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (66, x'5FDCA08CCDBB4F1C41337349', 66, 'index_03_r', 66, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133734a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (67, 8.940696716308594E-8, 8.940696716308594E-8, -2.9802322387695312E-8, -0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (67, -0.019421905279159546, -1.668930025289228E-7, 6.854534007061375E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (67, 67, 67);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (67, 2171, '2020-12-18 12:29:00.818000', 'index_03_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (67, x'5FDCA08CCDBB4F1C4133734A', 67, 'index_end_r', 67, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133734b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (68, -0.11572016775608063, 0.013468116521835327, 0.12260106205940247, 0.9855942726135254);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (68, -0.0839381068944931, 2.50318058533594E-4, 0.0034303092397749424);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (68, 68, 68);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (68, 2171, '2020-12-18 12:29:00.818000', 'hand_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (68, x'5FDCA08CCDBB4F1C4133734B', 68, 'middle_01_r', 68, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133734d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (69, 0.027269862592220306, -0.028903156518936157, 0.3539047837257385, 0.9344366788864136);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (69, -0.03803268447518349, -3.5762786065873797E-9, -1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (69, 69, 69);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (69, 2171, '2020-12-18 12:29:00.818000', 'middle_01_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (69, x'5FDCA08CCDBB4F1C4133734D', 69, 'middle_02_r', 69, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133734e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (70, 0.01692478358745575, -0.02285248041152954, 0.2171410620212555, 0.9757256507873535);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (70, -0.02867783047258854, 1.668930060816365E-8, 2.086162531611535E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (70, 70, 70);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (70, 2171, '2020-12-18 12:29:00.818000', 'middle_02_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (70, x'5FDCA08CCDBB4F1C4133734E', 70, 'middle_03_r', 70, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133734f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (71, 2.9802322387695312E-8, 2.9802322387695312E-8, -1.1920928955078125E-7, -0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (71, -0.021638579666614532, -1.7285346132211998E-7, 6.67572024326546E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (71, 71, 71);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (71, 2171, '2020-12-18 12:29:00.818000', 'middle_03_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (71, x'5FDCA08CCDBB4F1C4133734F', 71, 'middle_end_r', 71, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337350 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (72, -0.1471882164478302, -0.01703605055809021, 0.14616960287094116, 0.9781000018119812);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (72, -0.08453140407800674, -0.0020754574798047543, -0.012407154776155949);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (72, 72, 72);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (72, 2171, '2020-12-18 12:29:00.818000', 'hand_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (72, x'5FDCA08CCDBB4F1C41337350', 72, 'ring_01_r', 72, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337351 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (73, 0.062037959694862366, -0.036654651165008545, 0.47047853469848633, 0.8794642686843872);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (73, -0.035786233842372894, -2.5033950024067053E-8, -4.7683720083568915E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (73, 73, 73);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (73, 2171, '2020-12-18 12:29:00.818000', 'ring_01_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (73, x'5FDCA08CCDBB4F1C41337351', 73, 'ring_02_r', 73, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337352 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (74, 0.02364593744277954, -0.021876424551010132, 0.2261398285627365, 0.9735619425773621);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (74, -0.026732148602604866, 1.907348590179936E-8, -2.980232594040899E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (74, 74, 74);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (74, 2171, '2020-12-18 12:29:00.818000', 'ring_02_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (74, x'5FDCA08CCDBB4F1C41337352', 74, 'ring_03_r', 74, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337353 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (75, 1.4901161193847656E-8, 1.4901161193847656E-8, -2.9802322387695312E-8, -0.9999999403953552);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (75, -0.020257610827684402, -5.2452087118126656E-8, -1.7285348263840206E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (75, 75, 75);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (75, 2171, '2020-12-18 12:29:00.818000', 'ring_03_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (75, x'5FDCA08CCDBB4F1C41337353', 75, 'ring_end_r', 75, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337354 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (76, -0.09040098637342453, -0.01774558424949646, 0.1494089514017105, 0.984474241733551);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (76, -0.07996814697980881, -0.006811759900301695, -0.028457187116146088);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (76, 76, 76);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (76, 2171, '2020-12-18 12:29:00.818000', 'hand_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (76, x'5FDCA08CCDBB4F1C41337354', 76, 'pinky_01_r', 76, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337356 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (77, 0.09466062486171722, -0.017856687307357788, 0.4993865191936493, 0.8610072135925293);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (77, -0.02679760567843914, 7.1525572131747595E-9, -4.768371297814156E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (77, 77, 77);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (77, 2171, '2020-12-18 12:29:00.818000', 'pinky_01_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (77, x'5FDCA08CCDBB4F1C41337356', 77, 'pinky_02_r', 77, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337357 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (78, 0.045230165123939514, -0.020536914467811584, 0.27060988545417786, 0.9614065885543823);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (78, -0.02037052996456623, -1.4305114426349519E-8, 4.261731945121028E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (78, 78, 78);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (78, 2171, '2020-12-18 12:29:00.818000', 'pinky_02_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (78, x'5FDCA08CCDBB4F1C41337357', 78, 'pinky_03_r', 78, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337358 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (79, -5.9604644775390625E-8, -1.4901161193847656E-8, -1.4901161193847656E-8, -0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (79, -0.01508911419659853, -2.3961069928191137E-7, 6.318092005130893E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (79, 79, 79);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (79, 2171, '2020-12-18 12:29:00.818000', 'pinky_03_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (79, x'5FDCA08CCDBB4F1C41337358', 79, 'pinky_end_r', 79, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337359 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (80, -2.2351741790771484E-7, 2.9802322387695312E-8, -4.470348358154297E-8, 0.9999999403953552);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (80, -0.1353275030851364, -4.76837147544984E-9, -6.67572024326546E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (80, 80, 80);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (80, 2171, '2020-12-18 12:29:00.818000', 'lowerarm_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (80, x'5FDCA08CCDBB4F1C41337359', 80, 'lowerarm_twist_01_r', 80, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133735a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (81, -7.450580596923828E-8, -1.4901161193847656E-8, 0.0, 0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (81, -0.14098098874092102, 5.2452087118126656E-8, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (81, 81, 81);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (81, 2171, '2020-12-18 12:29:00.818000', 'upperarm_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (81, x'5FDCA08CCDBB4F1C4133735A', 81, 'upperarm_twist_01_r', 81, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133735b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (82, -0.012324973940849304, -0.025105059146881104, 0.04329444468021393, 0.9986706376075745);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (82, -5.242824499873677E-6, -2.8610228852699038E-8, -0.07517421990633011);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (82, 82, 82);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (82, 2171, '2020-12-18 12:29:00.818000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (82, x'5FDCA08CCDBB4F1C4133735B', 82, 'thigh_l', 82, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133735c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (83, 0.00981360673904419, 0.0046308040618896484, -0.1124226450920105, 0.9936010241508484);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (83, -0.4421749413013458, 5.7220457705398076E-8, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (83, 83, 83);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (83, 2171, '2020-12-18 12:29:00.818000', 'thigh_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (83, x'5FDCA08CCDBB4F1C4133735C', 83, 'calf_l', 83, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133735e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (84, 0.00600065290927887, 0.03517666459083557, 0.07229110598564148, 0.9967447519302368);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (84, -0.4448089599609375, 0.0, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (84, 84, 84);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (84, 2171, '2020-12-18 12:29:00.818000', 'calf_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (84, x'5FDCA08CCDBB4F1C4133735E', 84, 'foot_l', 84, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133735f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (85, 0.0014843419194221497, 0.0011453330516815186, -0.7117958068847656, 0.7023835778236389);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (85, -0.07189683616161346, -0.14922523498535156, 1.605129218660295E-4);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (85, 85, 85);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (85, 2171, '2020-12-18 12:29:00.818000', 'foot_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (85, x'5FDCA08CCDBB4F1C4133735F', 85, 'ball_l', 85, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337360 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (86, 0.0, 1.862645149230957E-9, 0.0, -0.9999997019767761);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (86, 0.03502204641699791, -1.2680888517024869E-7, 6.973743182925318E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (86, 86, 86);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (86, 2171, '2020-12-18 12:29:00.818000', 'ball_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (86, x'5FDCA08CCDBB4F1C41337360', 86, 'foot_end_l', 86, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337361 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (87, -4.470348358154297E-8, 2.9802322387695312E-8, 2.9802322387695312E-8, 0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (87, -0.22240447998046875, 0.0, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (87, 87, 87);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (87, 2171, '2020-12-18 12:29:00.818000', 'calf_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (87, x'5FDCA08CCDBB4F1C41337361', 87, 'calf_twist_01_l', 87, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337362 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (88, -2.9802322387695312E-8, -1.4901161193847656E-7, -2.9802322387695312E-8, 0.9999998211860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (88, -0.22108739614486694, 1.907348590179936E-8, -1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (88, 88, 88);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (88, 2171, '2020-12-18 12:29:00.818000', 'thigh_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (88, x'5FDCA08CCDBB4F1C41337362', 88, 'thigh_twist_01_l', 88, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337363 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (89, -0.006906688213348389, -0.01166766881942749, -0.9999023675918579, 0.003318876028060913);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (89, 4.787445050169481E-6, -7.629394360719743E-8, 0.07517414540052414);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (89, 89, 89);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (89, 2171, '2020-12-18 12:29:00.818000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (89, x'5FDCA08CCDBB4F1C41337363', 89, 'thigh_r', 89, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337364 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (90, 0.008368194103240967, 0.003641843795776367, -0.06682860851287842, 0.9977225661277771);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (90, 0.445139616727829, 5.7220457705398076E-8, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (90, 90, 90);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (90, 2171, '2020-12-18 12:29:00.818000', 'thigh_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (90, x'5FDCA08CCDBB4F1C41337364', 90, 'calf_r', 90, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337365 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (91, 0.09023965895175934, 0.014331221580505371, 0.07583774626255035, 0.9929249286651611);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (91, 0.4363507330417633, 0.0, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (91, 91, 91);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (91, 2171, '2020-12-18 12:29:00.818000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (91, x'5FDCA08CCDBB4F1C41337365', 91, 'foot_r', 91, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337367 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (92, 0.0010160207748413086, -0.00463525578379631, -0.7071087956428528, 0.7070887684822083);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (92, 0.0826011672616005, 0.1553737223148346, -1.1567831097636372E-4);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (92, 92, 92);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (92, 2171, '2020-12-18 12:29:00.818000', 'foot_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (92, x'5FDCA08CCDBB4F1C41337367', 92, 'ball_r', 92, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337368 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (93, -2.9802322387695312E-8, 1.30385160446167E-8, -2.2351741790771484E-8, -0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (93, -0.035843636840581894, 1.662969566496031E-7, 6.616115655333488E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (93, 93, 93);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (93, 2171, '2020-12-18 12:29:00.818000', 'ball_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (93, x'5FDCA08CCDBB4F1C41337368', 93, 'foot_end_r', 93, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337369 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (94, 2.9802322387695312E-8, -1.043081283569336E-7, 2.9802322387695312E-8, 0.9999999403953552);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (94, 0.21817535161972046, -1.907348590179936E-8, -5.7220457705398076E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (94, 94, 94);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (94, 2171, '2020-12-18 12:29:00.818000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (94, x'5FDCA08CCDBB4F1C41337369', 94, 'calf_twist_01_r', 94, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (95, 0.0, 0.0, 0.0, 0.9999997615814209);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (95, 0.2225697636604309, 2.8610228852699038E-8, -1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (95, 95, 95);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (95, 2171, '2020-12-18 12:29:00.818000', 'thigh_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (95, x'5FDCA08CCDBB4F1C4133736A', 95, 'thigh_twist_01_r', 95, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (96, 2.9798680856174542E-8, 0.0, 0.0, 0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (96, 0.0, 0.0, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (96, 96, 96);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (96, 2171, '2020-12-18 12:29:00.818000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (96, x'5FDCA08CCDBB4F1C4133736B', 96, 'ik_foot_root', 96, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (97, 0.7071062922477722, 1.6093254089355469E-6, -0.7071071863174438, -2.9802322387695312E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (97, -0.10001356899738312, 0.04649459198117256, 0.0691385567188263);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (97, 97, 97);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (97, 2171, '2020-12-18 12:29:00.818000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (97, x'5FDCA08CCDBB4F1C4133736C', 97, 'ik_foot_r', 97, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (98, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (98, 0.08592940121889114, 0.04348205402493477, 0.0694182738661766);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (98, 98, 98);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (98, 2171, '2020-12-18 12:29:00.818000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (98, x'5FDCA08CCDBB4F1C4133736D', 98, 'ik_foot_l', 98, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (99, 2.9798680856174542E-8, 0.0, 0.0, 0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (99, 0.0, 0.0, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (99, 99, 99);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (99, 2171, '2020-12-18 12:29:00.818000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (99, x'5FDCA08CCDBB4F1C4133736E', 99, 'ik_hand_root', 99, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c4133736f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (100, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (100, -0.2974183261394501, -0.08437320590019226, 0.8755350112915039);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (100, 100, 100);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (100, 2171, '2020-12-18 12:29:00.818000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (100, x'5FDCA08CCDBB4F1C4133736F', 100, 'ik_hand_gun', 100, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337370 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (101, 0.0, 0.0, 1.1920928955078125E-7, 0.9999998807907104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (101, 0.0, 0.0, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (101, 101, 101);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (101, 2171, '2020-12-18 12:29:00.818000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (101, x'5FDCA08CCDBB4F1C41337370', 101, 'ik_hand_r', 101, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337371 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (102, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (102, 0.43288978934288025, -0.4117862582206726, 0.09423861652612686);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (102, 102, 102);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (102, 2171, '2020-12-18 12:29:00.818000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (102, x'5FDCA08CCDBB4F1C41337371', 102, 'ik_hand_l', 102, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337373 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (103, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (103, 0.43389609456062317, -0.41191136837005615, 0.09289582818746567);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (103, 103, 103);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (103, 2172, '2020-12-18 12:29:00.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (103, x'5FDCA08CCDBB4F1C41337373', 103, 'ik_hand_l', 103, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337394 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (104, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (104, -0.29787394404411316, -0.08604539930820465, 0.8753478527069092);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (104, 104, 104);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (104, 2173, '2020-12-18 12:29:00.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (104, x'5FDCA08CCDBB4F1C41337394', 104, 'ik_hand_gun', 104, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337396 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (105, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (105, 0.43485409021377563, -0.41196876764297485, 0.09171397984027863);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (105, 105, 105);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (105, 2173, '2020-12-18 12:29:00.851000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (105, x'5FDCA08CCDBB4F1C41337396', 105, 'ik_hand_l', 105, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373a8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (106, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (106, 0.4358052611351013, -0.4120079278945923, 0.09056846052408218);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (106, 106, 106);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (106, 2174, '2020-12-18 12:29:00.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (106, x'5FDCA08CCDBB4F1C413373A8', 106, 'ik_hand_l', 106, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373cb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (107, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (107, -0.2981085479259491, -0.08757411688566208, 0.875110387802124);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (107, 107, 107);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (107, 2175, '2020-12-18 12:29:00.884000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (107, x'5FDCA08CCDBB4F1C413373CB', 107, 'ik_hand_gun', 107, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373cc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (108, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (108, 0.4369462728500366, -0.41214990615844727, 0.08953547477722168);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (108, 108, 108);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (108, 2175, '2020-12-18 12:29:00.884000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (108, x'5FDCA08CCDBB4F1C413373CC', 108, 'ik_hand_l', 108, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373ec }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (109, 0.048350363969802856, -0.7094824314117432, 0.02165970206260681, 0.7027285099029541);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (109, -0.026080625131726265, -0.0019071983406320214, 0.9692413210868835);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (109, 109, 109);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (109, 2176, '2020-12-18 12:29:00.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (109, x'5FDCA08CCDBB4F1C413373EC', 109, 'pelvis', 109, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373ee }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (110, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (110, 0.4381409287452698, -0.41232234239578247, 0.0885397419333458);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (110, 110, 110);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (110, 2176, '2020-12-18 12:29:00.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (110, x'5FDCA08CCDBB4F1C413373EE', 110, 'ik_hand_l', 110, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c413373ff }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (111, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (111, -0.2984713315963745, -0.08903102576732635, 0.874761700630188);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (111, 111, 111);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (111, 2177, '2020-12-18 12:29:00.918000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (111, x'5FDCA08CCDBB4F1C413373FF', 111, 'ik_hand_gun', 111, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337400 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (112, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (112, 0.43915972113609314, -0.4124411940574646, 0.08780819922685623);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (112, 112, 112);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (112, 2177, '2020-12-18 12:29:00.918000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (112, x'5FDCA08CCDBB4F1C41337400', 112, 'ik_hand_l', 112, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08ccdbb4f1c41337439 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (113, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (113, 0.44012144207954407, -0.4125431776046753, 0.08715951442718506);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (113, 113, 113);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (113, 2178, '2020-12-18 12:29:00.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (113, x'5FDCA08CCDBB4F1C41337439', 113, 'ik_hand_l', 113, '2020-12-18 12:29:00.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337478 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (114, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (114, -0.2989456355571747, -0.09038316458463669, 0.8743415474891663);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (114, 114, 114);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (114, 2179, '2020-12-18 12:29:00.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (114, x'5FDCA08DCDBB4F1C41337478', 114, 'ik_hand_gun', 114, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337479 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (115, 0.05023244023323059, -0.7100393772125244, 0.024037271738052368, 0.7019562721252441);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (115, -0.026400906965136528, -0.0030751037411391735, 0.9690604209899902);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (115, 115, 115);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (115, 2180, '2020-12-18 12:29:00.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (115, x'5FDCA08DCDBB4F1C41337479', 115, 'pelvis', 115, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133747a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (116, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (116, 0.44183456897735596, -0.41258034110069275, 0.0862458273768425);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (116, 116, 116);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (116, 2180, '2020-12-18 12:29:00.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (116, x'5FDCA08DCDBB4F1C4133747A', 116, 'ik_hand_l', 116, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133747b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (117, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (117, -0.29924365878105164, -0.091402068734169, 0.873856246471405);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (117, 117, 117);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (117, 2181, '2020-12-18 12:29:00.984000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (117, x'5FDCA08DCDBB4F1C4133747B', 117, 'ik_hand_gun', 117, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374b8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (118, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (118, 0.4436114728450775, -0.4126448333263397, 0.08574841171503067);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (118, 118, 118);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (118, 2182, '2020-12-18 12:29:01.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (118, x'5FDCA08DCDBB4F1C413374B8', 118, 'ik_hand_l', 118, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374b9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (119, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (119, 0.08544157445430756, 0.04281265288591385, 0.06998913735151291);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (119, 119, 119);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (119, 2183, '2020-12-18 12:29:01.018000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (119, x'5FDCA08DCDBB4F1C413374B9', 119, 'ik_foot_l', 119, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374bb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (120, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (120, -0.2994321882724762, -0.09237069636583328, 0.873410165309906);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (120, 120, 120);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (120, 2183, '2020-12-18 12:29:01.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (120, x'5FDCA08DCDBB4F1C413374BB', 120, 'ik_hand_gun', 120, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374bc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (121, 0.05250638723373413, -0.7107014656066895, 0.026274442672729492, 0.7010390758514404);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (121, -0.02634528838098049, -0.0042848228476941586, 0.9689252376556396);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (121, 121, 121);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (121, 2184, '2020-12-18 12:29:01.034000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (121, x'5FDCA08DCDBB4F1C413374BC', 121, 'pelvis', 121, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374bd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (122, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (122, 0.4452193081378937, -0.4127095341682434, 0.08537787944078445);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (122, 122, 122);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (122, 2184, '2020-12-18 12:29:01.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (122, x'5FDCA08DCDBB4F1C413374BD', 122, 'ik_hand_l', 122, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413374be }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (123, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (123, -0.2995864450931549, -0.09342966228723526, 0.8729960918426514);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (123, 123, 123);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (123, 2185, '2020-12-18 12:29:01.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (123, x'5FDCA08DCDBB4F1C413374BE', 123, 'ik_hand_gun', 123, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337507 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (124, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (124, 0.44673478603363037, -0.4126057028770447, 0.08535563945770264);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (124, 124, 124);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (124, 2186, '2020-12-18 12:29:01.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (124, x'5FDCA08DCDBB4F1C41337507', 124, 'ik_hand_l', 124, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337508 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (125, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (125, -0.2997092008590698, -0.09439996629953384, 0.8725436925888062);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (125, 125, 125);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (125, 2187, '2020-12-18 12:29:01.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (125, x'5FDCA08DCDBB4F1C41337508', 125, 'ik_hand_gun', 125, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337509 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (126, 0.054398924112319946, -0.7113593816757202, 0.02762541174888611, 0.7001750469207764);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (126, -0.025921396911144257, -0.0054045128636062145, 0.9688088297843933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (126, 126, 126);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (126, 2188, '2020-12-18 12:29:01.101000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (126, x'5FDCA08DCDBB4F1C41337509', 126, 'pelvis', 126, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133750a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (127, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (127, 0.4480731189250946, -0.4124613404273987, 0.0856451615691185);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (127, 127, 127);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (127, 2188, '2020-12-18 12:29:01.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (127, x'5FDCA08DCDBB4F1C4133750A', 127, 'ik_hand_l', 127, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133753d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (128, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (128, -0.2997772991657257, -0.0956663116812706, 0.8718799352645874);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (128, 128, 128);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (128, 2190, '2020-12-18 12:29:01.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (128, x'5FDCA08DCDBB4F1C4133753D', 128, 'ik_hand_gun', 128, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133753e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (129, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (129, 0.44930872321128845, -0.4121159017086029, 0.08598671853542328);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (129, 129, 129);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (129, 2190, '2020-12-18 12:29:01.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (129, x'5FDCA08DCDBB4F1C4133753E', 129, 'ik_hand_l', 129, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337572 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (130, 0.055612415075302124, -0.7119134664535522, 0.02800297737121582, 0.6995012164115906);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (130, -0.025157924741506577, -0.006327898241579533, 0.9687106609344482);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (130, 130, 130);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (130, 2192, '2020-12-18 12:29:01.167000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (130, x'5FDCA08DCDBB4F1C41337572', 130, 'pelvis', 130, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337573 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (131, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (131, 0.4503379762172699, -0.4117850661277771, 0.08615439385175705);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (131, 131, 131);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (131, 2192, '2020-12-18 12:29:01.167000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (131, x'5FDCA08DCDBB4F1C41337573', 131, 'ik_hand_l', 131, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337575 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (132, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (132, -0.29955393075942993, -0.09675546735525131, 0.8712548613548279);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (132, 132, 132);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (132, 2193, '2020-12-18 12:29:01.184000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (132, x'5FDCA08DCDBB4F1C41337575', 132, 'ik_hand_gun', 132, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375b5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (133, 0.05604207515716553, -0.7120335102081299, 0.02776685357093811, 0.6993541717529297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (133, -0.02442328818142414, -0.007067415397614241, 0.9685470461845398);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (133, 133, 133);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (133, 2195, '2020-12-18 12:29:01.218000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (133, x'5FDCA08DCDBB4F1C413375B5', 133, 'pelvis', 133, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375b6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (134, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (134, 0.451555460691452, -0.4115111827850342, 0.08627460151910782);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (134, 134, 134);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (134, 2195, '2020-12-18 12:29:01.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (134, x'5FDCA08DCDBB4F1C413375B6', 134, 'ik_hand_l', 134, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375b8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (135, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (135, -0.2989773154258728, -0.09789025783538818, 0.8707250952720642);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (135, 135, 135);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (135, 2196, '2020-12-18 12:29:01.234000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (135, x'5FDCA08DCDBB4F1C413375B8', 135, 'ik_hand_gun', 135, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375e3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (136, 0.05590745806694031, -0.7120356559753418, 0.02730691432952881, 0.6993809938430786);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (136, -0.023469388484954834, -0.007977068424224854, 0.9683366417884827);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (136, 136, 136);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (136, 2198, '2020-12-18 12:29:01.268000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (136, x'5FDCA08DCDBB4F1C413375E3', 136, 'pelvis', 136, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375e5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (137, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (137, -0.2983480393886566, -0.09860704094171524, 0.8703019618988037);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (137, 137, 137);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (137, 2198, '2020-12-18 12:29:01.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (137, x'5FDCA08DCDBB4F1C413375E5', 137, 'ik_hand_gun', 137, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375e6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (138, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (138, 0.45261046290397644, -0.4109727740287781, 0.08651681989431381);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (138, 138, 138);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (138, 2199, '2020-12-18 12:29:01.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (138, x'5FDCA08DCDBB4F1C413375E6', 138, 'ik_hand_l', 138, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375e9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (139, 0.05591103434562683, -0.7119424343109131, 0.026948660612106323, 0.6994894742965698);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (139, -0.02275954931974411, -0.008703615516424179, 0.9682071208953857);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (139, 139, 139);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (139, 2200, '2020-12-18 12:29:01.301000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (139, x'5FDCA08DCDBB4F1C413375E9', 139, 'pelvis', 139, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413375ea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (140, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (140, -0.2977611720561981, -0.099456287920475, 0.8699337840080261);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (140, 140, 140);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (140, 2200, '2020-12-18 12:29:01.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (140, x'5FDCA08DCDBB4F1C413375EA', 140, 'ik_hand_gun', 140, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337609 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (141, 0.05585572123527527, -0.7119177579879761, 0.026774555444717407, 0.6995257139205933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (141, -0.022010190412402153, -0.009378358721733093, 0.9680952429771423);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (141, 141, 141);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (141, 2202, '2020-12-18 12:29:01.335000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (141, x'5FDCA08DCDBB4F1C41337609', 141, 'pelvis', 141, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337639 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (142, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (142, -0.2968634366989136, -0.0999760776758194, 0.8693553805351257);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (142, 142, 142);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (142, 2203, '2020-12-18 12:29:01.351000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (142, x'5FDCA08DCDBB4F1C41337639', 142, 'ik_hand_gun', 142, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133763b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (143, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (143, 0.4532092809677124, -0.41041162610054016, 0.08749853074550629);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (143, 143, 143);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (143, 2203, '2020-12-18 12:29:01.351000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (143, x'5FDCA08DCDBB4F1C4133763B', 143, 'ik_hand_l', 143, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133765d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (144, 0.055424660444259644, -0.7119567394256592, 0.026593178510665894, 0.6995271444320679);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (144, -0.02079887129366398, -0.010289614088833332, 0.9679744243621826);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (144, 144, 144);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (144, 2205, '2020-12-18 12:29:01.384000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (144, x'5FDCA08DCDBB4F1C4133765D', 144, 'pelvis', 144, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133765f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (145, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (145, 0.453180193901062, -0.40999406576156616, 0.08845151960849762);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (145, 145, 145);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (145, 2205, '2020-12-18 12:29:01.384000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (145, x'5FDCA08DCDBB4F1C4133765F', 145, 'ik_hand_l', 145, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337660 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (146, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (146, -0.29561373591423035, -0.10011911392211914, 0.8688620328903198);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (146, 146, 146);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (146, 2206, '2020-12-18 12:29:01.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (146, x'5FDCA08DCDBB4F1C41337660', 146, 'ik_hand_gun', 146, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337689 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (147, 0.05485481023788452, -0.7119539976119995, 0.02618655562400818, 0.6995902061462402);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (147, -0.019943539053201675, -0.010852585546672344, 0.9679074883460999);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (147, 147, 147);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (147, 2207, '2020-12-18 12:29:01.418000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (147, x'5FDCA08DCDBB4F1C41337689', 147, 'pelvis', 147, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133768a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (148, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (148, 0.45289847254753113, -0.4095173180103302, 0.08971437066793442);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (148, 148, 148);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (148, 2207, '2020-12-18 12:29:01.418000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (148, x'5FDCA08DCDBB4F1C4133768A', 148, 'ik_hand_l', 148, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133768c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (149, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (149, -0.29428553581237793, -0.10000268369913101, 0.8685745596885681);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (149, 149, 149);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (149, 2208, '2020-12-18 12:29:01.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (149, x'5FDCA08DCDBB4F1C4133768C', 149, 'ik_hand_gun', 149, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133768d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (150, 0.05407950282096863, -0.7118861675262451, 0.02549833059310913, 0.6997449398040771);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (150, -0.019034801051020622, -0.01129043661057949, 0.9678491950035095);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (150, 150, 150);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (150, 2209, '2020-12-18 12:29:01.451000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (150, x'5FDCA08DCDBB4F1C4133768D', 150, 'pelvis', 150, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133768e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (151, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (151, 0.4522765278816223, -0.408958375453949, 0.09112175554037094);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (151, 151, 151);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (151, 2209, '2020-12-18 12:29:01.451000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (151, x'5FDCA08DCDBB4F1C4133768E', 151, 'ik_hand_l', 151, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376b4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (152, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (152, -0.2929654121398926, -0.09959827363491058, 0.8683262467384338);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (152, 152, 152);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (152, 2210, '2020-12-18 12:29:01.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (152, x'5FDCA08DCDBB4F1C413376B4', 152, 'ik_hand_gun', 152, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376b6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (153, 0.05326119065284729, -0.7117895483970642, 0.024715572595596313, 0.6999341249465942);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (153, -0.018088145181536674, -0.011632920242846012, 0.967799961566925);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (153, 153, 153);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (153, 2211, '2020-12-18 12:29:01.484000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (153, x'5FDCA08DCDBB4F1C413376B6', 153, 'pelvis', 153, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376b8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (154, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (154, 0.45129629969596863, -0.40836551785469055, 0.0927664265036583);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (154, 154, 154);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (154, 2211, '2020-12-18 12:29:01.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (154, x'5FDCA08DCDBB4F1C413376B8', 154, 'ik_hand_l', 154, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376b9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (155, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (155, -0.291538804769516, -0.09902139753103256, 0.8680927157402039);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (155, 155, 155);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (155, 2212, '2020-12-18 12:29:01.501000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (155, x'5FDCA08DCDBB4F1C413376B9', 155, 'ik_hand_gun', 155, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376ba }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (156, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (156, 0.45075637102127075, -0.40808841586112976, 0.09362152963876724);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (156, 156, 156);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (156, 2212, '2020-12-18 12:29:01.501000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (156, x'5FDCA08DCDBB4F1C413376BA', 156, 'ik_hand_l', 156, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376cc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (157, 0.052561432123184204, -0.7116960287094116, 0.024237245321273804, 0.7000987529754639);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (157, -0.017128901556134224, -0.012039338238537312, 0.9677392244338989);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (157, 157, 157);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (157, 2213, '2020-12-18 12:29:01.517000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (157, x'5FDCA08DCDBB4F1C413376CC', 157, 'pelvis', 157, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376cd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (158, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (158, 0.4501396715641022, -0.40784379839897156, 0.09474189579486847);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (158, 158, 158);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (158, 2213, '2020-12-18 12:29:01.517000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (158, x'5FDCA08DCDBB4F1C413376CD', 158, 'ik_hand_l', 158, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376d6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (159, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (159, -0.2900915741920471, -0.09816651791334152, 0.8678106665611267);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (159, 159, 159);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (159, 2214, '2020-12-18 12:29:01.535000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (159, x'5FDCA08DCDBB4F1C413376D6', 159, 'ik_hand_gun', 159, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376d7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (160, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (160, 0.44949400424957275, -0.40760722756385803, 0.09595412760972977);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (160, 160, 160);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (160, 2214, '2020-12-18 12:29:01.535000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (160, x'5FDCA08DCDBB4F1C413376D7', 160, 'ik_hand_l', 160, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376fc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (161, 0.05185785889625549, -0.7115811109542847, 0.023950636386871338, 0.7002778053283691);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (161, -0.016144942492246628, -0.01254295278340578, 0.9676637649536133);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (161, 161, 161);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (161, 2215, '2020-12-18 12:29:01.551000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (161, x'5FDCA08DCDBB4F1C413376FC', 161, 'pelvis', 161, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413376fd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (162, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (162, 0.4486480951309204, -0.40726566314697266, 0.09708867222070694);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (162, 162, 162);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (162, 2215, '2020-12-18 12:29:01.551000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (162, x'5FDCA08DCDBB4F1C413376FD', 162, 'ik_hand_l', 162, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337721 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (163, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (163, -0.28869304060935974, -0.09720621258020401, 0.8676421642303467);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (163, 163, 163);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (163, 2216, '2020-12-18 12:29:01.568000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (163, x'5FDCA08DCDBB4F1C41337721', 163, 'ik_hand_gun', 163, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337722 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (164, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (164, 0.4477490186691284, -0.40689554810523987, 0.09819665551185608);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (164, 164, 164);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (164, 2216, '2020-12-18 12:29:01.568000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (164, x'5FDCA08DCDBB4F1C41337722', 164, 'ik_hand_l', 164, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337724 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (165, 0.05086946487426758, -0.7114368677139282, 0.022954612970352173, 0.7005304098129272);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (165, -0.015130688436329365, -0.01280006393790245, 0.9676238298416138);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (165, 165, 165);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (165, 2217, '2020-12-18 12:29:01.585000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (165, x'5FDCA08DCDBB4F1C41337724', 165, 'pelvis', 165, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337725 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (166, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (166, 0.4467729926109314, -0.406570166349411, 0.09951663017272949);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (166, 166, 166);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (166, 2217, '2020-12-18 12:29:01.585000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (166, x'5FDCA08DCDBB4F1C41337725', 166, 'ik_hand_l', 166, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337726 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (167, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (167, -0.2874365448951721, -0.09615060687065125, 0.8676432371139526);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (167, 167, 167);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (167, 2218, '2020-12-18 12:29:01.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (167, x'5FDCA08DCDBB4F1C41337726', 167, 'ik_hand_gun', 167, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337727 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (168, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (168, 0.4458063840866089, -0.40626847743988037, 0.10085516422986984);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (168, 168, 168);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (168, 2218, '2020-12-18 12:29:01.601000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (168, x'5FDCA08DCDBB4F1C41337727', 168, 'ik_hand_l', 168, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337746 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (169, 0.04973900318145752, -0.711262047290802, 0.02172219753265381, 0.7008283138275146);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (169, -0.014104689471423626, -0.0129450224339962, 0.9675952196121216);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (169, 169, 169);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (169, 2219, '2020-12-18 12:29:01.618000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (169, x'5FDCA08DCDBB4F1C41337746', 169, 'pelvis', 169, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337747 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (170, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (170, 0.44475826621055603, -0.40591537952423096, 0.1022271066904068);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (170, 170, 170);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (170, 2219, '2020-12-18 12:29:01.618000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (170, x'5FDCA08DCDBB4F1C41337747', 170, 'ik_hand_l', 170, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337748 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (171, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (171, -0.28624826669692993, -0.09501016139984131, 0.8676186800003052);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (171, 171, 171);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (171, 2220, '2020-12-18 12:29:01.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (171, x'5FDCA08DCDBB4F1C41337748', 171, 'ik_hand_gun', 171, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337749 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (172, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (172, 0.4436967372894287, -0.4055503010749817, 0.10359442234039307);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (172, 172, 172);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (172, 2220, '2020-12-18 12:29:01.634000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (172, x'5FDCA08DCDBB4F1C41337749', 172, 'ik_hand_l', 172, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133774a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (173, 0.048610031604766846, -0.711076021194458, 0.02049747109413147, 0.7011330127716064);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (173, -0.013070295564830303, -0.013042907230556011, 0.9675809144973755);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (173, 173, 173);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (173, 2221, '2020-12-18 12:29:01.651000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (173, x'5FDCA08DCDBB4F1C4133774A', 173, 'pelvis', 173, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133774b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (174, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (174, 0.44261786341667175, -0.40533795952796936, 0.10489939153194427);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (174, 174, 174);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (174, 2221, '2020-12-18 12:29:01.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (174, x'5FDCA08DCDBB4F1C4133774B', 174, 'ik_hand_l', 174, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133774e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (175, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (175, -0.28551721572875977, -0.09379114210605621, 0.867681622505188);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (175, 175, 175);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (175, 2222, '2020-12-18 12:29:01.667000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (175, x'5FDCA08DCDBB4F1C4133774E', 175, 'ik_hand_gun', 175, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133774f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (176, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (176, 0.4415351450443268, -0.4051709771156311, 0.10618434846401215);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (176, 176, 176);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (176, 2222, '2020-12-18 12:29:01.667000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (176, x'5FDCA08DCDBB4F1C4133774F', 176, 'ik_hand_l', 176, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337776 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (177, 0.04738679528236389, -0.7108536958694458, 0.019279569387435913, 0.7014766931533813);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (177, -0.012030486017465591, -0.013110199943184853, 0.9675742387771606);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (177, 177, 177);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (177, 2223, '2020-12-18 12:29:01.684000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (177, x'5FDCA08DCDBB4F1C41337776', 177, 'pelvis', 177, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337777 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (178, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (178, 0.4405229389667511, -0.40505290031433105, 0.10749917477369308);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (178, 178, 178);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (178, 2223, '2020-12-18 12:29:01.684000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (178, x'5FDCA08DCDBB4F1C41337777', 178, 'ik_hand_l', 178, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337778 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (179, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (179, -0.2847632169723511, -0.0923919826745987, 0.8677753210067749);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (179, 179, 179);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (179, 2224, '2020-12-18 12:29:01.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (179, x'5FDCA08DCDBB4F1C41337778', 179, 'ik_hand_gun', 179, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337779 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (180, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (180, 0.4395337700843811, -0.40495017170906067, 0.10882177203893661);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (180, 180, 180);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (180, 2224, '2020-12-18 12:29:01.701000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (180, x'5FDCA08DCDBB4F1C41337779', 180, 'ik_hand_l', 180, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133777a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (181, 0.045928239822387695, -0.7105840444564819, 0.01796063780784607, 0.7018818855285645);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (181, -0.010968472808599472, -0.013148419559001923, 0.9675725102424622);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (181, 181, 181);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (181, 2225, '2020-12-18 12:29:01.718000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (181, x'5FDCA08DCDBB4F1C4133777A', 181, 'pelvis', 181, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133777b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (182, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (182, 0.43852341175079346, -0.40489405393600464, 0.11012736707925797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (182, 182, 182);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (182, 2225, '2020-12-18 12:29:01.718000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (182, x'5FDCA08DCDBB4F1C4133777B', 182, 'ik_hand_l', 182, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133779d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (183, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (183, -0.2839339077472687, -0.09099176526069641, 0.8680188059806824);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (183, 183, 183);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (183, 2226, '2020-12-18 12:29:01.734000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (183, x'5FDCA08DCDBB4F1C4133779D', 183, 'ik_hand_gun', 183, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133779e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (184, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (184, 0.43756070733070374, -0.40485450625419617, 0.11135824769735336);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (184, 184, 184);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (184, 2226, '2020-12-18 12:29:01.734000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (184, x'5FDCA08DCDBB4F1C4133779E', 184, 'ik_hand_l', 184, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377a0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (185, 0.044326841831207275, -0.7103204727172852, 0.01663956046104431, 0.7022839784622192);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (185, -0.009941328316926956, -0.013126067817211151, 0.9675835371017456);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (185, 185, 185);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (185, 2227, '2020-12-18 12:29:01.751000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (185, x'5FDCA08DCDBB4F1C413377A0', 185, 'pelvis', 185, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377a1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (186, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (186, 0.43658629059791565, -0.4048856496810913, 0.11263871192932129);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (186, 186, 186);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (186, 2227, '2020-12-18 12:29:01.751000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (186, x'5FDCA08DCDBB4F1C413377A1', 186, 'ik_hand_l', 186, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377a5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (187, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (187, -0.2834899425506592, -0.08941636979579926, 0.8682556748390198);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (187, 187, 187);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (187, 2228, '2020-12-18 12:29:01.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (187, x'5FDCA08DCDBB4F1C413377A5', 187, 'ik_hand_gun', 187, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377a6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (188, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (188, 0.4355655610561371, -0.40493857860565186, 0.11399006843566895);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (188, 188, 188);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (188, 2228, '2020-12-18 12:29:01.768000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (188, x'5FDCA08DCDBB4F1C413377A6', 188, 'ik_hand_l', 188, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (189, 0.042705535888671875, -0.7100650668144226, 0.015256017446517944, 0.7026740312576294);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (189, -0.008916548453271389, -0.012987823225557804, 0.9676179885864258);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (189, 189, 189);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (189, 2229, '2020-12-18 12:29:01.784000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (189, x'5FDCA08DCDBB4F1C413377D0', 189, 'pelvis', 189, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (190, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (190, 0.43462860584259033, -0.40505748987197876, 0.11512390524148941);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (190, 190, 190);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (190, 2229, '2020-12-18 12:29:01.784000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (190, x'5FDCA08DCDBB4F1C413377D1', 190, 'ik_hand_l', 190, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (191, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (191, -0.28293606638908386, -0.08774057030677795, 0.8686161637306213);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (191, 191, 191);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (191, 2230, '2020-12-18 12:29:01.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (191, x'5FDCA08DCDBB4F1C413377D2', 191, 'ik_hand_gun', 191, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (192, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (192, 0.4336501955986023, -0.40520042181015015, 0.1162794753909111);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (192, 192, 192);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (192, 2230, '2020-12-18 12:29:01.801000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (192, x'5FDCA08DCDBB4F1C413377D3', 192, 'ik_hand_l', 192, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (193, 0.04153573513031006, -0.7096706628799438, 0.013689875602722168, 0.7031747698783875);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (193, -0.007896803319454193, -0.012668914161622524, 0.9676882028579712);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (193, 193, 193);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (193, 2231, '2020-12-18 12:29:01.817000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (193, x'5FDCA08DCDBB4F1C413377D4', 193, 'pelvis', 193, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377d5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (194, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (194, 0.43264666199684143, -0.4054643511772156, 0.11735902726650238);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (194, 194, 194);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (194, 2231, '2020-12-18 12:29:01.817000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (194, x'5FDCA08DCDBB4F1C413377D5', 194, 'ik_hand_l', 194, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (195, 0.004998534917831421, 0.04721823334693909, 0.0850088894367218, 0.995248019695282);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (195, 0.061943087726831436, 7.86781271244763E-8, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (195, 195, 195);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (195, 2232, '2020-12-18 12:29:01.834000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (195, x'5FDCA08DCDBB4F1C413377F3', 195, 'head', 195, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (196, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (196, -0.28213366866111755, -0.0862276628613472, 0.8692410588264465);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (196, 196, 196);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (196, 2232, '2020-12-18 12:29:01.834000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (196, x'5FDCA08DCDBB4F1C413377F4', 196, 'ik_hand_gun', 196, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (197, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (197, 0.43162646889686584, -0.40576648712158203, 0.11842630803585052);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (197, 197, 197);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (197, 2232, '2020-12-18 12:29:01.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (197, x'5FDCA08DCDBB4F1C413377F5', 197, 'ik_hand_l', 197, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (198, 0.04047805070877075, -0.7091784477233887, 0.011976897716522217, 0.7037639021873474);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (198, -0.006888349540531635, -0.01225311029702425, 0.9677703380584717);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (198, 198, 198);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (198, 2233, '2020-12-18 12:29:01.851000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (198, x'5FDCA08DCDBB4F1C413377F6', 198, 'pelvis', 198, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (199, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (199, -0.28162381052970886, -0.08528383076190948, 0.8695757985115051);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (199, 199, 199);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (199, 2233, '2020-12-18 12:29:01.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (199, x'5FDCA08DCDBB4F1C413377F8', 199, 'ik_hand_gun', 199, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377f9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (200, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (200, 0.4305274784564972, -0.40601152181625366, 0.11949396878480911);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (200, 200, 200);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (200, 2233, '2020-12-18 12:29:01.851000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (200, x'5FDCA08DCDBB4F1C413377F9', 200, 'ik_hand_l', 200, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377fb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (201, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (201, -0.28108903765678406, -0.0842861533164978, 0.8699098229408264);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (201, 201, 201);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (201, 2234, '2020-12-18 12:29:01.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (201, x'5FDCA08DCDBB4F1C413377FB', 201, 'ik_hand_gun', 201, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c413377fc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (202, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (202, 0.429412305355072, -0.40623775124549866, 0.12055440992116928);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (202, 202, 202);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (202, 2234, '2020-12-18 12:29:01.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (202, x'5FDCA08DCDBB4F1C413377FC', 202, 'ik_hand_l', 202, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133781c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (203, 0.038802146911621094, -0.708856463432312, 0.010487198829650879, 0.7042064666748047);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (203, -0.005922011565417051, -0.011898878961801529, 0.9677816033363342);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (203, 203, 203);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (203, 2235, '2020-12-18 12:29:01.884000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (203, x'5FDCA08DCDBB4F1C4133781C', 203, 'pelvis', 203, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133781d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (204, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (204, 0.42855405807495117, -0.40663057565689087, 0.12145295739173889);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (204, 204, 204);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (204, 2235, '2020-12-18 12:29:01.884000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (204, x'5FDCA08DCDBB4F1C4133781D', 204, 'ik_hand_l', 204, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133781e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (205, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (205, -0.2805795669555664, -0.08245553821325302, 0.8703852891921997);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (205, 205, 205);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (205, 2236, '2020-12-18 12:29:01.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (205, x'5FDCA08DCDBB4F1C4133781E', 205, 'ik_hand_gun', 205, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133781f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (206, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (206, 0.42776259779930115, -0.4070795476436615, 0.12231436371803284);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (206, 206, 206);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (206, 2236, '2020-12-18 12:29:01.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (206, x'5FDCA08DCDBB4F1C4133781F', 206, 'ik_hand_l', 206, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133783b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (207, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (207, 0.4269954562187195, -0.407455712556839, 0.12332167476415634);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (207, 207, 207);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (207, 2237, '2020-12-18 12:29:01.918000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (207, x'5FDCA08DCDBB4F1C4133783B', 207, 'ik_hand_l', 207, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133783c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (208, 0.036045461893081665, -0.7082903385162354, 0.008648157119750977, 0.7049472332000732);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (208, -0.004520261660218239, -0.011447141878306866, 0.967753529548645);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (208, 208, 208);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (208, 2238, '2020-12-18 12:29:01.934000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (208, x'5FDCA08DCDBB4F1C4133783C', 208, 'pelvis', 208, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133783e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (209, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (209, -0.2802982032299042, -0.08049653470516205, 0.8706485033035278);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (209, 209, 209);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (209, 2238, '2020-12-18 12:29:01.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (209, x'5FDCA08DCDBB4F1C4133783E', 209, 'ik_hand_gun', 209, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c4133783f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (210, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (210, 0.4262412190437317, -0.40780797600746155, 0.12436355650424957);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (210, 210, 210);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (210, 2238, '2020-12-18 12:29:01.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (210, x'5FDCA08DCDBB4F1C4133783F', 210, 'ik_hand_l', 210, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08dcdbb4f1c41337840 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (211, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (211, 0.42550331354141235, -0.40819358825683594, 0.12548215687274933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (211, 211, 211);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (211, 2239, '2020-12-18 12:29:01.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (211, x'5FDCA08DCDBB4F1C41337840', 211, 'ik_hand_l', 211, '2020-12-18 12:29:01.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133785c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (212, 0.03484982252120972, -0.7078359127044678, 0.00749129056930542, 0.7054766416549683);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (212, -0.0036344146355986595, -0.010940168984234333, 0.9678201079368591);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (212, 212, 212);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (212, 2240, '2020-12-18 12:29:01.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (212, x'5FDCA08ECDBB4F1C4133785C', 212, 'pelvis', 212, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133785d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (213, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (213, 0.0854562297463417, 0.04355582967400551, 0.06921374797821045);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (213, 213, 213);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (213, 2240, '2020-12-18 12:29:01.968000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (213, x'5FDCA08ECDBB4F1C4133785D', 213, 'ik_foot_l', 213, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133785e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (214, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (214, -0.2799929082393646, -0.07863422483205795, 0.8711262345314026);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (214, 214, 214);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (214, 2240, '2020-12-18 12:29:01.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (214, x'5FDCA08ECDBB4F1C4133785E', 214, 'ik_hand_gun', 214, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133785f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (215, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (215, 0.42477720975875854, -0.4085858464241028, 0.126614049077034);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (215, 215, 215);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (215, 2240, '2020-12-18 12:29:01.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (215, x'5FDCA08ECDBB4F1C4133785F', 215, 'ik_hand_l', 215, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337860 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (216, 0.01707291603088379, 0.007129549980163574, 0.9998286366462708, -1.4215707778930664E-5);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (216, 4.806518518307712E-6, 3.814697180359872E-8, 0.07517419010400772);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (216, 216, 216);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (216, 2241, '2020-12-18 12:29:01.985000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (216, x'5FDCA08ECDBB4F1C41337860', 216, 'thigh_r', 216, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337861 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (217, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (217, -0.27973535656929016, -0.07768792659044266, 0.871366024017334);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (217, 217, 217);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (217, 2241, '2020-12-18 12:29:01.985000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (217, x'5FDCA08ECDBB4F1C41337861', 217, 'ik_hand_gun', 217, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337862 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (218, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (218, 0.42396116256713867, -0.408907949924469, 0.12743861973285675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (218, 218, 218);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (218, 2241, '2020-12-18 12:29:01.985000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (218, x'5FDCA08ECDBB4F1C41337862', 218, 'ik_hand_l', 218, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337863 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (219, 0.033786624670028687, -0.7075228691101074, 0.006575435400009155, 0.7058515548706055);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (219, -0.0028079221956431866, -0.010368269868195057, 0.967893660068512);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (219, 219, 219);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (219, 2242, '2020-12-18 12:29:02.001000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (219, x'5FDCA08ECDBB4F1C41337863', 219, 'pelvis', 219, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337865 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (220, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (220, 0.423139750957489, -0.4092005789279938, 0.12815068662166595);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (220, 220, 220);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (220, 2242, '2020-12-18 12:29:02.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (220, x'5FDCA08ECDBB4F1C41337865', 220, 'ik_hand_l', 220, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337882 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (221, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (221, -0.2792218327522278, -0.07583316415548325, 0.8718113303184509);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (221, 221, 221);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (221, 2243, '2020-12-18 12:29:02.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (221, x'5FDCA08ECDBB4F1C41337882', 221, 'ik_hand_gun', 221, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337883 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (222, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (222, 0.4223545789718628, -0.40939849615097046, 0.12909485399723053);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (222, 222, 222);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (222, 2243, '2020-12-18 12:29:02.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (222, x'5FDCA08ECDBB4F1C41337883', 222, 'ik_hand_l', 222, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337884 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (223, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (223, 0.42158371210098267, -0.40956640243530273, 0.13010470569133759);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (223, 223, 223);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (223, 2244, '2020-12-18 12:29:02.035000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (223, x'5FDCA08ECDBB4F1C41337884', 223, 'ik_hand_l', 223, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337885 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (224, 0.03166678547859192, -0.7072776556015015, 0.00496143102645874, 0.7062086462974548);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (224, -0.0016772460658103228, -0.009602661244571209, 0.9680560827255249);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (224, 224, 224);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (224, 2245, '2020-12-18 12:29:02.051000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (224, x'5FDCA08ECDBB4F1C41337885', 224, 'pelvis', 224, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337886 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (225, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (225, -0.2787189185619354, -0.0738762617111206, 0.8722526431083679);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (225, 225, 225);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (225, 2245, '2020-12-18 12:29:02.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (225, x'5FDCA08ECDBB4F1C41337886', 225, 'ik_hand_gun', 225, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337887 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (226, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (226, 0.4207443594932556, -0.40978118777275085, 0.13091284036636353);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (226, 226, 226);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (226, 2245, '2020-12-18 12:29:02.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (226, x'5FDCA08ECDBB4F1C41337887', 226, 'ik_hand_l', 226, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378a9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (227, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (227, -0.27841126918792725, -0.07280275225639343, 0.8724892139434814);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (227, 227, 227);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (227, 2246, '2020-12-18 12:29:02.068000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (227, x'5FDCA08ECDBB4F1C413378A9', 227, 'ik_hand_gun', 227, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378aa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (228, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (228, 0.4198821187019348, -0.41001012921333313, 0.13166411221027374);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (228, 228, 228);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (228, 2246, '2020-12-18 12:29:02.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (228, x'5FDCA08ECDBB4F1C413378AA', 228, 'ik_hand_l', 228, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378ab }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (229, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (229, -0.27808475494384766, -0.07184793055057526, 0.8727222084999084);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (229, 229, 229);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (229, 2247, '2020-12-18 12:29:02.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (229, x'5FDCA08ECDBB4F1C413378AB', 229, 'ik_hand_gun', 229, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378ac }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (230, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (230, 0.41896575689315796, -0.4101647138595581, 0.13233065605163574);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (230, 230, 230);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (230, 2247, '2020-12-18 12:29:02.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (230, x'5FDCA08ECDBB4F1C413378AC', 230, 'ik_hand_l', 230, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378ad }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (231, 0.029255956411361694, -0.7070168256759644, 0.003034621477127075, 0.7065845727920532);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (231, -6.497949361801147E-4, -0.00875984039157629, 0.9682595133781433);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (231, 231, 231);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (231, 2248, '2020-12-18 12:29:02.101000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (231, x'5FDCA08ECDBB4F1C413378AD', 231, 'pelvis', 231, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378af }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (232, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (232, 0.41804125905036926, -0.41029515862464905, 0.13296572864055634);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (232, 232, 232);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (232, 2248, '2020-12-18 12:29:02.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (232, x'5FDCA08ECDBB4F1C413378AF', 232, 'ik_hand_l', 232, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378cb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (233, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (233, -0.2773752808570862, -0.06994394212961197, 0.8731285929679871);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (233, 233, 233);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (233, 2249, '2020-12-18 12:29:02.118000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (233, x'5FDCA08ECDBB4F1C413378CB', 233, 'ik_hand_gun', 233, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378cc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (234, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (234, 0.41715681552886963, -0.410366952419281, 0.13373947143554688);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (234, 234, 234);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (234, 2249, '2020-12-18 12:29:02.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (234, x'5FDCA08ECDBB4F1C413378CC', 234, 'ik_hand_l', 234, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378ce }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (235, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (235, -0.27699014544487, -0.06895120441913605, 0.8732858896255493);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (235, 235, 235);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (235, 2250, '2020-12-18 12:29:02.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (235, x'5FDCA08ECDBB4F1C413378CE', 235, 'ik_hand_gun', 235, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378cf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (236, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (236, 0.4163050353527069, -0.41042056679725647, 0.13453364372253418);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (236, 236, 236);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (236, 2250, '2020-12-18 12:29:02.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (236, x'5FDCA08ECDBB4F1C413378CF', 236, 'ik_hand_l', 236, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378d4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (237, 0.027377277612686157, -0.7067996263504028, 0.0012726187705993652, 0.7068825960159302);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (237, 2.2895871370565146E-4, -0.007857893593609333, 0.9684083461761475);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (237, 237, 237);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (237, 2251, '2020-12-18 12:29:02.151000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (237, x'5FDCA08ECDBB4F1C413378D4', 237, 'pelvis', 237, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378d5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (238, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (238, 0.4154740869998932, -0.41051185131073, 0.1351810097694397);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (238, 238, 238);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (238, 2251, '2020-12-18 12:29:02.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (238, x'5FDCA08ECDBB4F1C413378D5', 238, 'ik_hand_l', 238, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378f7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (239, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (239, -0.2768349051475525, -0.06726207584142685, 0.8736905455589294);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (239, 239, 239);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (239, 2252, '2020-12-18 12:29:02.168000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (239, x'5FDCA08ECDBB4F1C413378F7', 239, 'ik_hand_gun', 239, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378f8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (240, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (240, 0.41464218497276306, -0.4106149971485138, 0.1357903629541397);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (240, 240, 240);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (240, 2252, '2020-12-18 12:29:02.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (240, x'5FDCA08ECDBB4F1C413378F8', 240, 'ik_hand_l', 240, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378f9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (241, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (241, -0.27680131793022156, -0.06596025079488754, 0.8740202784538269);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (241, 241, 241);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (241, 2253, '2020-12-18 12:29:02.184000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (241, x'5FDCA08ECDBB4F1C413378F9', 241, 'ik_hand_gun', 241, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413378fa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (242, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (242, 0.4133262038230896, -0.41070181131362915, 0.1367042064666748);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (242, 242, 242);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (242, 2253, '2020-12-18 12:29:02.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (242, x'5FDCA08ECDBB4F1C413378FA', 242, 'ik_hand_l', 242, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337917 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (243, 0.02434307336807251, -0.70657879114151, -9.189844131469727E-4, 0.7072148323059082);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (243, 8.831024169921875E-4, -0.006521453149616718, 0.9686457514762878);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (243, 243, 243);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (243, 2254, '2020-12-18 12:29:02.201000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (243, x'5FDCA08ECDBB4F1C41337917', 243, 'pelvis', 243, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337918 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (244, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (244, -0.27676922082901, -0.0645226463675499, 0.8743847608566284);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (244, 244, 244);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (244, 2254, '2020-12-18 12:29:02.201000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (244, x'5FDCA08ECDBB4F1C41337918', 244, 'ik_hand_gun', 244, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337919 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (245, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (245, 0.4118712544441223, -0.41078317165374756, 0.13770493865013123);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (245, 245, 245);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (245, 2254, '2020-12-18 12:29:02.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (245, x'5FDCA08ECDBB4F1C41337919', 245, 'ik_hand_l', 245, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133791a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (246, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (246, -0.2767443358898163, -0.06312990188598633, 0.8747893571853638);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (246, 246, 246);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (246, 2255, '2020-12-18 12:29:02.218000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (246, x'5FDCA08ECDBB4F1C4133791A', 246, 'ik_hand_gun', 246, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133791b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (247, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (247, 0.41047775745391846, -0.41090360283851624, 0.13861410319805145);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (247, 247, 247);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (247, 2255, '2020-12-18 12:29:02.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (247, x'5FDCA08ECDBB4F1C4133791B', 247, 'ik_hand_l', 247, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133791c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (248, 0.022151827812194824, -0.7063944935798645, -0.002703726291656494, 0.7074663043022156);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (248, 0.001122665940783918, -0.005360411945730448, 0.9688596725463867);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (248, 248, 248);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (248, 2256, '2020-12-18 12:29:02.234000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (248, x'5FDCA08ECDBB4F1C4133791C', 248, 'pelvis', 248, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133791d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (249, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (249, -0.27672162652015686, -0.06175348162651062, 0.8752051591873169);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (249, 249, 249);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (249, 2256, '2020-12-18 12:29:02.234000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (249, x'5FDCA08ECDBB4F1C4133791D', 249, 'ik_hand_gun', 249, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133791e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (250, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (250, 0.4091053307056427, -0.4110353887081146, 0.1394936740398407);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (250, 250, 250);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (250, 2256, '2020-12-18 12:29:02.234000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (250, x'5FDCA08ECDBB4F1C4133791E', 250, 'ik_hand_l', 250, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133793c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (251, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (251, -0.2767888903617859, -0.06058473512530327, 0.8756148219108582);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (251, 251, 251);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (251, 2257, '2020-12-18 12:29:02.251000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (251, x'5FDCA08ECDBB4F1C4133793C', 251, 'ik_hand_gun', 251, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133793d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (252, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (252, 0.40790602564811707, -0.41123637557029724, 0.14017243683338165);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (252, 252, 252);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (252, 2257, '2020-12-18 12:29:02.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (252, x'5FDCA08ECDBB4F1C4133793D', 252, 'ik_hand_l', 252, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133793e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (253, 0.020132392644882202, -0.7062240839004517, -0.004301995038986206, 0.7076888084411621);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (253, 0.001240692101418972, -0.004327849950641394, 0.9690625667572021);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (253, 253, 253);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (253, 2258, '2020-12-18 12:29:02.268000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (253, x'5FDCA08ECDBB4F1C4133793E', 253, 'pelvis', 253, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337940 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (254, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (254, -0.2768842577934265, -0.05947330221533775, 0.8760248422622681);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (254, 254, 254);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (254, 2258, '2020-12-18 12:29:02.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (254, x'5FDCA08ECDBB4F1C41337940', 254, 'ik_hand_gun', 254, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337941 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (255, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (255, 0.40675339102745056, -0.41145992279052734, 0.14079327881336212);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (255, 255, 255);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (255, 2258, '2020-12-18 12:29:02.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (255, x'5FDCA08ECDBB4F1C41337941', 255, 'ik_hand_l', 255, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337942 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (256, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (256, -0.2769179940223694, -0.058422431349754333, 0.8764033913612366);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (256, 256, 256);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (256, 2259, '2020-12-18 12:29:02.285000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (256, x'5FDCA08ECDBB4F1C41337942', 256, 'ik_hand_gun', 256, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337943 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (257, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (257, 0.40568000078201294, -0.4116634130477905, 0.14139382541179657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (257, 257, 257);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (257, 2259, '2020-12-18 12:29:02.285000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (257, x'5FDCA08ECDBB4F1C41337943', 257, 'ik_hand_l', 257, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133795d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (258, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (258, -0.276932030916214, -0.057436924427747726, 0.8767555952072144);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (258, 258, 258);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (258, 2260, '2020-12-18 12:29:02.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (258, x'5FDCA08ECDBB4F1C4133795D', 258, 'ik_hand_gun', 258, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133795e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (259, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (259, 0.4046784043312073, -0.41185182332992554, 0.14196109771728516);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (259, 259, 259);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (259, 2260, '2020-12-18 12:29:02.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (259, x'5FDCA08ECDBB4F1C4133795E', 259, 'ik_hand_l', 259, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337960 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (260, 0.0174541175365448, -0.7060065269470215, -0.006323784589767456, 0.7079617977142334);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (260, 0.0012169646797701716, -0.0030405421275645494, 0.9693064093589783);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (260, 260, 260);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (260, 2261, '2020-12-18 12:29:02.318000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (260, x'5FDCA08ECDBB4F1C41337960', 260, 'pelvis', 260, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337961 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (261, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (261, -0.2772546708583832, -0.05570545047521591, 0.8773916363716125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (261, 261, 261);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (261, 2262, '2020-12-18 12:29:02.334000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (261, x'5FDCA08ECDBB4F1C41337961', 261, 'ik_hand_gun', 261, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337962 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (262, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (262, 0.403085857629776, -0.41241538524627686, 0.14287930727005005);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (262, 262, 262);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (262, 2262, '2020-12-18 12:29:02.334000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (262, x'5FDCA08ECDBB4F1C41337962', 262, 'ik_hand_l', 262, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133797c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (263, 0.015240132808685303, -0.7058277130126953, -0.008172839879989624, 0.7081722021102905);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (263, 0.0010282135335728526, -0.001968612428754568, 0.9694752097129822);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (263, 263, 263);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (263, 2264, '2020-12-18 12:29:02.368000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (263, x'5FDCA08ECDBB4F1C4133797C', 263, 'pelvis', 263, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133797d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (264, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (264, -0.27739840745925903, -0.054158877581357956, 0.8778584003448486);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (264, 264, 264);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (264, 2264, '2020-12-18 12:29:02.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (264, x'5FDCA08ECDBB4F1C4133797D', 264, 'ik_hand_gun', 264, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133797e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (265, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (265, 0.40169867873191833, -0.41272422671318054, 0.1436901092529297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (265, 265, 265);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (265, 2264, '2020-12-18 12:29:02.368000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (265, x'5FDCA08ECDBB4F1C4133797E', 265, 'ik_hand_l', 265, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133799d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (266, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (266, 0.08563399314880371, 0.04425720125436783, 0.06851422041654587);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (266, 266, 266);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (266, 2266, '2020-12-18 12:29:02.401000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (266, x'5FDCA08ECDBB4F1C4133799D', 266, 'ik_foot_l', 266, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133799e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (267, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (267, -0.27760156989097595, -0.05294816941022873, 0.8782607316970825);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (267, 267, 267);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (267, 2266, '2020-12-18 12:29:02.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (267, x'5FDCA08ECDBB4F1C4133799E', 267, 'ik_hand_gun', 267, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c4133799f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (268, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (268, 0.4006977081298828, -0.4131230115890503, 0.14438235759735107);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (268, 268, 268);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (268, 2266, '2020-12-18 12:29:02.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (268, x'5FDCA08ECDBB4F1C4133799F', 268, 'ik_hand_l', 268, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379b5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (269, 0.013294517993927002, -0.7056568264961243, -0.010054975748062134, 0.708357572555542);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (269, 6.155396113172174E-4, -9.138486930169165E-4, 0.9696282148361206);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (269, 269, 269);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (269, 2268, '2020-12-18 12:29:02.434000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (269, x'5FDCA08ECDBB4F1C413379B5', 269, 'pelvis', 269, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379b6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (270, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (270, -0.27790340781211853, -0.051937367767095566, 0.878554105758667);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (270, 270, 270);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (270, 2268, '2020-12-18 12:29:02.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (270, x'5FDCA08ECDBB4F1C413379B6', 270, 'ik_hand_gun', 270, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379b7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (271, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (271, 0.3999779522418976, -0.4134232699871063, 0.14504308998584747);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (271, 271, 271);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (271, 2268, '2020-12-18 12:29:02.434000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (271, x'5FDCA08ECDBB4F1C413379B7', 271, 'ik_hand_l', 271, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379b8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (272, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (272, -0.2782159745693207, -0.05101737752556801, 0.8788133859634399);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (272, 272, 272);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (272, 2270, '2020-12-18 12:29:02.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (272, x'5FDCA08ECDBB4F1C413379B8', 272, 'ik_hand_gun', 272, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379d4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (273, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (273, 0.3991781175136566, -0.41385358572006226, 0.14576356112957);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (273, 273, 273);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (273, 2271, '2020-12-18 12:29:02.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (273, x'5FDCA08ECDBB4F1C413379D4', 273, 'ik_hand_l', 273, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379ea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (274, 0.011793911457061768, -0.7055195569992065, -0.011555701494216919, 0.7084977626800537);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (274, 6.629943527514115E-5, -7.652281055925414E-5, 0.9697721004486084);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (274, 274, 274);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (274, 2274, '2020-12-18 12:29:02.534000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (274, x'5FDCA08ECDBB4F1C413379EA', 274, 'pelvis', 274, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c413379eb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (275, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (275, -0.27857348322868347, -0.04992355406284332, 0.8790826201438904);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (275, 275, 275);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (275, 2274, '2020-12-18 12:29:02.534000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (275, x'5FDCA08ECDBB4F1C413379EB', 275, 'ik_hand_gun', 275, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a02 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (276, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (276, -0.2791106700897217, -0.05095744878053665, 0.8789616823196411);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (276, 276, 276);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (276, 2278, '2020-12-18 12:29:02.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (276, x'5FDCA08ECDBB4F1C41337A02', 276, 'ik_hand_gun', 276, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a08 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (277, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (277, 0.39891517162323, -0.41281619668006897, 0.14590749144554138);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (277, 277, 277);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (277, 2279, '2020-12-18 12:29:02.618000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (277, x'5FDCA08ECDBB4F1C41337A08', 277, 'ik_hand_l', 277, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a14 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (278, 0.013040423393249512, -0.7056267261505127, -0.009936243295669556, 0.7083938717842102);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (278, -9.593198774382472E-4, -3.4500128822401166E-4, 0.969857931137085);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (278, 278, 278);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (278, 2280, '2020-12-18 12:29:02.634000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (278, x'5FDCA08ECDBB4F1C41337A14', 278, 'pelvis', 278, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a15 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (279, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (279, -0.27953556180000305, -0.05210550129413605, 0.8787661790847778);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (279, 279, 279);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (279, 2280, '2020-12-18 12:29:02.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (279, x'5FDCA08ECDBB4F1C41337A15', 279, 'ik_hand_gun', 279, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a1b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (280, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (280, 0.398833304643631, -0.41172870993614197, 0.1457151472568512);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (280, 280, 280);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (280, 2281, '2020-12-18 12:29:02.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (280, x'5FDCA08ECDBB4F1C41337A1B', 280, 'ik_hand_l', 280, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a26 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (281, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (281, -0.2800350487232208, -0.05338449403643608, 0.8786635398864746);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (281, 281, 281);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (281, 2282, '2020-12-18 12:29:02.668000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (281, x'5FDCA08ECDBB4F1C41337A26', 281, 'ik_hand_gun', 281, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a32 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (282, 0.014692932367324829, -0.7057300806045532, -0.008473366498947144, 0.7082775831222534);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (282, -0.00207221950404346, -4.769135848619044E-4, 0.9699551463127136);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (282, 282, 282);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (282, 2283, '2020-12-18 12:29:02.685000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (282, x'5FDCA08ECDBB4F1C41337A32', 282, 'pelvis', 282, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a33 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (283, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (283, 0.39873144030570984, -0.4105926752090454, 0.14536182582378387);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (283, 283, 283);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (283, 2283, '2020-12-18 12:29:02.685000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (283, x'5FDCA08ECDBB4F1C41337A33', 283, 'ik_hand_l', 283, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a3a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (284, 0.7071062922477722, 1.6093254089355469E-6, -0.7071071863174438, -2.9802322387695312E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (284, -0.10089071094989777, 0.046532049775123596, 0.06963136047124863);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (284, 284, 284);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (284, 2284, '2020-12-18 12:29:02.701000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (284, x'5FDCA08ECDBB4F1C41337A3A', 284, 'ik_foot_r', 284, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a3b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (285, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (285, -0.2806817293167114, -0.054831504821777344, 0.8786330223083496);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (285, 285, 285);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (285, 2284, '2020-12-18 12:29:02.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (285, x'5FDCA08ECDBB4F1C41337A3B', 285, 'ik_hand_gun', 285, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a47 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (286, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (286, 0.3986581265926361, -0.4094166159629822, 0.14496256411075592);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (286, 286, 286);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (286, 2285, '2020-12-18 12:29:02.718000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (286, x'5FDCA08ECDBB4F1C41337A47', 286, 'ik_hand_l', 286, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a53 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (287, 0.01649537682533264, -0.7058809995651245, -0.006648123264312744, 0.7081069350242615);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (287, -0.003443450666964054, -7.391357212327421E-4, 0.9700141549110413);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (287, 287, 287);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (287, 2286, '2020-12-18 12:29:02.734000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (287, x'5FDCA08ECDBB4F1C41337A53', 287, 'pelvis', 287, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a54 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (288, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (288, -0.28145700693130493, -0.05632486194372177, 0.8785476684570312);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (288, 288, 288);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (288, 2286, '2020-12-18 12:29:02.734000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (288, x'5FDCA08ECDBB4F1C41337A54', 288, 'ik_hand_gun', 288, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a5a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (289, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (289, 0.3986228108406067, -0.4082147181034088, 0.14436689019203186);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (289, 289, 289);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (289, 2287, '2020-12-18 12:29:02.751000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (289, x'5FDCA08ECDBB4F1C41337A5A', 289, 'ik_hand_l', 289, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a61 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (290, 0.017963320016860962, -0.7059762477874756, -0.005592793226242065, 0.7079852819442749);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (290, -0.004518813453614712, -8.814242319203913E-4, 0.9700675010681152);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (290, 290, 290);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (290, 2288, '2020-12-18 12:29:02.768000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (290, x'5FDCA08ECDBB4F1C41337A61', 290, 'pelvis', 290, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a62 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (291, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (291, -0.2824568450450897, -0.05798618122935295, 0.8784710764884949);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (291, 291, 291);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (291, 2288, '2020-12-18 12:29:02.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (291, x'5FDCA08ECDBB4F1C41337A62', 291, 'ik_hand_gun', 291, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a69 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (292, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (292, 0.39870306849479675, -0.4070820212364197, 0.14327067136764526);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (292, 292, 292);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (292, 2289, '2020-12-18 12:29:02.785000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (292, x'5FDCA08ECDBB4F1C41337A69', 292, 'ik_hand_l', 292, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a6c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (293, 0.019614845514297485, -0.7060673236846924, -0.004341006278991699, 0.707859456539154);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (293, -0.005708007141947746, -0.0011003118706867099, 0.97010338306427);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (293, 293, 293);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (293, 2290, '2020-12-18 12:29:02.801000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (293, x'5FDCA08ECDBB4F1C41337A6C', 293, 'pelvis', 293, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a6d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (294, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (294, -0.2833738923072815, -0.059702318161726, 0.8784005641937256);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (294, 294, 294);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (294, 2290, '2020-12-18 12:29:02.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (294, x'5FDCA08ECDBB4F1C41337A6D', 294, 'ik_hand_gun', 294, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a77 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (295, -0.03541472554206848, 0.019331172108650208, 0.07528628408908844, 0.9963451623916626);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (295, 0.06194309517741203, -7.1525572131747595E-9, -2.8610228852699038E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (295, 295, 295);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (295, 2291, '2020-12-18 12:29:02.818000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (295, x'5FDCA08ECDBB4F1C41337A77', 295, 'head', 295, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a79 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (296, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (296, -0.2838730812072754, -0.06057700887322426, 0.8783584237098694);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (296, 296, 296);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (296, 2291, '2020-12-18 12:29:02.818000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (296, x'5FDCA08ECDBB4F1C41337A79', 296, 'ik_hand_gun', 296, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a7a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (297, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (297, 0.39888837933540344, -0.4060426652431488, 0.14189812541007996);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (297, 297, 297);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (297, 2291, '2020-12-18 12:29:02.818000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (297, x'5FDCA08ECDBB4F1C41337A7A', 297, 'ik_hand_l', 297, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a85 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (298, 0.02118852734565735, -0.7061358690261841, -0.0031147897243499756, 0.7077522277832031);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (298, -0.006984023377299309, -0.0013003540225327015, 0.9701282382011414);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (298, 298, 298);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (298, 2292, '2020-12-18 12:29:02.835000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (298, x'5FDCA08ECDBB4F1C41337A85', 298, 'pelvis', 298, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a86 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (299, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (299, -0.2844030261039734, -0.061487216502428055, 0.8783128261566162);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (299, 299, 299);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (299, 2292, '2020-12-18 12:29:02.835000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (299, x'5FDCA08ECDBB4F1C41337A86', 299, 'ik_hand_gun', 299, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a8d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (300, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (300, -0.28498348593711853, -0.06240680441260338, 0.8783172965049744);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (300, 300, 300);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (300, 2293, '2020-12-18 12:29:02.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (300, x'5FDCA08ECDBB4F1C41337A8D', 300, 'ik_hand_gun', 300, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a8e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (301, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (301, 0.39907747507095337, -0.4050687551498413, 0.14020848274230957);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (301, 301, 301);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (301, 2293, '2020-12-18 12:29:02.851000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (301, x'5FDCA08ECDBB4F1C41337A8E', 301, 'ik_hand_l', 301, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a99 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (302, 0.0227946937084198, -0.7061991691589355, -0.00181540846824646, 0.7076437473297119);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (302, -0.00835929811000824, -0.001527709886431694, 0.9701402187347412);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (302, 302, 302);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (302, 2294, '2020-12-18 12:29:02.868000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (302, x'5FDCA08ECDBB4F1C41337A99', 302, 'pelvis', 302, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a9a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (303, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (303, -0.2855752110481262, -0.0633242204785347, 0.8783360123634338);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (303, 303, 303);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (303, 2294, '2020-12-18 12:29:02.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (303, x'5FDCA08ECDBB4F1C41337A9A', 303, 'ik_hand_gun', 303, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337a9b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (304, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (304, 0.39916327595710754, -0.4046689569950104, 0.13925698399543762);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (304, 304, 304);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (304, 2294, '2020-12-18 12:29:02.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (304, x'5FDCA08ECDBB4F1C41337A9B', 304, 'ik_hand_l', 304, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337aa7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (305, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (305, -0.2862006723880768, -0.06427514553070068, 0.8783926367759705);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (305, 305, 305);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (305, 2295, '2020-12-18 12:29:02.884000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (305, x'5FDCA08ECDBB4F1C41337AA7', 305, 'ik_hand_gun', 305, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337aa8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (306, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (306, 0.3992612361907959, -0.40435096621513367, 0.13817262649536133);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (306, 306, 306);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (306, 2295, '2020-12-18 12:29:02.884000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (306, x'5FDCA08ECDBB4F1C41337AA8', 306, 'ik_hand_l', 306, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337aaf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (307, 0.02451622486114502, -0.7062583565711975, -3.959834575653076E-4, 0.7075291872024536);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (307, -0.009840620681643486, -0.00179878284689039, 0.9701391458511353);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (307, 307, 307);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (307, 2296, '2020-12-18 12:29:02.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (307, x'5FDCA08ECDBB4F1C41337AAF', 307, 'pelvis', 307, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ab0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (308, -0.023000627756118774, 0.022043824195861816, -0.1465665102005005, 0.9886876344680786);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (308, 0.1357707381248474, 4.768371297814156E-8, -1.907348590179936E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (308, 308, 308);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (308, 2296, '2020-12-18 12:29:02.901000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (308, x'5FDCA08ECDBB4F1C41337AB0', 308, 'neck_01', 308, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ab1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (309, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (309, -0.28682658076286316, -0.06522134691476822, 0.8784598112106323);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (309, 309, 309);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (309, 2296, '2020-12-18 12:29:02.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (309, x'5FDCA08ECDBB4F1C41337AB1', 309, 'ik_hand_gun', 309, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ab2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (310, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (310, 0.39936134219169617, -0.40406233072280884, 0.13706502318382263);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (310, 310, 310);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (310, 2296, '2020-12-18 12:29:02.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (310, x'5FDCA08ECDBB4F1C41337AB2', 310, 'ik_hand_l', 310, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337abf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (311, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (311, -0.28753551840782166, -0.06616909056901932, 0.8785390257835388);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (311, 311, 311);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (311, 2297, '2020-12-18 12:29:02.918000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (311, x'5FDCA08ECDBB4F1C41337ABF', 311, 'ik_hand_gun', 311, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ac0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (312, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (312, 0.3994988203048706, -0.40382418036460876, 0.13599607348442078);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (312, 312, 312);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (312, 2297, '2020-12-18 12:29:02.918000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (312, x'5FDCA08ECDBB4F1C41337AC0', 312, 'ik_hand_l', 312, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ac6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (313, 0.02620643377304077, -0.7063336968421936, 8.395612239837646E-4, 0.7073930501937866);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (313, -0.011402739211916924, -0.002027435228228569, 0.9701404571533203);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (313, 313, 313);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (313, 2298, '2020-12-18 12:29:02.934000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (313, x'5FDCA08ECDBB4F1C41337AC6', 313, 'pelvis', 313, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ac7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (314, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (314, -0.2882797420024872, -0.0671318992972374, 0.8786231279373169);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (314, 314, 314);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (314, 2298, '2020-12-18 12:29:02.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (314, x'5FDCA08ECDBB4F1C41337AC7', 314, 'ik_hand_gun', 314, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ac8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (315, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (315, 0.39964908361434937, -0.4035964906215668, 0.13492168486118317);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (315, 315, 315);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (315, 2298, '2020-12-18 12:29:02.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (315, x'5FDCA08ECDBB4F1C41337AC8', 315, 'ik_hand_l', 315, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ad4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (316, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (316, -0.2889364957809448, -0.06807229667901993, 0.878677248954773);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (316, 316, 316);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (316, 2299, '2020-12-18 12:29:02.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (316, x'5FDCA08ECDBB4F1C41337AD4', 316, 'ik_hand_gun', 316, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ad5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (317, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (317, 0.3999488055706024, -0.4034246802330017, 0.1337856650352478);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (317, 317, 317);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (317, 2299, '2020-12-18 12:29:02.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (317, x'5FDCA08ECDBB4F1C41337AD5', 317, 'ik_hand_l', 317, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ae2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (318, 0.027572154998779297, -0.7063377499580383, 0.001957029104232788, 0.7073348760604858);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (318, -0.013042067177593708, -0.0022793577518314123, 0.9701821208000183);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (318, 318, 318);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (318, 2300, '2020-12-18 12:29:02.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (318, x'5FDCA08ECDBB4F1C41337AE2', 318, 'pelvis', 318, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ae4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (319, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (319, -0.2895577549934387, -0.06899003684520721, 0.8787223100662231);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (319, 319, 319);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (319, 2300, '2020-12-18 12:29:02.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (319, x'5FDCA08ECDBB4F1C41337AE4', 319, 'ik_hand_gun', 319, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337ae5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (320, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (320, 0.4002838432788849, -0.40327101945877075, 0.13265277445316315);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (320, 320, 320);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (320, 2300, '2020-12-18 12:29:02.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (320, x'5FDCA08ECDBB4F1C41337AE5', 320, 'ik_hand_l', 320, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337aea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (321, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (321, -0.2901862561702728, -0.06992936879396439, 0.878799557685852);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (321, 321, 321);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (321, 2301, '2020-12-18 12:29:02.984000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (321, x'5FDCA08ECDBB4F1C41337AEA', 321, 'ik_hand_gun', 321, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08ecdbb4f1c41337aeb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (322, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (322, 0.40061408281326294, -0.4031614065170288, 0.13130834698677063);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (322, 322, 322);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (322, 2301, '2020-12-18 12:29:02.984000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (322, x'5FDCA08ECDBB4F1C41337AEB', 322, 'ik_hand_l', 322, '2020-12-18 12:29:02.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337af8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (323, 0.028797119855880737, -0.7063137292861938, 0.003007441759109497, 0.7073063850402832);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (323, -0.014718549326062202, -0.0025004588533192873, 0.9701972007751465);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (323, 323, 323);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (323, 2302, '2020-12-18 12:29:03.001000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (323, x'5FDCA08FCDBB4F1C41337AF8', 323, 'pelvis', 323, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337af9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (324, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (324, -0.29083433747291565, -0.07090096920728683, 0.8788877129554749);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (324, 324, 324);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (324, 2302, '2020-12-18 12:29:03.001000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (324, x'5FDCA08FCDBB4F1C41337AF9', 324, 'ik_hand_gun', 324, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337afa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (325, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (325, 0.40095236897468567, -0.4030604362487793, 0.12986890971660614);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (325, 325, 325);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (325, 2302, '2020-12-18 12:29:03.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (325, x'5FDCA08FCDBB4F1C41337AFA', 325, 'ik_hand_l', 325, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b05 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (326, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (326, -0.29150447249412537, -0.07190576195716858, 0.8789795637130737);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (326, 326, 326);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (326, 2303, '2020-12-18 12:29:03.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (326, x'5FDCA08FCDBB4F1C41337B05', 326, 'ik_hand_gun', 326, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b06 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (327, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (327, 0.4013289213180542, -0.4029758870601654, 0.12824647128582);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (327, 327, 327);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (327, 2303, '2020-12-18 12:29:03.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (327, x'5FDCA08FCDBB4F1C41337B06', 327, 'ik_hand_l', 327, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b0d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (328, 0.029895037412643433, -0.7062497138977051, 0.004122227430343628, 0.7073191404342651);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (328, -0.016483455896377563, -0.0027389538008719683, 0.9701836705207825);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (328, 328, 328);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (328, 2304, '2020-12-18 12:29:03.034000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (328, x'5FDCA08FCDBB4F1C41337B0D', 328, 'pelvis', 328, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b0e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (329, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (329, -0.29214924573898315, -0.07287225872278214, 0.8790680766105652);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (329, 329, 329);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (329, 2304, '2020-12-18 12:29:03.034000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (329, x'5FDCA08FCDBB4F1C41337B0E', 329, 'ik_hand_gun', 329, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b0f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (330, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (330, 0.40169841051101685, -0.4028998017311096, 0.1266489028930664);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (330, 330, 330);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (330, 2304, '2020-12-18 12:29:03.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (330, x'5FDCA08FCDBB4F1C41337B0F', 330, 'ik_hand_l', 330, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b1a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (331, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (331, -0.2928600609302521, -0.07387080788612366, 0.8791452050209045);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (331, 331, 331);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (331, 2305, '2020-12-18 12:29:03.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (331, x'5FDCA08FCDBB4F1C41337B1A', 331, 'ik_hand_gun', 331, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b1b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (332, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (332, 0.4021829068660736, -0.40289363265037537, 0.1250254064798355);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (332, 332, 332);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (332, 2305, '2020-12-18 12:29:03.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (332, x'5FDCA08FCDBB4F1C41337B1B', 332, 'ik_hand_l', 332, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b27 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (333, 0.030733108520507812, -0.706165611743927, 0.005121171474456787, 0.7073606252670288);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (333, -0.018320005387067795, -0.003030929481610656, 0.9701709747314453);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (333, 333, 333);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (333, 2306, '2020-12-18 12:29:03.068000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (333, x'5FDCA08FCDBB4F1C41337B27', 333, 'pelvis', 333, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b28 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (334, -0.07911677658557892, -0.0055125802755355835, 0.09019625186920166, 0.9927610754966736);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (334, 0.0619429275393486, -4.291534239087014E-8, -9.53674295089968E-9);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (334, 334, 334);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (334, 2306, '2020-12-18 12:29:03.068000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (334, x'5FDCA08FCDBB4F1C41337B28', 334, 'head', 334, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b29 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (335, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (335, -0.29356205463409424, -0.07483918964862823, 0.8792158961296082);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (335, 335, 335);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (335, 2306, '2020-12-18 12:29:03.068000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (335, x'5FDCA08FCDBB4F1C41337B29', 335, 'ik_hand_gun', 335, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b2a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (336, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (336, 0.40268176794052124, -0.4029079079627991, 0.12345860153436661);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (336, 336, 336);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (336, 2306, '2020-12-18 12:29:03.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (336, x'5FDCA08FCDBB4F1C41337B2A', 336, 'ik_hand_l', 336, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b31 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (337, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (337, 0.08511923253536224, 0.04365905746817589, 0.0691765546798706);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (337, 337, 337);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (337, 2307, '2020-12-18 12:29:03.084000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (337, x'5FDCA08FCDBB4F1C41337B31', 337, 'ik_foot_l', 337, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b32 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (338, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (338, -0.29431384801864624, -0.07576684653759003, 0.8792872428894043);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (338, 338, 338);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (338, 2307, '2020-12-18 12:29:03.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (338, x'5FDCA08FCDBB4F1C41337B32', 338, 'ik_hand_gun', 338, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b33 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (339, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (339, 0.4032641649246216, -0.4030466675758362, 0.12202972918748856);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (339, 339, 339);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (339, 2307, '2020-12-18 12:29:03.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (339, x'5FDCA08FCDBB4F1C41337B33', 339, 'ik_hand_l', 339, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b3d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (340, 0.03133246302604675, -0.7060086727142334, 0.005854934453964233, 0.7074853181838989);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (340, -0.020168453454971313, -0.0033388519659638405, 0.9701786637306213);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (340, 340, 340);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (340, 2308, '2020-12-18 12:29:03.101000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (340, x'5FDCA08FCDBB4F1C41337B3D', 340, 'pelvis', 340, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b3e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (341, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (341, -0.2951012849807739, -0.07671067863702774, 0.8793607354164124);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (341, 341, 341);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (341, 2308, '2020-12-18 12:29:03.101000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (341, x'5FDCA08FCDBB4F1C41337B3E', 341, 'ik_hand_gun', 341, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b3f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (342, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (342, 0.40388625860214233, -0.40322306752204895, 0.12059635668992996);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (342, 342, 342);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (342, 2308, '2020-12-18 12:29:03.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (342, x'5FDCA08FCDBB4F1C41337B3F', 342, 'ik_hand_l', 342, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b49 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (343, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (343, -0.2959202229976654, -0.07761726528406143, 0.8794209957122803);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (343, 343, 343);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (343, 2309, '2020-12-18 12:29:03.118000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (343, x'5FDCA08FCDBB4F1C41337B49', 343, 'ik_hand_gun', 343, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b4a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (344, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (344, 0.4045538306236267, -0.4033859968185425, 0.11904818564653397);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (344, 344, 344);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (344, 2309, '2020-12-18 12:29:03.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (344, x'5FDCA08FCDBB4F1C41337B4A', 344, 'ik_hand_l', 344, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b4e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (345, 0.03206643462181091, -0.7059723138809204, 0.006526678800582886, 0.7074828147888184);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (345, -0.02208976447582245, -0.003552780020982027, 0.9701786637306213);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (345, 345, 345);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (345, 2310, '2020-12-18 12:29:03.134000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (345, x'5FDCA08FCDBB4F1C41337B4E', 345, 'pelvis', 345, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b4f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (346, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (346, -0.29675838351249695, -0.07852411270141602, 0.8794780373573303);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (346, 346, 346);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (346, 2310, '2020-12-18 12:29:03.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (346, x'5FDCA08FCDBB4F1C41337B4F', 346, 'ik_hand_gun', 346, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b50 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (347, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (347, 0.405242919921875, -0.40354713797569275, 0.11744770407676697);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (347, 347, 347);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (347, 2310, '2020-12-18 12:29:03.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (347, x'5FDCA08FCDBB4F1C41337B50', 347, 'ik_hand_l', 347, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b59 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (348, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (348, -0.2976166903972626, -0.07944690436124802, 0.8795570135116577);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (348, 348, 348);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (348, 2311, '2020-12-18 12:29:03.151000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (348, x'5FDCA08FCDBB4F1C41337B59', 348, 'ik_hand_gun', 348, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b5a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (349, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (349, 0.4058738350868225, -0.40373316407203674, 0.11584095656871796);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (349, 349, 349);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (349, 2311, '2020-12-18 12:29:03.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (349, x'5FDCA08FCDBB4F1C41337B5A', 349, 'ik_hand_l', 349, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b5f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (350, 0.03238648176193237, -0.7058071494102478, 0.007143735885620117, 0.7076270580291748);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (350, -0.024064481258392334, -0.003928604070097208, 0.9701693654060364);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (350, 350, 350);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (350, 2312, '2020-12-18 12:29:03.168000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (350, x'5FDCA08FCDBB4F1C41337B5F', 350, 'pelvis', 350, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b60 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (351, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (351, -0.29849618673324585, -0.08039069920778275, 0.8796440958976746);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (351, 351, 351);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (351, 2312, '2020-12-18 12:29:03.168000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (351, x'5FDCA08FCDBB4F1C41337B60', 351, 'ik_hand_gun', 351, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b62 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (352, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (352, 0.4064983129501343, -0.4039301872253418, 0.11420400440692902);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (352, 352, 352);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (352, 2312, '2020-12-18 12:29:03.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (352, x'5FDCA08FCDBB4F1C41337B62', 352, 'ik_hand_l', 352, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b77 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (353, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (353, -0.2994062304496765, -0.08119531720876694, 0.8797013759613037);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (353, 353, 353);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (353, 2313, '2020-12-18 12:29:03.184000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (353, x'5FDCA08FCDBB4F1C41337B77', 353, 'ik_hand_gun', 353, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b78 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (354, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (354, 0.4071670472621918, -0.40416690707206726, 0.11280664056539536);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (354, 354, 354);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (354, 2313, '2020-12-18 12:29:03.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (354, x'5FDCA08FCDBB4F1C41337B78', 354, 'ik_hand_l', 354, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b87 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (355, 0.03256753087043762, -0.7057058811187744, 0.0074401795864105225, 0.707716703414917);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (355, -0.026062237098813057, -0.004209060687571764, 0.9701568484306335);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (355, 355, 355);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (355, 2314, '2020-12-18 12:29:03.201000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (355, x'5FDCA08FCDBB4F1C41337B87', 355, 'pelvis', 355, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b88 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (356, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (356, -0.3003763258457184, -0.08200793713331223, 0.879753828048706);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (356, 356, 356);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (356, 2314, '2020-12-18 12:29:03.201000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (356, x'5FDCA08FCDBB4F1C41337B88', 356, 'ik_hand_gun', 356, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b89 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (357, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (357, 0.40788596868515015, -0.4044281244277954, 0.11139492690563202);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (357, 357, 357);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (357, 2314, '2020-12-18 12:29:03.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (357, x'5FDCA08FCDBB4F1C41337B89', 357, 'ik_hand_l', 357, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (358, 0.0324474573135376, -0.7056651711463928, 0.0074846744537353516, 0.7077623605728149);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (358, -0.027071835473179817, -0.004417724441736937, 0.9701353311538696);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (358, 358, 358);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (358, 2315, '2020-12-18 12:29:03.218000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (358, x'5FDCA08FCDBB4F1C41337B8A', 358, 'pelvis', 358, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (359, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (359, -0.3012951910495758, -0.08281145244836807, 0.8797364830970764);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (359, 359, 359);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (359, 2315, '2020-12-18 12:29:03.218000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (359, x'5FDCA08FCDBB4F1C41337B8B', 359, 'ik_hand_gun', 359, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (360, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (360, 0.40865761041641235, -0.40467047691345215, 0.11010950803756714);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (360, 360, 360);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (360, 2315, '2020-12-18 12:29:03.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (360, x'5FDCA08FCDBB4F1C41337B8C', 360, 'ik_hand_l', 360, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (361, 0.03227740526199341, -0.7056264877319336, 0.007506459951400757, 0.7078083753585815);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (361, -0.028063885867595673, -0.004641341976821423, 0.9701103568077087);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (361, 361, 361);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (361, 2316, '2020-12-18 12:29:03.234000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (361, x'5FDCA08FCDBB4F1C41337B8D', 361, 'pelvis', 361, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (362, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (362, -0.30218860507011414, -0.08360147476196289, 0.8797020316123962);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (362, 362, 362);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (362, 2316, '2020-12-18 12:29:03.234000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (362, x'5FDCA08FCDBB4F1C41337B8E', 362, 'ik_hand_gun', 362, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337b8f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (363, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (363, 0.409431517124176, -0.40490490198135376, 0.10887350887060165);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (363, 363, 363);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (363, 2316, '2020-12-18 12:29:03.234000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (363, x'5FDCA08FCDBB4F1C41337B8F', 363, 'ik_hand_l', 363, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (364, 0.03207269310951233, -0.7055543661117554, 0.007577329874038696, 0.7078889608383179);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (364, -0.029081568121910095, -0.004913561046123505, 0.9700750708580017);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (364, 364, 364);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (364, 2317, '2020-12-18 12:29:03.251000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (364, x'5FDCA08FCDBB4F1C41337BA3', 364, 'pelvis', 364, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (365, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (365, -0.3030864894390106, -0.08441071957349777, 0.8796380162239075);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (365, 365, 365);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (365, 2317, '2020-12-18 12:29:03.251000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (365, x'5FDCA08FCDBB4F1C41337BA4', 365, 'ik_hand_gun', 365, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (366, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (366, 0.4102422893047333, -0.40514034032821655, 0.10759976506233215);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (366, 366, 366);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (366, 2317, '2020-12-18 12:29:03.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (366, x'5FDCA08FCDBB4F1C41337BA5', 366, 'ik_hand_l', 366, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (367, 0.03185632824897766, -0.7054716348648071, 0.007663309574127197, 0.707980215549469);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (367, -0.030113061890006065, -0.0052019525319337845, 0.970036506652832);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (367, 367, 367);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (367, 2318, '2020-12-18 12:29:03.268000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (367, x'5FDCA08FCDBB4F1C41337BA6', 367, 'pelvis', 367, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (368, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (368, -0.3039911985397339, -0.0852304995059967, 0.8795648217201233);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (368, 368, 368);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (368, 2318, '2020-12-18 12:29:03.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (368, x'5FDCA08FCDBB4F1C41337BA8', 368, 'ik_hand_gun', 368, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ba9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (369, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (369, 0.41106879711151123, -0.4053775668144226, 0.1063072681427002);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (369, 369, 369);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (369, 2318, '2020-12-18 12:29:03.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (369, x'5FDCA08FCDBB4F1C41337BA9', 369, 'ik_hand_l', 369, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337baa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (370, 0.03200647234916687, -0.705390214920044, 0.007896721363067627, 0.7080519199371338);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (370, -0.031131893396377563, -0.005379104521125555, 0.9700073003768921);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (370, 370, 370);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (370, 2319, '2020-12-18 12:29:03.284000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (370, x'5FDCA08FCDBB4F1C41337BAA', 370, 'pelvis', 370, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bab }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (371, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (371, -0.30493906140327454, -0.08593856543302536, 0.8795357346534729);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (371, 371, 371);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (371, 2319, '2020-12-18 12:29:03.284000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (371, x'5FDCA08FCDBB4F1C41337BAB', 371, 'ik_hand_gun', 371, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bac }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (372, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (372, 0.41182780265808105, -0.4056433439254761, 0.10506422072649002);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (372, 372, 372);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (372, 2319, '2020-12-18 12:29:03.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (372, x'5FDCA08FCDBB4F1C41337BAC', 372, 'ik_hand_l', 372, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bb2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (373, 0.03226548433303833, -0.7053070068359375, 0.0081787109375, 0.7081199884414673);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (373, -0.03217589855194092, -0.005529634654521942, 0.9699799418449402);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (373, 373, 373);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (373, 2320, '2020-12-18 12:29:03.301000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (373, x'5FDCA08FCDBB4F1C41337BB2', 373, 'pelvis', 373, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bb3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (374, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (374, -0.3059261739253998, -0.08663484454154968, 0.8795185089111328);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (374, 374, 374);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (374, 2320, '2020-12-18 12:29:03.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (374, x'5FDCA08FCDBB4F1C41337BB3', 374, 'ik_hand_gun', 374, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bb4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (375, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (375, 0.4125891923904419, -0.4059244692325592, 0.10380002111196518);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (375, 375, 375);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (375, 2320, '2020-12-18 12:29:03.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (375, x'5FDCA08FCDBB4F1C41337BB4', 375, 'ik_hand_l', 375, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bb9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (376, 0.032559216022491455, -0.7052058577537537, 0.008444130420684814, 0.7082040309906006);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (376, -0.033227916806936264, -0.005711517296731472, 0.9699492454528809);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (376, 376, 376);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (376, 2321, '2020-12-18 12:29:03.318000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (376, x'5FDCA08FCDBB4F1C41337BB9', 376, 'pelvis', 376, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bba }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (377, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (377, -0.30685940384864807, -0.08728273212909698, 0.8794755339622498);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (377, 377, 377);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (377, 2321, '2020-12-18 12:29:03.318000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (377, x'5FDCA08FCDBB4F1C41337BBA', 377, 'ik_hand_gun', 377, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bbb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (378, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (378, 0.4132392704486847, -0.4061005711555481, 0.10291986912488937);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (378, 378, 378);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (378, 2321, '2020-12-18 12:29:03.318000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (378, x'5FDCA08FCDBB4F1C41337BBB', 378, 'ik_hand_l', 378, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bc6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (379, 0.03286436200141907, -0.7050989866256714, 0.008705288171768188, 0.7082931995391846);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (379, -0.03428542613983154, -0.005903474986553192, 0.9699174761772156);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (379, 379, 379);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (379, 2322, '2020-12-18 12:29:03.334000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (379, x'5FDCA08FCDBB4F1C41337BC6', 379, 'pelvis', 379, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bc7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (380, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (380, -0.30777889490127563, -0.08791772276163101, 0.8794245719909668);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (380, 380, 380);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (380, 2322, '2020-12-18 12:29:03.334000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (380, x'5FDCA08FCDBB4F1C41337BC7', 380, 'ik_hand_gun', 380, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bd1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (381, 0.03315916657447815, -0.7049845457077026, 0.008922666311264038, 0.7083907127380371);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (381, -0.03533889353275299, -0.006057510152459145, 0.9698914289474487);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (381, 381, 381);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (381, 2323, '2020-12-18 12:29:03.351000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (381, x'5FDCA08FCDBB4F1C41337BD1', 381, 'pelvis', 381, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bd2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (382, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (382, -0.30872029066085815, -0.08836137503385544, 0.8793452382087708);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (382, 382, 382);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (382, 2323, '2020-12-18 12:29:03.351000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (382, x'5FDCA08FCDBB4F1C41337BD2', 382, 'ik_hand_gun', 382, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bd3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (383, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (383, 0.41450345516204834, -0.40645140409469604, 0.10163402557373047);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (383, 383, 383);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (383, 2323, '2020-12-18 12:29:03.351000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (383, x'5FDCA08FCDBB4F1C41337BD3', 383, 'ik_hand_l', 383, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bd9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (384, 0.033450812101364136, -0.7048680782318115, 0.009127765893936157, 0.708490252494812);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (384, -0.03639060631394386, -0.006200942676514387, 0.9698667526245117);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (384, 384, 384);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (384, 2324, '2020-12-18 12:29:03.368000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (384, x'5FDCA08FCDBB4F1C41337BD9', 384, 'pelvis', 384, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bda }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (385, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (385, -0.3096669316291809, -0.08875148743391037, 0.8792579174041748);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (385, 385, 385);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (385, 2324, '2020-12-18 12:29:03.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (385, x'5FDCA08FCDBB4F1C41337BDA', 385, 'ik_hand_gun', 385, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337be4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (386, 0.03356391191482544, -0.7047732472419739, 0.009388595819473267, 0.7085758447647095);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (386, -0.03743338957428932, -0.006394960917532444, 0.9698380827903748);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (386, 386, 386);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (386, 2325, '2020-12-18 12:29:03.384000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (386, x'5FDCA08FCDBB4F1C41337BE4', 386, 'pelvis', 386, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337be5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (387, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (387, 0.4158112108707428, -0.4068029820919037, 0.10089881718158722);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (387, 387, 387);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (387, 2325, '2020-12-18 12:29:03.384000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (387, x'5FDCA08FCDBB4F1C41337BE5', 387, 'ik_hand_l', 387, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bf0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (388, 0.03363025188446045, -0.7046812772750854, 0.009674280881881714, 0.7086602449417114);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (388, -0.038509514182806015, -0.006609954871237278, 0.9698072671890259);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (388, 388, 388);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (388, 2326, '2020-12-18 12:29:03.401000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (388, x'5FDCA08FCDBB4F1C41337BF0', 388, 'pelvis', 388, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bf1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (389, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (389, 0.08502151072025299, 0.042881011962890625, 0.06984498351812363);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (389, 389, 389);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (389, 2326, '2020-12-18 12:29:03.401000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (389, x'5FDCA08FCDBB4F1C41337BF1', 389, 'ik_foot_l', 389, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bf2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (390, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (390, -0.31146442890167236, -0.08952020108699799, 0.8789610862731934);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (390, 390, 390);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (390, 2326, '2020-12-18 12:29:03.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (390, x'5FDCA08FCDBB4F1C41337BF2', 390, 'ik_hand_gun', 390, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bf7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (391, 0.033668458461761475, -0.7046181559562683, 0.009946465492248535, 0.7087175250053406);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (391, -0.039561305195093155, -0.006820070557296276, 0.969774067401886);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (391, 391, 391);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (391, 2327, '2020-12-18 12:29:03.418000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (391, x'5FDCA08FCDBB4F1C41337BF7', 391, 'pelvis', 391, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337bf8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (392, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (392, 0.4171077609062195, -0.40694907307624817, 0.10061924904584885);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (392, 392, 392);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (392, 2327, '2020-12-18 12:29:03.418000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (392, x'5FDCA08FCDBB4F1C41337BF8', 392, 'ik_hand_l', 392, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c03 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (393, 0.03369945287704468, -0.7045624852180481, 0.010213792324066162, 0.7087676525115967);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (393, -0.04060134291648865, -0.0070278216153383255, 0.9697404503822327);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (393, 393, 393);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (393, 2328, '2020-12-18 12:29:03.434000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (393, x'5FDCA08FCDBB4F1C41337C03', 393, 'pelvis', 393, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c04 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (394, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (394, -0.3132641911506653, -0.08999505639076233, 0.8785646557807922);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (394, 394, 394);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (394, 2328, '2020-12-18 12:29:03.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (394, x'5FDCA08FCDBB4F1C41337C04', 394, 'ik_hand_gun', 394, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c09 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (395, 0.0338311493396759, -0.7045285701751709, 0.010496556758880615, 0.7087908983230591);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (395, -0.04164580628275871, -0.0071993255987763405, 0.96970134973526);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (395, 395, 395);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (395, 2329, '2020-12-18 12:29:03.451000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (395, x'5FDCA08FCDBB4F1C41337C09', 395, 'pelvis', 395, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c0a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (396, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (396, 0.4182668626308441, -0.4069735109806061, 0.1008143201470375);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (396, 396, 396);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (396, 2329, '2020-12-18 12:29:03.451000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (396, x'5FDCA08FCDBB4F1C41337C0A', 396, 'ik_hand_l', 396, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c1f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (397, 0.033993691205978394, -0.7045005559921265, 0.010786950588226318, 0.7088066339492798);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (397, -0.04270293563604355, -0.007362212985754013, 0.9696603417396545);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (397, 397, 397);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (397, 2330, '2020-12-18 12:29:03.468000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (397, x'5FDCA08FCDBB4F1C41337C1F', 397, 'pelvis', 397, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c20 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (398, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (398, -0.31522151827812195, -0.09024011343717575, 0.8781024217605591);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (398, 398, 398);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (398, 2330, '2020-12-18 12:29:03.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (398, x'5FDCA08FCDBB4F1C41337C20', 398, 'ik_hand_gun', 398, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c21 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (399, 0.03411442041397095, -0.7045055031776428, 0.01125037670135498, 0.7087886929512024);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (399, -0.04375777766108513, -0.0075593567453324795, 0.9696030020713806);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (399, 399, 399);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (399, 2331, '2020-12-18 12:29:03.484000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (399, x'5FDCA08FCDBB4F1C41337C21', 399, 'pelvis', 399, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c23 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (400, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (400, -0.31621789932250977, -0.09033746272325516, 0.8777779340744019);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (400, 400, 400);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (400, 2331, '2020-12-18 12:29:03.484000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (400, x'5FDCA08FCDBB4F1C41337C23', 400, 'ik_hand_gun', 400, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c24 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (401, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (401, 0.41930416226387024, -0.4068516194820404, 0.101455457508564);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (401, 401, 401);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (401, 2331, '2020-12-18 12:29:03.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (401, x'5FDCA08FCDBB4F1C41337C24', 401, 'ik_hand_l', 401, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c39 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (402, 0.03422260284423828, -0.7045202255249023, 0.011767387390136719, 0.7087603807449341);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (402, -0.04481414332985878, -0.007767410017549992, 0.9695407152175903);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (402, 402, 402);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (402, 2332, '2020-12-18 12:29:03.501000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (402, x'5FDCA08FCDBB4F1C41337C39', 402, 'pelvis', 402, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c3a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (403, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (403, -0.3172173500061035, -0.09043092280626297, 0.8774256706237793);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (403, 403, 403);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (403, 2332, '2020-12-18 12:29:03.501000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (403, x'5FDCA08FCDBB4F1C41337C3A', 403, 'ik_hand_gun', 403, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c3b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (404, 0.03433820605278015, -0.704535961151123, 0.01212802529335022, 0.7087330222129822);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (404, -0.04585700482130051, -0.007918700575828552, 0.9694967269897461);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (404, 404, 404);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (404, 2333, '2020-12-18 12:29:03.517000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (404, x'5FDCA08FCDBB4F1C41337C3B', 404, 'pelvis', 404, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c3d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (405, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (405, 0.4201686680316925, -0.40642037987709045, 0.10240641981363297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (405, 405, 405);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (405, 2333, '2020-12-18 12:29:03.517000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (405, x'5FDCA08FCDBB4F1C41337C3D', 405, 'ik_hand_l', 405, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c50 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (406, 0.03445681929588318, -0.7045520544052124, 0.012442231178283691, 0.7087058424949646);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (406, -0.04690223187208176, -0.00805335957556963, 0.9694581627845764);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (406, 406, 406);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (406, 2334, '2020-12-18 12:29:03.534000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (406, x'5FDCA08FCDBB4F1C41337C50', 406, 'pelvis', 406, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c51 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (407, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (407, -0.3189099431037903, -0.09037799388170242, 0.8766700625419617);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (407, 407, 407);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (407, 2334, '2020-12-18 12:29:03.534000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (407, x'5FDCA08FCDBB4F1C41337C51', 407, 'ik_hand_gun', 407, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c52 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (408, 0.03493165969848633, -0.7045668959617615, 0.012946009635925293, 0.7086588144302368);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (408, -0.04797797650098801, -0.008083881810307503, 0.9694206118583679);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (408, 408, 408);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (408, 2335, '2020-12-18 12:29:03.552000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (408, x'5FDCA08FCDBB4F1C41337C52', 408, 'pelvis', 408, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c53 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (409, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (409, 0.42087095975875854, -0.4056786000728607, 0.10362809896469116);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (409, 409, 409);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (409, 2335, '2020-12-18 12:29:03.552000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (409, x'5FDCA08FCDBB4F1C41337C53', 409, 'ik_hand_l', 409, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c54 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (410, 0.03547295928001404, -0.7045799493789673, 0.01346638798713684, 0.7086092233657837);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (410, -0.0489821583032608, -0.008082356303930283, 0.9693862199783325);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (410, 410, 410);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (410, 2336, '2020-12-18 12:29:03.568000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (410, x'5FDCA08FCDBB4F1C41337C54', 410, 'pelvis', 410, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c56 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (411, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (411, -0.3204426169395447, -0.09017928689718246, 0.8759662508964539);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (411, 411, 411);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (411, 2336, '2020-12-18 12:29:03.568000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (411, x'5FDCA08FCDBB4F1C41337C56', 411, 'ik_hand_gun', 411, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (412, 0.035970538854599, -0.7046108245849609, 0.014058500528335571, 0.708541989326477);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (412, -0.05001799762248993, -0.008099288679659367, 0.9693486094474792);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (412, 412, 412);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (412, 2337, '2020-12-18 12:29:03.584000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (412, x'5FDCA08FCDBB4F1C41337C6A', 412, 'pelvis', 412, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (413, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (413, 0.4214354157447815, -0.4048226475715637, 0.10527574270963669);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (413, 413, 413);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (413, 2337, '2020-12-18 12:29:03.584000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (413, x'5FDCA08FCDBB4F1C41337C6B', 413, 'ik_hand_l', 413, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (414, 0.0364585816860199, -0.7046477794647217, 0.014680296182632446, 0.7084677219390869);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (414, -0.05107474699616432, -0.008122405968606472, 0.9693095088005066);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (414, 414, 414);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (414, 2338, '2020-12-18 12:29:03.601000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (414, x'5FDCA08FCDBB4F1C41337C6C', 414, 'pelvis', 414, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (415, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (415, -0.3220861256122589, -0.08981094509363174, 0.8751569986343384);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (415, 415, 415);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (415, 2338, '2020-12-18 12:29:03.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (415, x'5FDCA08FCDBB4F1C41337C6D', 415, 'ik_hand_gun', 415, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (416, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (416, 0.4217078983783722, -0.40436553955078125, 0.10621101409196854);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (416, 416, 416);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (416, 2338, '2020-12-18 12:29:03.601000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (416, x'5FDCA08FCDBB4F1C41337C6E', 416, 'ik_hand_l', 416, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c6f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (417, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (417, 0.084745392203331, 0.042147453874349594, 0.07051162421703339);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (417, 417, 417);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (417, 2339, '2020-12-18 12:29:03.618000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (417, x'5FDCA08FCDBB4F1C41337C6F', 417, 'ik_foot_l', 417, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c70 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (418, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (418, 0.4218672215938568, -0.4038892388343811, 0.107142873108387);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (418, 418, 418);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (418, 2339, '2020-12-18 12:29:03.618000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (418, x'5FDCA08FCDBB4F1C41337C70', 418, 'ik_hand_l', 418, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c84 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (419, 0.03710868954658508, -0.704802393913269, 0.015778571367263794, 0.7082566022872925);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (419, -0.05307380110025406, -0.008205413818359375, 0.96923828125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (419, 419, 419);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (419, 2340, '2020-12-18 12:29:03.634000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (419, x'5FDCA08FCDBB4F1C41337C84', 419, 'pelvis', 419, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c85 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (420, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (420, -0.32381847500801086, -0.08926170319318771, 0.8743189573287964);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (420, 420, 420);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (420, 2340, '2020-12-18 12:29:03.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (420, x'5FDCA08FCDBB4F1C41337C85', 420, 'ik_hand_gun', 420, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c86 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (421, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (421, 0.4220014214515686, -0.40339523553848267, 0.10809803009033203);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (421, 421, 421);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (421, 2340, '2020-12-18 12:29:03.634000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (421, x'5FDCA08FCDBB4F1C41337C86', 421, 'ik_hand_l', 421, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c87 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (422, 0.037512630224227905, -0.7049492597579956, 0.016303151845932007, 0.708077073097229);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (422, -0.05407386273145676, -0.008197021670639515, 0.9692116379737854);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (422, 422, 422);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (422, 2341, '2020-12-18 12:29:03.651000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (422, x'5FDCA08FCDBB4F1C41337C87', 422, 'pelvis', 422, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c89 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (423, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (423, -0.3247072994709015, -0.08901454508304596, 0.8739278316497803);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (423, 423, 423);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (423, 2341, '2020-12-18 12:29:03.651000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (423, x'5FDCA08FCDBB4F1C41337C89', 423, 'ik_hand_gun', 423, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c8a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (424, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (424, 0.42205923795700073, -0.4028361141681671, 0.10897006839513779);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (424, 424, 424);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (424, 2341, '2020-12-18 12:29:03.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (424, x'5FDCA08FCDBB4F1C41337C8A', 424, 'ik_hand_l', 424, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c8c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (425, 0.037950366735458374, -0.7051175832748413, 0.01682719588279724, 0.7078739404678345);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (425, -0.05508498474955559, -0.008172377943992615, 0.9691874980926514);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (425, 425, 425);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (425, 2342, '2020-12-18 12:29:03.668000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (425, x'5FDCA08FCDBB4F1C41337C8C', 425, 'pelvis', 425, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c8e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (426, -0.09990471601486206, 0.027180343866348267, 0.12161822617053986, 0.9871621131896973);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (426, 0.06194300577044487, -4.291534239087014E-8, -9.53674295089968E-9);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (426, 426, 426);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (426, 2342, '2020-12-18 12:29:03.668000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (426, x'5FDCA08FCDBB4F1C41337C8E', 426, 'head', 426, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c8f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (427, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (427, -0.3256100118160248, -0.0887763574719429, 0.8735418319702148);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (427, 427, 427);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (427, 2342, '2020-12-18 12:29:03.668000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (427, x'5FDCA08FCDBB4F1C41337C8F', 427, 'ik_hand_gun', 427, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337c90 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (428, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (428, 0.4220940172672272, -0.40224987268447876, 0.1098274365067482);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (428, 428, 428);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (428, 2342, '2020-12-18 12:29:03.668000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (428, x'5FDCA08FCDBB4F1C41337C90', 428, 'ik_hand_l', 428, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ca7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (429, 0.03905564546585083, -0.7055686712265015, 0.01821732521057129, 0.7073297500610352);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (429, -0.057047564536333084, -0.008159947581589222, 0.9691694974899292);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (429, 429, 429);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (429, 2344, '2020-12-18 12:29:03.701000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (429, x'5FDCA08FCDBB4F1C41337CA7', 429, 'pelvis', 429, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ca8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (430, -0.06398005783557892, -0.00635036826133728, -0.15366360545158386, 0.9860290288925171);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (430, 0.13577066361904144, -2.8610228852699038E-8, 3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (430, 430, 430);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (430, 2344, '2020-12-18 12:29:03.701000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (430, x'5FDCA08FCDBB4F1C41337CA8', 430, 'neck_01', 430, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ca9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (431, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (431, -0.32725730538368225, -0.08839641511440277, 0.8728297352790833);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (431, 431, 431);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (431, 2344, '2020-12-18 12:29:03.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (431, x'5FDCA08FCDBB4F1C41337CA9', 431, 'ik_hand_gun', 431, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337caa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (432, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (432, 0.4223349690437317, -0.40104711055755615, 0.11134720593690872);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (432, 432, 432);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (432, 2344, '2020-12-18 12:29:03.701000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (432, x'5FDCA08FCDBB4F1C41337CAA', 432, 'ik_hand_l', 432, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cab }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (433, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (433, 0.08451805263757706, 0.04140602797269821, 0.07114367932081223);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (433, 433, 433);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (433, 2345, '2020-12-18 12:29:03.718000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (433, x'5FDCA08FCDBB4F1C41337CAB', 433, 'ik_foot_l', 433, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cc2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (434, 0.040313154458999634, -0.7061221599578857, 0.020003855228424072, 0.7066583037376404);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (434, -0.058984898030757904, -0.008071827702224255, 0.9691682457923889);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (434, 434, 434);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (434, 2346, '2020-12-18 12:29:03.734000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (434, x'5FDCA08FCDBB4F1C41337CC2', 434, 'pelvis', 434, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cc3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (435, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (435, -0.32873910665512085, -0.08784884959459305, 0.8720840811729431);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (435, 435, 435);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (435, 2346, '2020-12-18 12:29:03.734000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (435, x'5FDCA08FCDBB4F1C41337CC3', 435, 'ik_hand_gun', 435, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cc4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (436, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (436, 0.4223850667476654, -0.39968669414520264, 0.11271316558122635);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (436, 436, 436);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (436, 2346, '2020-12-18 12:29:03.734000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (436, x'5FDCA08FCDBB4F1C41337CC4', 436, 'ik_hand_l', 436, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cda }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (437, 0.04158341884613037, -0.7066653370857239, 0.021801650524139404, 0.7059882879257202);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (437, -0.060863789170980453, -0.00796272698789835, 0.969191312789917);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (437, 437, 437);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (437, 2348, '2020-12-18 12:29:03.768000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (437, x'5FDCA08FCDBB4F1C41337CDA', 437, 'pelvis', 437, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cdb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (438, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (438, -0.33013996481895447, -0.08738219738006592, 0.8713975548744202);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (438, 438, 438);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (438, 2348, '2020-12-18 12:29:03.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (438, x'5FDCA08FCDBB4F1C41337CDB', 438, 'ik_hand_gun', 438, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cdc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (439, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (439, 0.4223155975341797, -0.3981843888759613, 0.1139356717467308);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (439, 439, 439);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (439, 2348, '2020-12-18 12:29:03.768000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (439, x'5FDCA08FCDBB4F1C41337CDC', 439, 'ik_hand_l', 439, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cdd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (440, 0.04285857081413269, -0.7072385549545288, 0.0237063467502594, 0.7052761316299438);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (440, -0.06268484890460968, -0.00784660317003727, 0.9692152142524719);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (440, 440, 440);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (440, 2350, '2020-12-18 12:29:03.801000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (440, x'5FDCA08FCDBB4F1C41337CDD', 440, 'pelvis', 440, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cde }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (441, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (441, 0.0843561440706253, 0.04061340168118477, 0.07184745371341705);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (441, 441, 441);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (441, 2350, '2020-12-18 12:29:03.801000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (441, x'5FDCA08FCDBB4F1C41337CDE', 441, 'ik_foot_l', 441, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cdf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (442, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (442, -0.3317013084888458, -0.0871901661157608, 0.870755672454834);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (442, 442, 442);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (442, 2350, '2020-12-18 12:29:03.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (442, x'5FDCA08FCDBB4F1C41337CDF', 442, 'ik_hand_gun', 442, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337ce0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (443, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (443, 0.42236796021461487, -0.39662840962409973, 0.11480601131916046);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (443, 443, 443);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (443, 2350, '2020-12-18 12:29:03.801000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (443, x'5FDCA08FCDBB4F1C41337CE0', 443, 'ik_hand_l', 443, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cf4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (444, 0.04411494731903076, -0.7078077793121338, 0.02595636248588562, 0.7045481204986572);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (444, -0.0644434243440628, -0.007720947265625, 0.9692047834396362);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (444, 444, 444);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (444, 2352, '2020-12-18 12:29:03.834000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (444, x'5FDCA08FCDBB4F1C41337CF4', 444, 'pelvis', 444, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cf6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (445, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (445, -0.33334025740623474, -0.08723441511392593, 0.8702329993247986);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (445, 445, 445);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (445, 2352, '2020-12-18 12:29:03.834000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (445, x'5FDCA08FCDBB4F1C41337CF6', 445, 'ik_hand_gun', 445, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337cf7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (446, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (446, 0.42241981625556946, -0.39524126052856445, 0.11518578976392746);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (446, 446, 446);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (446, 2352, '2020-12-18 12:29:03.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (446, x'5FDCA08FCDBB4F1C41337CF7', 446, 'ik_hand_l', 446, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d0b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (447, 0.045274823904037476, -0.7082576751708984, 0.028343886137008667, 0.703930139541626);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (447, -0.06616896390914917, -0.007627720478922129, 0.9691318869590759);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (447, 447, 447);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (447, 2354, '2020-12-18 12:29:03.868000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (447, x'5FDCA08FCDBB4F1C41337D0B', 447, 'pelvis', 447, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d0c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (448, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (448, -0.33476802706718445, -0.0875152200460434, 0.8697413206100464);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (448, 448, 448);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (448, 2354, '2020-12-18 12:29:03.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (448, x'5FDCA08FCDBB4F1C41337D0C', 448, 'ik_hand_gun', 448, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d0d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (449, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (449, 0.4226417541503906, -0.3938998281955719, 0.11494362354278564);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (449, 449, 449);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (449, 2354, '2020-12-18 12:29:03.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (449, x'5FDCA08FCDBB4F1C41337D0D', 449, 'ik_hand_l', 449, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d0e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (450, 0.04651153087615967, -0.7085615396499634, 0.031053215265274048, 0.7034292221069336);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (450, -0.06799757480621338, -0.007684635929763317, 0.9689737558364868);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (450, 450, 450);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (450, 2356, '2020-12-18 12:29:03.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (450, x'5FDCA08FCDBB4F1C41337D0E', 450, 'pelvis', 450, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d0f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (451, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (451, -0.3364831209182739, -0.08835933357477188, 0.8691679239273071);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (451, 451, 451);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (451, 2356, '2020-12-18 12:29:03.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (451, x'5FDCA08FCDBB4F1C41337D0F', 451, 'ik_hand_gun', 451, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d10 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (452, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (452, 0.4233473539352417, -0.39273881912231445, 0.11393871158361435);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (452, 452, 452);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (452, 2356, '2020-12-18 12:29:03.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (452, x'5FDCA08FCDBB4F1C41337D10', 452, 'ik_hand_l', 452, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d15 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (453, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (453, 0.08407942950725555, 0.039891280233860016, 0.07252612709999084);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (453, 453, 453);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (453, 2357, '2020-12-18 12:29:03.918000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (453, x'5FDCA08FCDBB4F1C41337D15', 453, 'ik_foot_l', 453, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d16 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (454, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (454, -0.3373264968395233, -0.08895809203386307, 0.8689696788787842);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (454, 454, 454);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (454, 2357, '2020-12-18 12:29:03.918000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (454, x'5FDCA08FCDBB4F1C41337D16', 454, 'ik_hand_gun', 454, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d1b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (455, 0.04765117168426514, -0.7087261080741882, 0.033330053091049194, 0.703082799911499);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (455, -0.06964407861232758, -0.007781834341585636, 0.9687687754631042);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (455, 455, 455);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (455, 2358, '2020-12-18 12:29:03.934000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (455, x'5FDCA08FCDBB4F1C41337D1B', 455, 'pelvis', 455, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d1c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (456, 0.127756267786026, -0.019361674785614014, 0.07797189056873322, 0.9885461330413818);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (456, 0.4363507032394409, 0.0, -7.629394360719743E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (456, 456, 456);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (456, 2358, '2020-12-18 12:29:03.934000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (456, x'5FDCA08FCDBB4F1C41337D1C', 456, 'foot_r', 456, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d1d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (457, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (457, -0.33816447854042053, -0.08960414677858353, 0.8687992095947266);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (457, 457, 457);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (457, 2358, '2020-12-18 12:29:03.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (457, x'5FDCA08FCDBB4F1C41337D1D', 457, 'ik_hand_gun', 457, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d1e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (458, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (458, 0.4241993725299835, -0.3918441832065582, 0.11239549517631531);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (458, 458, 458);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (458, 2358, '2020-12-18 12:29:03.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (458, x'5FDCA08FCDBB4F1C41337D1E', 458, 'ik_hand_l', 458, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d25 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (459, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (459, -0.33900898694992065, -0.09042152017354965, 0.8686974048614502);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (459, 459, 459);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (459, 2359, '2020-12-18 12:29:03.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (459, x'5FDCA08FCDBB4F1C41337D25', 459, 'ik_hand_gun', 459, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d26 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (460, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (460, 0.4247699975967407, -0.39176398515701294, 0.11097289621829987);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (460, 460, 460);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (460, 2359, '2020-12-18 12:29:03.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (460, x'5FDCA08FCDBB4F1C41337D26', 460, 'ik_hand_l', 460, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d29 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (461, 0.04856008291244507, -0.7086641192436218, 0.03493371605873108, 0.703005313873291);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (461, -0.07116759568452835, -0.008002013899385929, 0.9685325622558594);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (461, 461, 461);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (461, 2360, '2020-12-18 12:29:03.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (461, x'5FDCA08FCDBB4F1C41337D29', 461, 'pelvis', 461, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d2b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (462, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (462, -0.33983898162841797, -0.0912715494632721, 0.8686169981956482);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (462, 462, 462);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (462, 2360, '2020-12-18 12:29:03.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (462, x'5FDCA08FCDBB4F1C41337D2B', 462, 'ik_hand_gun', 462, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca08fcdbb4f1c41337d2c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (463, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (463, 0.4253687262535095, -0.3917848765850067, 0.10940303653478622);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (463, 463, 463);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (463, 2360, '2020-12-18 12:29:03.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (463, x'5FDCA08FCDBB4F1C41337D2C', 463, 'ik_hand_l', 463, '2020-12-18 12:29:03.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d3f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (464, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (464, -0.3406451642513275, -0.09238719940185547, 0.8686962723731995);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (464, 464, 464);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (464, 2361, '2020-12-18 12:29:03.984000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (464, x'5FDCA090CDBB4F1C41337D3F', 464, 'ik_hand_gun', 464, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d40 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (465, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (465, 0.4259496331214905, -0.3919161558151245, 0.10778027027845383);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (465, 465, 465);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (465, 2361, '2020-12-18 12:29:03.984000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (465, x'5FDCA090CDBB4F1C41337D40', 465, 'ik_hand_l', 465, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d41 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (466, 0.049595534801483154, -0.7084840536117554, 0.03604307770729065, 0.7030584812164307);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (466, -0.07248160988092422, -0.008260497823357582, 0.968300461769104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (466, 466, 466);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (466, 2362, '2020-12-18 12:29:04.001000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (466, x'5FDCA090CDBB4F1C41337D41', 466, 'pelvis', 466, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d42 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (467, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (467, -0.3414387106895447, -0.09357551485300064, 0.8688233494758606);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (467, 467, 467);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (467, 2362, '2020-12-18 12:29:04.001000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (467, x'5FDCA090CDBB4F1C41337D42', 467, 'ik_hand_gun', 467, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d43 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (468, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (468, 0.4265211820602417, -0.3920799195766449, 0.10615270584821701);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (468, 468, 468);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (468, 2362, '2020-12-18 12:29:04.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (468, x'5FDCA090CDBB4F1C41337D43', 468, 'ik_hand_l', 468, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d54 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (469, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (469, -0.3422251343727112, -0.09482051432132721, 0.8689976930618286);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (469, 469, 469);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (469, 2363, '2020-12-18 12:29:04.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (469, x'5FDCA090CDBB4F1C41337D54', 469, 'ik_hand_gun', 469, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d56 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (470, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (470, 0.4271509051322937, -0.3924628794193268, 0.10415421426296234);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (470, 470, 470);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (470, 2363, '2020-12-18 12:29:04.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (470, x'5FDCA090CDBB4F1C41337D56', 470, 'ik_hand_l', 470, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d57 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (471, 0.050824373960494995, -0.7082878351211548, 0.03696510195732117, 0.7031205892562866);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (471, -0.07362494617700577, -0.008500366471707821, 0.9680947065353394);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (471, 471, 471);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (471, 2364, '2020-12-18 12:29:04.034000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (471, x'5FDCA090CDBB4F1C41337D57', 471, 'pelvis', 471, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d58 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (472, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (472, -0.3430092930793762, -0.0960829108953476, 0.8691866397857666);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (472, 472, 472);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (472, 2364, '2020-12-18 12:29:04.034000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (472, x'5FDCA090CDBB4F1C41337D58', 472, 'ik_hand_gun', 472, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d59 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (473, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (473, 0.42779862880706787, -0.3929130733013153, 0.10204142332077026);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (473, 473, 473);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (473, 2364, '2020-12-18 12:29:04.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (473, x'5FDCA090CDBB4F1C41337D59', 473, 'ik_hand_l', 473, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d6d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (474, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (474, 0.08303450047969818, 0.04022973030805588, 0.07218974083662033);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (474, 474, 474);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (474, 2365, '2020-12-18 12:29:04.051000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (474, x'5FDCA090CDBB4F1C41337D6D', 474, 'ik_foot_l', 474, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d6e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (475, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (475, -0.34370142221450806, -0.09735523164272308, 0.8695313334465027);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (475, 475, 475);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (475, 2365, '2020-12-18 12:29:04.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (475, x'5FDCA090CDBB4F1C41337D6E', 475, 'ik_hand_gun', 475, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d6f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (476, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (476, 0.4285820722579956, -0.3936815559864044, 0.09969393163919449);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (476, 476, 476);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (476, 2365, '2020-12-18 12:29:04.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (476, x'5FDCA090CDBB4F1C41337D6F', 476, 'ik_hand_l', 476, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d70 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (477, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (477, -0.34437158703804016, -0.09864314645528793, 0.8699279427528381);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (477, 477, 477);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (477, 2366, '2020-12-18 12:29:04.068000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (477, x'5FDCA090CDBB4F1C41337D70', 477, 'ik_hand_gun', 477, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d71 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (478, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (478, 0.42941534519195557, -0.39455652236938477, 0.09725014120340347);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (478, 478, 478);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (478, 2366, '2020-12-18 12:29:04.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (478, x'5FDCA090CDBB4F1C41337D71', 478, 'ik_hand_l', 478, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d72 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (479, 0.052380770444869995, -0.7081280946731567, 0.037514328956604004, 0.7031380534172058);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (479, -0.0747833102941513, -0.008678436279296875, 0.9679108262062073);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (479, 479, 479);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (479, 2367, '2020-12-18 12:29:04.084000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (479, x'5FDCA090CDBB4F1C41337D72', 479, 'pelvis', 479, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d73 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (480, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (480, -0.3449799716472626, -0.09993625432252884, 0.8703715205192566);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (480, 480, 480);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (480, 2367, '2020-12-18 12:29:04.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (480, x'5FDCA090CDBB4F1C41337D73', 480, 'ik_hand_gun', 480, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d74 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (481, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (481, 0.430185467004776, -0.3955056369304657, 0.09485211968421936);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (481, 481, 481);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (481, 2367, '2020-12-18 12:29:04.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (481, x'5FDCA090CDBB4F1C41337D74', 481, 'ik_hand_l', 481, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d87 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (482, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (482, -0.3455628454685211, -0.10121356695890427, 0.8708223700523376);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (482, 482, 482);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (482, 2368, '2020-12-18 12:29:04.101000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (482, x'5FDCA090CDBB4F1C41337D87', 482, 'ik_hand_gun', 482, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d88 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (483, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (483, 0.430927574634552, -0.3964628577232361, 0.09249893575906754);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (483, 483, 483);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (483, 2368, '2020-12-18 12:29:04.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (483, x'5FDCA090CDBB4F1C41337D88', 483, 'ik_hand_l', 483, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d89 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (484, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (484, -0.34605276584625244, -0.10254222899675369, 0.8712616562843323);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (484, 484, 484);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (484, 2369, '2020-12-18 12:29:04.118000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (484, x'5FDCA090CDBB4F1C41337D89', 484, 'ik_hand_gun', 484, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d8a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (485, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (485, 0.43171364068984985, -0.39748266339302063, 0.08996324241161346);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (485, 485, 485);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (485, 2369, '2020-12-18 12:29:04.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (485, x'5FDCA090CDBB4F1C41337D8A', 485, 'ik_hand_l', 485, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d8b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (486, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (486, -0.34649690985679626, -0.1038343757390976, 0.8716806769371033);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (486, 486, 486);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (486, 2370, '2020-12-18 12:29:04.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (486, x'5FDCA090CDBB4F1C41337D8B', 486, 'ik_hand_gun', 486, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d8c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (487, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (487, 0.432481974363327, -0.3984808623790741, 0.08747264742851257);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (487, 487, 487);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (487, 2370, '2020-12-18 12:29:04.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (487, x'5FDCA090CDBB4F1C41337D8C', 487, 'ik_hand_l', 487, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d9e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (488, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (488, -0.34682315587997437, -0.10509761422872543, 0.8721456527709961);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (488, 488, 488);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (488, 2371, '2020-12-18 12:29:04.151000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (488, x'5FDCA090CDBB4F1C41337D9E', 488, 'ik_hand_gun', 488, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337d9f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (489, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (489, 0.433245450258255, -0.39956653118133545, 0.08480314165353775);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (489, 489, 489);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (489, 2371, '2020-12-18 12:29:04.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (489, x'5FDCA090CDBB4F1C41337D9F', 489, 'ik_hand_l', 489, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (490, 0.7071062922477722, 1.6093254089355469E-6, -0.7071071863174438, -2.9802322387695312E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (490, -0.10052770376205444, 0.046666182577610016, 0.0687042772769928);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (490, 490, 490);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (490, 2372, '2020-12-18 12:29:04.168000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (490, x'5FDCA090CDBB4F1C41337DA0', 490, 'ik_foot_r', 490, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (491, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (491, 0.08216872066259384, 0.040730372071266174, 0.07169963419437408);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (491, 491, 491);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (491, 2372, '2020-12-18 12:29:04.168000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (491, x'5FDCA090CDBB4F1C41337DA1', 491, 'ik_foot_l', 491, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (492, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (492, -0.34710559248924255, -0.10632209479808807, 0.8726137280464172);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (492, 492, 492);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (492, 2372, '2020-12-18 12:29:04.168000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (492, x'5FDCA090CDBB4F1C41337DA2', 492, 'ik_hand_gun', 492, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (493, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (493, 0.4339894652366638, -0.4006531834602356, 0.08214207738637924);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (493, 493, 493);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (493, 2372, '2020-12-18 12:29:04.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (493, x'5FDCA090CDBB4F1C41337DA4', 493, 'ik_hand_l', 493, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (494, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (494, -0.3472549021244049, -0.10743968933820724, 0.8730694651603699);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (494, 494, 494);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (494, 2373, '2020-12-18 12:29:04.184000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (494, x'5FDCA090CDBB4F1C41337DA5', 494, 'ik_hand_gun', 494, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (495, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (495, 0.43465545773506165, -0.40171554684638977, 0.07990840077400208);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (495, 495, 495);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (495, 2373, '2020-12-18 12:29:04.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (495, x'5FDCA090CDBB4F1C41337DA6', 495, 'ik_hand_l', 495, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337da9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (496, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (496, -0.3473756015300751, -0.1085718497633934, 0.8735392689704895);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (496, 496, 496);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (496, 2374, '2020-12-18 12:29:04.201000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (496, x'5FDCA090CDBB4F1C41337DA9', 496, 'ik_hand_gun', 496, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337daa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (497, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (497, 0.4353265166282654, -0.40281185507774353, 0.07770078629255295);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (497, 497, 497);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (497, 2374, '2020-12-18 12:29:04.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (497, x'5FDCA090CDBB4F1C41337DAA', 497, 'ik_hand_l', 497, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dc1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (498, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (498, -0.3474102318286896, -0.10961845517158508, 0.8739868998527527);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (498, 498, 498);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (498, 2375, '2020-12-18 12:29:04.218000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (498, x'5FDCA090CDBB4F1C41337DC1', 498, 'ik_hand_gun', 498, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dc2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (499, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (499, 0.4358903467655182, -0.40381526947021484, 0.07565881311893463);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (499, 499, 499);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (499, 2375, '2020-12-18 12:29:04.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (499, x'5FDCA090CDBB4F1C41337DC2', 499, 'ik_hand_l', 499, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dc3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (500, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (500, -0.34741947054862976, -0.11065051704645157, 0.8744325041770935);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (500, 500, 500);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (500, 2376, '2020-12-18 12:29:04.235000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (500, x'5FDCA090CDBB4F1C41337DC3', 500, 'ik_hand_gun', 500, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dc4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (501, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (501, 0.4364279508590698, -0.4048011302947998, 0.07364492118358612);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (501, 501, 501);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (501, 2376, '2020-12-18 12:29:04.235000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (501, x'5FDCA090CDBB4F1C41337DC4', 501, 'ik_hand_l', 501, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dc5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (502, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (502, 0.436958372592926, -0.4055953621864319, 0.07182489335536957);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (502, 502, 502);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (502, 2377, '2020-12-18 12:29:04.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (502, x'5FDCA090CDBB4F1C41337DC5', 502, 'ik_hand_l', 502, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dd8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (503, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (503, -0.34734946489334106, -0.11231975257396698, 0.8751965761184692);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (503, 503, 503);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (503, 2378, '2020-12-18 12:29:04.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (503, x'5FDCA090CDBB4F1C41337DD8', 503, 'ik_hand_gun', 503, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dd9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (504, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (504, 0.4374859631061554, -0.40633219480514526, 0.0700642541050911);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (504, 504, 504);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (504, 2378, '2020-12-18 12:29:04.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (504, x'5FDCA090CDBB4F1C41337DD9', 504, 'ik_hand_l', 504, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dda }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (505, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (505, 0.4378451108932495, -0.40694665908813477, 0.06880530714988708);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (505, 505, 505);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (505, 2379, '2020-12-18 12:29:04.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (505, x'5FDCA090CDBB4F1C41337DDA', 505, 'ik_hand_l', 505, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ddd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (506, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (506, -0.34716829657554626, -0.11309532076120377, 0.8758435845375061);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (506, 506, 506);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (506, 2380, '2020-12-18 12:29:04.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (506, x'5FDCA090CDBB4F1C41337DDD', 506, 'ik_hand_gun', 506, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337dde }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (507, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (507, 0.43815481662750244, -0.40752577781677246, 0.06769315153360367);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (507, 507, 507);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (507, 2380, '2020-12-18 12:29:04.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (507, x'5FDCA090CDBB4F1C41337DDE', 507, 'ik_hand_l', 507, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337df7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (508, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (508, 0.43865495920181274, -0.40834248065948486, 0.06614359468221664);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (508, 508, 508);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (508, 2382, '2020-12-18 12:29:04.334000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (508, x'5FDCA090CDBB4F1C41337DF7', 508, 'ik_hand_l', 508, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337df8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (509, 0.051775574684143066, -0.7079393863677979, 0.03747767210006714, 0.7033748626708984);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (509, -0.07352934777736664, -0.008777465671300888, 0.9675542712211609);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (509, 509, 509);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (509, 2383, '2020-12-18 12:29:04.351000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (509, x'5FDCA090CDBB4F1C41337DF8', 509, 'pelvis', 509, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337df9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (510, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (510, -0.3461780846118927, -0.11330840736627579, 0.8764388561248779);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (510, 510, 510);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (510, 2383, '2020-12-18 12:29:04.351000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (510, x'5FDCA090CDBB4F1C41337DF9', 510, 'ik_hand_gun', 510, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e0b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (511, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (511, -0.3447941243648529, -0.11305751651525497, 0.876695454120636);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (511, 511, 511);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (511, 2385, '2020-12-18 12:29:04.384000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (511, x'5FDCA090CDBB4F1C41337E0B', 511, 'ik_hand_gun', 511, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e0c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (512, 0.05054411292076111, -0.7079254388809204, 0.036388933658599854, 0.7035355567932129);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (512, -0.07200438529253006, -0.00857994519174099, 0.9677250981330872);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (512, 512, 512);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (512, 2386, '2020-12-18 12:29:04.401000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (512, x'5FDCA090CDBB4F1C41337E0C', 512, 'pelvis', 512, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e0d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (513, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (513, 0.4379485249519348, -0.40837809443473816, 0.06537472456693649);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (513, 513, 513);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (513, 2386, '2020-12-18 12:29:04.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (513, x'5FDCA090CDBB4F1C41337E0D', 513, 'ik_hand_l', 513, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e20 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (514, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (514, -0.34313318133354187, -0.11267086118459702, 0.8768047094345093);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (514, 514, 514);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (514, 2387, '2020-12-18 12:29:04.418000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (514, x'5FDCA090CDBB4F1C41337E20', 514, 'ik_hand_gun', 514, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e21 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (515, 0.050092220306396484, -0.7078269124031067, 0.035821229219436646, 0.7036962509155273);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (515, -0.07076629251241684, -0.008626708760857582, 0.9677708745002747);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (515, 515, 515);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (515, 2388, '2020-12-18 12:29:04.434000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (515, x'5FDCA090CDBB4F1C41337E21', 515, 'pelvis', 515, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e22 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (516, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (516, 0.4371700882911682, -0.40794044733047485, 0.06639610975980759);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (516, 516, 516);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (516, 2388, '2020-12-18 12:29:04.434000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (516, x'5FDCA090CDBB4F1C41337E22', 516, 'ik_hand_l', 516, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e25 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (517, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (517, -0.3412398099899292, -0.1120084747672081, 0.8766508102416992);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (517, 517, 517);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (517, 2389, '2020-12-18 12:29:04.451000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (517, x'5FDCA090CDBB4F1C41337E25', 517, 'ik_hand_gun', 517, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e26 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (518, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (518, 0.43660271167755127, -0.40752357244491577, 0.06731732934713364);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (518, 518, 518);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (518, 2389, '2020-12-18 12:29:04.451000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (518, x'5FDCA090CDBB4F1C41337E26', 518, 'ik_hand_l', 518, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e3c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (519, 0.0496993362903595, -0.7076112031936646, 0.03526321053504944, 0.7039691209793091);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (519, -0.0693938359618187, -0.008690876886248589, 0.9677732586860657);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (519, 519, 519);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (519, 2390, '2020-12-18 12:29:04.468000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (519, x'5FDCA090CDBB4F1C41337E3C', 519, 'pelvis', 519, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e3d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (520, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (520, -0.3402280807495117, -0.11144725233316422, 0.8764783143997192);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (520, 520, 520);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (520, 2390, '2020-12-18 12:29:04.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (520, x'5FDCA090CDBB4F1C41337E3D', 520, 'ik_hand_gun', 520, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e3e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (521, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (521, 0.4359848201274872, -0.40705060958862305, 0.06834709644317627);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (521, 521, 521);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (521, 2390, '2020-12-18 12:29:04.468000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (521, x'5FDCA090CDBB4F1C41337E3E', 521, 'ik_hand_l', 521, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e3f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (522, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (522, -0.3391956686973572, -0.110676608979702, 0.8762840032577515);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (522, 522, 522);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (522, 2391, '2020-12-18 12:29:04.484000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (522, x'5FDCA090CDBB4F1C41337E3F', 522, 'ik_hand_gun', 522, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e40 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (523, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (523, 0.4352828860282898, -0.40656572580337524, 0.06965425610542297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (523, 523, 523);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (523, 2391, '2020-12-18 12:29:04.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (523, x'5FDCA090CDBB4F1C41337E40', 523, 'ik_hand_l', 523, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e41 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (524, 0.04899457097053528, -0.7072272300720215, 0.03410622477531433, 0.7044612169265747);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (524, -0.06779295951128006, -0.008587264455854893, 0.9678012728691101);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (524, 524, 524);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (524, 2392, '2020-12-18 12:29:04.501000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (524, x'5FDCA090CDBB4F1C41337E41', 524, 'pelvis', 524, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e43 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (525, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (525, -0.3381167948246002, -0.10981044173240662, 0.8760755062103271);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (525, 525, 525);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (525, 2392, '2020-12-18 12:29:04.501000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (525, x'5FDCA090CDBB4F1C41337E43', 525, 'ik_hand_gun', 525, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e44 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (526, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (526, 0.4345274269580841, -0.40605852007865906, 0.07109903544187546);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (526, 526, 526);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (526, 2392, '2020-12-18 12:29:04.501000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (526, x'5FDCA090CDBB4F1C41337E44', 526, 'ik_hand_l', 526, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e56 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (527, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (527, 0.08225837349891663, 0.04150840640068054, 0.07091647386550903);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (527, 527, 527);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (527, 2393, '2020-12-18 12:29:04.518000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (527, x'5FDCA090CDBB4F1C41337E56', 527, 'ik_foot_l', 527, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e57 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (528, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (528, -0.33710142970085144, -0.10888522863388062, 0.8758814334869385);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (528, 528, 528);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (528, 2393, '2020-12-18 12:29:04.518000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (528, x'5FDCA090CDBB4F1C41337E57', 528, 'ik_hand_gun', 528, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e58 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (529, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (529, 0.43375441431999207, -0.4056326448917389, 0.07276209443807602);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (529, 529, 529);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (529, 2393, '2020-12-18 12:29:04.518000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (529, x'5FDCA090CDBB4F1C41337E58', 529, 'ik_hand_l', 529, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e59 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (530, 0.048419028520584106, -0.7068636417388916, 0.03290295600891113, 0.7049230933189392);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (530, -0.06608527153730392, -0.008441772311925888, 0.9678319096565247);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (530, 530, 530);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (530, 2394, '2020-12-18 12:29:04.535000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (530, x'5FDCA090CDBB4F1C41337E59', 530, 'pelvis', 530, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e5a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (531, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (531, -0.33608561754226685, -0.10793162882328033, 0.875687837600708);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (531, 531, 531);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (531, 2394, '2020-12-18 12:29:04.535000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (531, x'5FDCA090CDBB4F1C41337E5A', 531, 'ik_hand_gun', 531, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e5b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (532, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (532, 0.4329650402069092, -0.4052196145057678, 0.0745033323764801);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (532, 532, 532);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (532, 2394, '2020-12-18 12:29:04.535000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (532, x'5FDCA090CDBB4F1C41337E5B', 532, 'ik_hand_l', 532, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e5d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (533, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (533, -0.335077702999115, -0.10691078007221222, 0.8754028081893921);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (533, 533, 533);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (533, 2395, '2020-12-18 12:29:04.551000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (533, x'5FDCA090CDBB4F1C41337E5D', 533, 'ik_hand_gun', 533, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e5e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (534, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (534, 0.43205252289772034, -0.4046262204647064, 0.07645410299301147);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (534, 534, 534);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (534, 2395, '2020-12-18 12:29:04.551000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (534, x'5FDCA090CDBB4F1C41337E5E', 534, 'ik_hand_l', 534, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e74 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (535, 0.047941893339157104, -0.7065714597702026, 0.032055944204330444, 0.7052874565124512);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (535, -0.06436652690172195, -0.008350448682904243, 0.9678452610969543);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (535, 535, 535);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (535, 2396, '2020-12-18 12:29:04.568000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (535, x'5FDCA090CDBB4F1C41337E74', 535, 'pelvis', 535, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e75 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (536, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (536, -0.33410412073135376, -0.10590587556362152, 0.8751037120819092);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (536, 536, 536);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (536, 2396, '2020-12-18 12:29:04.568000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (536, x'5FDCA090CDBB4F1C41337E75', 536, 'ik_hand_gun', 536, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e76 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (537, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (537, 0.43113821744918823, -0.404006689786911, 0.07839493453502655);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (537, 537, 537);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (537, 2396, '2020-12-18 12:29:04.568000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (537, x'5FDCA090CDBB4F1C41337E76', 537, 'ik_hand_l', 537, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e77 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (538, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (538, -0.3330875635147095, -0.10481830686330795, 0.8748537302017212);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (538, 538, 538);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (538, 2397, '2020-12-18 12:29:04.584000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (538, x'5FDCA090CDBB4F1C41337E77', 538, 'ik_hand_gun', 538, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e78 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (539, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (539, 0.430071085691452, -0.4033876955509186, 0.08057548105716705);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (539, 539, 539);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (539, 2397, '2020-12-18 12:29:04.584000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (539, x'5FDCA090CDBB4F1C41337E78', 539, 'ik_hand_l', 539, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e79 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (540, 0.0470980703830719, -0.7063275575637817, 0.03136220574378967, 0.7056196928024292);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (540, -0.06260939687490463, -0.008377761580049992, 0.9678558111190796);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (540, 540, 540);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (540, 2398, '2020-12-18 12:29:04.601000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (540, x'5FDCA090CDBB4F1C41337E79', 540, 'pelvis', 540, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e7a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (541, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (541, -0.332074373960495, -0.10372275859117508, 0.8746229410171509);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (541, 541, 541);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (541, 2398, '2020-12-18 12:29:04.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (541, x'5FDCA090CDBB4F1C41337E7A', 541, 'ik_hand_gun', 541, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e7b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (542, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (542, 0.4289741814136505, -0.40277934074401855, 0.08279483020305634);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (542, 542, 542);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (542, 2398, '2020-12-18 12:29:04.601000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (542, x'5FDCA090CDBB4F1C41337E7B', 542, 'ik_hand_l', 542, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e8f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (543, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (543, -0.3309818208217621, -0.10251925885677338, 0.8744110465049744);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (543, 543, 543);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (543, 2399, '2020-12-18 12:29:04.618000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (543, x'5FDCA090CDBB4F1C41337E8F', 543, 'ik_hand_gun', 543, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e91 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (544, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (544, 0.42789146304130554, -0.4022027254104614, 0.08502187579870224);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (544, 544, 544);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (544, 2399, '2020-12-18 12:29:04.618000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (544, x'5FDCA090CDBB4F1C41337E91', 544, 'ik_hand_l', 544, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e92 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (545, 0.04601427912712097, -0.7061454057693481, 0.03037622570991516, 0.7059166431427002);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (545, -0.06082121655344963, -0.008266829885542393, 0.9679232835769653);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (545, 545, 545);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (545, 2400, '2020-12-18 12:29:04.634000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (545, x'5FDCA090CDBB4F1C41337E92', 545, 'pelvis', 545, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e93 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (546, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (546, 0.08289962261915207, 0.042143020778894424, 0.07032664865255356);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (546, 546, 546);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (546, 2400, '2020-12-18 12:29:04.634000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (546, x'5FDCA090CDBB4F1C41337E93', 546, 'ik_foot_l', 546, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e94 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (547, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (547, -0.32986506819725037, -0.10128352791070938, 0.8742039203643799);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (547, 547, 547);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (547, 2400, '2020-12-18 12:29:04.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (547, x'5FDCA090CDBB4F1C41337E94', 547, 'ik_hand_gun', 547, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e95 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (548, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (548, 0.42681020498275757, -0.40163344144821167, 0.08725602179765701);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (548, 548, 548);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (548, 2400, '2020-12-18 12:29:04.634000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (548, x'5FDCA090CDBB4F1C41337E95', 548, 'ik_hand_l', 548, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e98 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (549, 0.04549726843833923, -0.7060692310333252, 0.029503732919692993, 0.7060635089874268);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (549, -0.0598725788295269, -0.00794670544564724, 0.9680081009864807);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (549, 549, 549);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (549, 2401, '2020-12-18 12:29:04.651000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (549, x'5FDCA090CDBB4F1C41337E98', 549, 'pelvis', 549, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e99 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (550, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (550, -0.32860255241394043, -0.09992862492799759, 0.874070942401886);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (550, 550, 550);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (550, 2401, '2020-12-18 12:29:04.651000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (550, x'5FDCA090CDBB4F1C41337E99', 550, 'ik_hand_gun', 550, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337e9a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (551, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (551, 0.425613671541214, -0.40099868178367615, 0.08950363099575043);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (551, 551, 551);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (551, 2401, '2020-12-18 12:29:04.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (551, x'5FDCA090CDBB4F1C41337E9A', 551, 'ik_hand_l', 551, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ea3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (552, 0.04500138759613037, -0.7059974074363708, 0.02853664755821228, 0.7062067985534668);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (552, -0.05892599746584892, -0.007553867995738983, 0.9681059718132019);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (552, 552, 552);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (552, 2402, '2020-12-18 12:29:04.668000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (552, x'5FDCA090CDBB4F1C41337EA3', 552, 'pelvis', 552, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ea4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (553, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (553, -0.32731884717941284, -0.0985625833272934, 0.8739632368087769);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (553, 553, 553);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (553, 2402, '2020-12-18 12:29:04.668000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (553, x'5FDCA090CDBB4F1C41337EA4', 553, 'ik_hand_gun', 553, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ea5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (554, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (554, 0.42440420389175415, -0.4003554880619049, 0.09171291440725327);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (554, 554, 554);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (554, 2402, '2020-12-18 12:29:04.668000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (554, x'5FDCA090CDBB4F1C41337EA5', 554, 'ik_hand_l', 554, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ea9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (555, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (555, -0.32608217000961304, -0.09717799723148346, 0.8738414645195007);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (555, 555, 555);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (555, 2403, '2020-12-18 12:29:04.684000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (555, x'5FDCA090CDBB4F1C41337EA9', 555, 'ik_hand_gun', 555, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337eaa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (556, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (556, 0.4232770502567291, -0.39976391196250916, 0.09392649680376053);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (556, 556, 556);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (556, 2403, '2020-12-18 12:29:04.684000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (556, x'5FDCA090CDBB4F1C41337EAA', 556, 'ik_hand_l', 556, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ebf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (557, 0.043524712324142456, -0.7058663368225098, 0.02653127908706665, 0.706508457660675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (557, -0.05702842026948929, -0.0070594786666333675, 0.9683002829551697);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (557, 557, 557);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (557, 2404, '2020-12-18 12:29:04.701000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (557, x'5FDCA090CDBB4F1C41337EBF', 557, 'pelvis', 557, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ec0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (558, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (558, -0.3248460590839386, -0.09577254951000214, 0.873714029788971);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (558, 558, 558);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (558, 2404, '2020-12-18 12:29:04.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (558, x'5FDCA090CDBB4F1C41337EC0', 558, 'ik_hand_gun', 558, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ec1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (559, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (559, 0.42216238379478455, -0.3991810977458954, 0.09616562724113464);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (559, 559, 559);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (559, 2404, '2020-12-18 12:29:04.701000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (559, x'5FDCA090CDBB4F1C41337EC1', 559, 'ik_hand_l', 559, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ec2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (560, 0.042359620332717896, -0.7058625221252441, 0.02548319101333618, 0.7066215872764587);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (560, -0.0560302659869194, -0.0068869017995893955, 0.9683753848075867);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (560, 560, 560);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (560, 2405, '2020-12-18 12:29:04.718000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (560, x'5FDCA090CDBB4F1C41337EC2', 560, 'pelvis', 560, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ec3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (561, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (561, -0.32366618514060974, -0.09431072324514389, 0.8735603094100952);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (561, 561, 561);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (561, 2405, '2020-12-18 12:29:04.718000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (561, x'5FDCA090CDBB4F1C41337EC3', 561, 'ik_hand_gun', 561, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ec4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (562, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (562, 0.42107993364334106, -0.39866283535957336, 0.09833069890737534);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (562, 562, 562);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (562, 2405, '2020-12-18 12:29:04.718000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (562, x'5FDCA090CDBB4F1C41337EC4', 562, 'ik_hand_l', 562, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ed8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (563, 0.04111278057098389, -0.7058745622634888, 0.024449408054351807, 0.7067197561264038);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (563, -0.055042870342731476, -0.006734008435159922, 0.9684426188468933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (563, 563, 563);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (563, 2406, '2020-12-18 12:29:04.735000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (563, x'5FDCA090CDBB4F1C41337ED8', 563, 'pelvis', 563, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337eda }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (564, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (564, -0.3225294053554535, -0.09286720305681229, 0.8734028339385986);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (564, 564, 564);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (564, 2406, '2020-12-18 12:29:04.735000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (564, x'5FDCA090CDBB4F1C41337EDA', 564, 'ik_hand_gun', 564, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337edb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (565, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (565, 0.42003172636032104, -0.3981744647026062, 0.10042476654052734);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (565, 565, 565);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (565, 2406, '2020-12-18 12:29:04.735000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (565, x'5FDCA090CDBB4F1C41337EDB', 565, 'ik_hand_l', 565, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337edc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (566, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (566, -0.3213760256767273, -0.09140331298112869, 0.8732883334159851);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (566, 566, 566);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (566, 2407, '2020-12-18 12:29:04.751000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (566, x'5FDCA090CDBB4F1C41337EDC', 566, 'ik_hand_gun', 566, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337edd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (567, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (567, 0.41896650195121765, -0.39768362045288086, 0.10253327339887619);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (567, 567, 567);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (567, 2407, '2020-12-18 12:29:04.751000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (567, x'5FDCA090CDBB4F1C41337EDD', 567, 'ik_hand_l', 567, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ede }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (568, 0.039152950048446655, -0.7058779001235962, 0.02246171236038208, 0.7068936228752136);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (568, -0.05314887315034866, -0.006307220086455345, 0.9686185121536255);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (568, 568, 568);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (568, 2408, '2020-12-18 12:29:04.768000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (568, x'5FDCA090CDBB4F1C41337EDE', 568, 'pelvis', 568, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337edf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (569, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (569, -0.3202487826347351, -0.08997271955013275, 0.8731878399848938);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (569, 569, 569);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (569, 2408, '2020-12-18 12:29:04.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (569, x'5FDCA090CDBB4F1C41337EDF', 569, 'ik_hand_gun', 569, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ee0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (570, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (570, 0.41792500019073486, -0.3972049951553345, 0.10458994656801224);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (570, 570, 570);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (570, 2408, '2020-12-18 12:29:04.768000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (570, x'5FDCA090CDBB4F1C41337EE0', 570, 'ik_hand_l', 570, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (571, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (571, -0.31917375326156616, -0.08850900083780289, 0.8731338977813721);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (571, 571, 571);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (571, 2409, '2020-12-18 12:29:04.784000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (571, x'5FDCA090CDBB4F1C41337EF3', 571, 'ik_hand_gun', 571, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (572, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (572, 0.41685816645622253, -0.396788090467453, 0.10676243901252747);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (572, 572, 572);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (572, 2409, '2020-12-18 12:29:04.784000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (572, x'5FDCA090CDBB4F1C41337EF4', 572, 'ik_hand_l', 572, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (573, 0.03767666220664978, -0.7058629989624023, 0.02039945125579834, 0.7070512771606445);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (573, -0.05130011960864067, -0.005720062181353569, 0.9688478112220764);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (573, 573, 573);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (573, 2410, '2020-12-18 12:29:04.801000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (573, x'5FDCA090CDBB4F1C41337EF5', 573, 'pelvis', 573, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (574, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (574, -0.3181205987930298, -0.08704265207052231, 0.8730947971343994);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (574, 574, 574);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (574, 2410, '2020-12-18 12:29:04.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (574, x'5FDCA090CDBB4F1C41337EF6', 574, 'ik_hand_gun', 574, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (575, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (575, 0.41578900814056396, -0.39639249444007874, 0.10895964503288269);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (575, 575, 575);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (575, 2410, '2020-12-18 12:29:04.801000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (575, x'5FDCA090CDBB4F1C41337EF7', 575, 'ik_hand_l', 575, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (576, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (576, -0.31720882654190063, -0.08558099716901779, 0.8730632066726685);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (576, 576, 576);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (576, 2411, '2020-12-18 12:29:04.818000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (576, x'5FDCA090CDBB4F1C41337EF8', 576, 'ik_hand_gun', 576, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337ef9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (577, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (577, 0.41481801867485046, -0.39617496728897095, 0.11110375076532364);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (577, 577, 577);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (577, 2411, '2020-12-18 12:29:04.818000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (577, x'5FDCA090CDBB4F1C41337EF9', 577, 'ik_hand_l', 577, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (578, 0.03571638464927673, -0.7058568000793457, 0.0182512104511261, 0.707217812538147);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (578, -0.049445491284132004, -0.0052689360454678535, 0.9690560102462769);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (578, 578, 578);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (578, 2412, '2020-12-18 12:29:04.834000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (578, x'5FDCA090CDBB4F1C41337F0A', 578, 'pelvis', 578, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (579, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (579, -0.31634196639060974, -0.08412270992994308, 0.8730340600013733);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (579, 579, 579);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (579, 2412, '2020-12-18 12:29:04.834000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (579, x'5FDCA090CDBB4F1C41337F0B', 579, 'ik_hand_gun', 579, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (580, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (580, 0.413878470659256, -0.39601263403892517, 0.11322854459285736);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (580, 580, 580);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (580, 2412, '2020-12-18 12:29:04.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (580, x'5FDCA090CDBB4F1C41337F0C', 580, 'ik_hand_l', 580, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (581, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (581, -0.31548595428466797, -0.08273456245660782, 0.873042106628418);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (581, 581, 581);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (581, 2413, '2020-12-18 12:29:04.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (581, x'5FDCA090CDBB4F1C41337F0D', 581, 'ik_hand_gun', 581, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (582, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (582, 0.4130052924156189, -0.3959464430809021, 0.11521412432193756);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (582, 582, 582);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (582, 2413, '2020-12-18 12:29:04.851000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (582, x'5FDCA090CDBB4F1C41337F0E', 582, 'ik_hand_l', 582, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f0f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (583, 0.03362736105918884, -0.7057915925979614, 0.015994727611541748, 0.7074398994445801);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (583, -0.04759109020233154, -0.0048380279913544655, 0.9692556262016296);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (583, 583, 583);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (583, 2414, '2020-12-18 12:29:04.868000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (583, x'5FDCA090CDBB4F1C41337F0F', 583, 'pelvis', 583, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f10 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (584, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (584, -0.3146360218524933, -0.08137216418981552, 0.8730616569519043);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (584, 584, 584);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (584, 2414, '2020-12-18 12:29:04.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (584, x'5FDCA090CDBB4F1C41337F10', 584, 'ik_hand_gun', 584, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f11 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (585, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (585, 0.412154883146286, -0.3959095776081085, 0.11715089529752731);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (585, 585, 585);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (585, 2414, '2020-12-18 12:29:04.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (585, x'5FDCA090CDBB4F1C41337F11', 585, 'ik_hand_l', 585, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f23 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (586, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (586, -0.3138096034526825, -0.08006547391414642, 0.873119056224823);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (586, 586, 586);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (586, 2415, '2020-12-18 12:29:04.884000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (586, x'5FDCA090CDBB4F1C41337F23', 586, 'ik_hand_gun', 586, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f24 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (587, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (587, 0.4112866222858429, -0.39591261744499207, 0.11892932653427124);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (587, 587, 587);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (587, 2415, '2020-12-18 12:29:04.884000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (587, x'5FDCA090CDBB4F1C41337F24', 587, 'ik_hand_l', 587, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f25 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (588, 0.03155180811882019, -0.7057685852050781, 0.01382407546043396, 0.7076042890548706);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (588, -0.04575416073203087, -0.004424824845045805, 0.9694424867630005);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (588, 588, 588);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (588, 2416, '2020-12-18 12:29:04.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (588, x'5FDCA090CDBB4F1C41337F25', 588, 'pelvis', 588, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f26 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (589, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (589, -0.31299808621406555, -0.07878824323415756, 0.873187243938446);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (589, 589, 589);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (589, 2416, '2020-12-18 12:29:04.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (589, x'5FDCA090CDBB4F1C41337F26', 589, 'ik_hand_gun', 589, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f27 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (590, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (590, 0.41042131185531616, -0.3959275782108307, 0.12064281105995178);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (590, 590, 590);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (590, 2416, '2020-12-18 12:29:04.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (590, x'5FDCA090CDBB4F1C41337F27', 590, 'ik_hand_l', 590, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f28 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (591, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (591, 0.0835941955447197, 0.042718734592199326, 0.06983412802219391);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (591, 591, 591);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (591, 2417, '2020-12-18 12:29:04.918000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (591, x'5FDCA090CDBB4F1C41337F28', 591, 'ik_foot_l', 591, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f29 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (592, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (592, -0.3122352063655853, -0.07756601274013519, 0.8733043670654297);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (592, 592, 592);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (592, 2417, '2020-12-18 12:29:04.918000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (592, x'5FDCA090CDBB4F1C41337F29', 592, 'ik_hand_gun', 592, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f2a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (593, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (593, 0.4096134603023529, -0.39604803919792175, 0.12226345390081406);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (593, 593, 593);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (593, 2417, '2020-12-18 12:29:04.918000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (593, x'5FDCA090CDBB4F1C41337F2A', 593, 'ik_hand_l', 593, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f33 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (594, 0.029519885778427124, -0.7057265043258667, 0.011667877435684204, 0.7077727317810059);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (594, -0.04392699524760246, -0.003831257810816169, 0.9696298241615295);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (594, 594, 594);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (594, 2418, '2020-12-18 12:29:04.934000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (594, x'5FDCA090CDBB4F1C41337F33', 594, 'pelvis', 594, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f34 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (595, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (595, -0.3114844858646393, -0.07635606825351715, 0.8734366297721863);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (595, 595, 595);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (595, 2418, '2020-12-18 12:29:04.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (595, x'5FDCA090CDBB4F1C41337F34', 595, 'ik_hand_gun', 595, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f35 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (596, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (596, 0.40882018208503723, -0.3962009847164154, 0.12386168539524078);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (596, 596, 596);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (596, 2418, '2020-12-18 12:29:04.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (596, x'5FDCA090CDBB4F1C41337F35', 596, 'ik_hand_l', 596, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f46 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (597, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (597, -0.3108345866203308, -0.07515376806259155, 0.8736155033111572);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (597, 597, 597);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (597, 2419, '2020-12-18 12:29:04.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (597, x'5FDCA090CDBB4F1C41337F46', 597, 'ik_hand_gun', 597, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f47 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (598, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (598, 0.4080628752708435, -0.3964046835899353, 0.12542885541915894);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (598, 598, 598);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (598, 2419, '2020-12-18 12:29:04.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (598, x'5FDCA090CDBB4F1C41337F47', 598, 'ik_hand_l', 598, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f48 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (599, 0.027372419834136963, -0.7056580781936646, 0.009541869163513184, 0.7079591155052185);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (599, -0.04209792613983154, -0.0032154081854969263, 0.9698127508163452);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (599, 599, 599);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (599, 2420, '2020-12-18 12:29:04.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (599, x'5FDCA090CDBB4F1C41337F48', 599, 'pelvis', 599, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f49 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (600, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (600, -0.31022265553474426, -0.07396738231182098, 0.8738062381744385);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (600, 600, 600);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (600, 2420, '2020-12-18 12:29:04.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (600, x'5FDCA090CDBB4F1C41337F49', 600, 'ik_hand_gun', 600, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca090cdbb4f1c41337f4a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (601, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (601, 0.40732482075691223, -0.39662107825279236, 0.12696874141693115);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (601, 601, 601);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (601, 2420, '2020-12-18 12:29:04.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (601, x'5FDCA090CDBB4F1C41337F4A', 601, 'ik_hand_l', 601, '2020-12-18 12:29:04.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (602, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (602, -0.30959582328796387, -0.07281625270843506, 0.8739824295043945);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (602, 602, 602);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (602, 2421, '2020-12-18 12:29:04.984000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (602, x'5FDCA091CDBB4F1C41337F5A', 602, 'ik_hand_gun', 602, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (603, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (603, 0.40659239888191223, -0.3968159854412079, 0.12841470539569855);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (603, 603, 603);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (603, 2421, '2020-12-18 12:29:04.984000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (603, x'5FDCA091CDBB4F1C41337F5B', 603, 'ik_hand_l', 603, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (604, 0.02502262592315674, -0.705623209476471, 0.007390379905700684, 0.7081065773963928);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (604, -0.04028281569480896, -0.0025654600467532873, 0.9699811935424805);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (604, 604, 604);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (604, 2422, '2020-12-18 12:29:05.001000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (604, x'5FDCA091CDBB4F1C41337F5C', 604, 'pelvis', 604, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (605, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (605, -0.30895793437957764, -0.07166330516338348, 0.8741562366485596);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (605, 605, 605);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (605, 2422, '2020-12-18 12:29:05.001000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (605, x'5FDCA091CDBB4F1C41337F5D', 605, 'ik_hand_gun', 605, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (606, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (606, 0.4058537185192108, -0.3970066010951996, 0.12984800338745117);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (606, 606, 606);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (606, 2422, '2020-12-18 12:29:05.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (606, x'5FDCA091CDBB4F1C41337F5E', 606, 'ik_hand_l', 606, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f5f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (607, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (607, -0.3083408772945404, -0.07052943855524063, 0.8743463158607483);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (607, 607, 607);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (607, 2423, '2020-12-18 12:29:05.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (607, x'5FDCA091CDBB4F1C41337F5F', 607, 'ik_hand_gun', 607, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f60 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (608, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (608, 0.4051026701927185, -0.39719289541244507, 0.13113458454608917);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (608, 608, 608);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (608, 2423, '2020-12-18 12:29:05.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (608, x'5FDCA091CDBB4F1C41337F60', 608, 'ik_hand_l', 608, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f71 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (609, 0.022747308015823364, -0.7055848836898804, 0.005215704441070557, 0.7082406878471375);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (609, -0.03847655653953552, -0.0018115997081622481, 0.9701489210128784);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (609, 609, 609);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (609, 2424, '2020-12-18 12:29:05.034000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (609, x'5FDCA091CDBB4F1C41337F71', 609, 'pelvis', 609, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f72 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (610, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (610, -0.307731956243515, -0.06940500438213348, 0.8745405673980713);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (610, 610, 610);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (610, 2424, '2020-12-18 12:29:05.034000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (610, x'5FDCA091CDBB4F1C41337F72', 610, 'ik_hand_gun', 610, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f73 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (611, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (611, 0.40435054898262024, -0.3973773419857025, 0.13237367570400238);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (611, 611, 611);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (611, 2424, '2020-12-18 12:29:05.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (611, x'5FDCA091CDBB4F1C41337F73', 611, 'ik_hand_l', 611, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f74 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (612, 0.0215681791305542, -0.7055381536483765, 0.004114001989364624, 0.7083315849304199);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (612, -0.03756362199783325, -0.001412432175129652, 0.9702364206314087);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (612, 612, 612);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (612, 2425, '2020-12-18 12:29:05.051000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (612, x'5FDCA091CDBB4F1C41337F74', 612, 'pelvis', 612, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f75 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (613, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (613, -0.3070926070213318, -0.06821899116039276, 0.874754011631012);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (613, 613, 613);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (613, 2425, '2020-12-18 12:29:05.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (613, x'5FDCA091CDBB4F1C41337F75', 613, 'ik_hand_gun', 613, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f76 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (614, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (614, 0.4035113453865051, -0.39755183458328247, 0.13356371223926544);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (614, 614, 614);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (614, 2425, '2020-12-18 12:29:05.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (614, x'5FDCA091CDBB4F1C41337F76', 614, 'ik_hand_l', 614, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f77 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (615, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (615, -0.30646106600761414, -0.06704599410295486, 0.874967634677887);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (615, 615, 615);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (615, 2426, '2020-12-18 12:29:05.068000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (615, x'5FDCA091CDBB4F1C41337F77', 615, 'ik_hand_gun', 615, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f78 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (616, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (616, 0.40266862511634827, -0.3977191746234894, 0.13470815122127533);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (616, 616, 616);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (616, 2426, '2020-12-18 12:29:05.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (616, x'5FDCA091CDBB4F1C41337F78', 616, 'ik_hand_l', 616, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f7f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (617, 0.019174307584762573, -0.7054265737533569, 0.002023160457611084, 0.7085204720497131);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (617, -0.035771630704402924, -6.375908851623535E-4, 0.9704024195671082);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (617, 617, 617);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (617, 2427, '2020-12-18 12:29:05.084000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (617, x'5FDCA091CDBB4F1C41337F7F', 617, 'pelvis', 617, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f80 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (618, 0.08827230334281921, 0.00722426176071167, 0.06237916648387909, 0.9941147565841675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (618, 0.43635061383247375, 3.814697180359872E-8, -2.288818308215923E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (618, 618, 618);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (618, 2427, '2020-12-18 12:29:05.084000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (618, x'5FDCA091CDBB4F1C41337F80', 618, 'foot_r', 618, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f82 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (619, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (619, -0.3057929575443268, -0.06581355631351471, 0.8751681447029114);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (619, 619, 619);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (619, 2427, '2020-12-18 12:29:05.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (619, x'5FDCA091CDBB4F1C41337F82', 619, 'ik_hand_gun', 619, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f83 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (620, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (620, 0.40187376737594604, -0.3979029059410095, 0.13586142659187317);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (620, 620, 620);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (620, 2427, '2020-12-18 12:29:05.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (620, x'5FDCA091CDBB4F1C41337F83', 620, 'ik_hand_l', 620, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f87 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (621, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (621, -0.30510056018829346, -0.0645386129617691, 0.8753684759140015);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (621, 621, 621);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (621, 2428, '2020-12-18 12:29:05.101000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (621, x'5FDCA091CDBB4F1C41337F87', 621, 'ik_hand_gun', 621, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f88 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (622, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (622, 0.4010782539844513, -0.39809533953666687, 0.13703982532024384);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (622, 622, 622);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (622, 2428, '2020-12-18 12:29:05.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (622, x'5FDCA091CDBB4F1C41337F88', 622, 'ik_hand_l', 622, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f99 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (623, 0.016729742288589478, -0.705298662185669, 2.9712915420532227E-5, 0.7087125778198242);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (623, -0.0339660607278347, 1.3801574823446572E-4, 0.9705542325973511);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (623, 623, 623);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (623, 2429, '2020-12-18 12:29:05.118000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (623, x'5FDCA091CDBB4F1C41337F99', 623, 'pelvis', 623, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f9a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (624, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (624, -0.3044549226760864, -0.0633399561047554, 0.8755785226821899);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (624, 624, 624);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (624, 2429, '2020-12-18 12:29:05.118000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (624, x'5FDCA091CDBB4F1C41337F9A', 624, 'ik_hand_gun', 624, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f9b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (625, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (625, 0.4002748131752014, -0.3982536196708679, 0.1381407082080841);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (625, 625, 625);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (625, 2429, '2020-12-18 12:29:05.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (625, x'5FDCA091CDBB4F1C41337F9B', 625, 'ik_hand_l', 625, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f9c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (626, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (626, -0.30381059646606445, -0.062140826135873795, 0.8757949471473694);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (626, 626, 626);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (626, 2430, '2020-12-18 12:29:05.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (626, x'5FDCA091CDBB4F1C41337F9C', 626, 'ik_hand_gun', 626, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337f9d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (627, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (627, 0.399455189704895, -0.39840561151504517, 0.13923999667167664);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (627, 627, 627);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (627, 2430, '2020-12-18 12:29:05.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (627, x'5FDCA091CDBB4F1C41337F9D', 627, 'ik_hand_l', 627, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (628, 0.014506787061691284, -0.7051637172698975, -0.0019645094871520996, 0.7088930606842041);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (628, -0.032152630388736725, 9.610747802071273E-4, 0.9706911444664001);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (628, 628, 628);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (628, 2431, '2020-12-18 12:29:05.151000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (628, x'5FDCA091CDBB4F1C41337FB0', 628, 'pelvis', 628, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (629, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (629, -0.3031671941280365, -0.06084558367729187, 0.8759809732437134);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (629, 629, 629);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (629, 2431, '2020-12-18 12:29:05.151000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (629, x'5FDCA091CDBB4F1C41337FB1', 629, 'ik_hand_gun', 629, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (630, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (630, 0.3986004889011383, -0.3985947370529175, 0.14038357138633728);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (630, 630, 630);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (630, 2431, '2020-12-18 12:29:05.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (630, x'5FDCA091CDBB4F1C41337FB2', 630, 'ik_hand_l', 630, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (631, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (631, -0.30257168412208557, -0.059619709849357605, 0.8761447668075562);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (631, 631, 631);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (631, 2432, '2020-12-18 12:29:05.167000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (631, x'5FDCA091CDBB4F1C41337FB3', 631, 'ik_hand_gun', 631, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (632, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (632, 0.3977992832660675, -0.39878004789352417, 0.14145427942276);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (632, 632, 632);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (632, 2432, '2020-12-18 12:29:05.167000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (632, x'5FDCA091CDBB4F1C41337FB4', 632, 'ik_hand_l', 632, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (633, 0.012618958950042725, -0.7050139307975769, -0.003911375999450684, 0.7090703248977661);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (633, -0.030372997745871544, 0.00178184499964118, 0.9707933068275452);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (633, 633, 633);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (633, 2433, '2020-12-18 12:29:05.185000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (633, x'5FDCA091CDBB4F1C41337FB5', 633, 'pelvis', 633, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (634, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (634, -0.3018674850463867, -0.05827508866786957, 0.8763158917427063);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (634, 634, 634);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (634, 2433, '2020-12-18 12:29:05.185000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (634, x'5FDCA091CDBB4F1C41337FB6', 634, 'ik_hand_gun', 634, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fb7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (635, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (635, 0.3968923091888428, -0.3990066349506378, 0.14263667166233063);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (635, 635, 635);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (635, 2433, '2020-12-18 12:29:05.185000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (635, x'5FDCA091CDBB4F1C41337FB7', 635, 'ik_hand_l', 635, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fc9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (636, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (636, -0.3011683225631714, -0.05696742981672287, 0.8764799237251282);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (636, 636, 636);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (636, 2434, '2020-12-18 12:29:05.202000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (636, x'5FDCA091CDBB4F1C41337FC9', 636, 'ik_hand_gun', 636, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fca }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (637, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (637, 0.39600202441215515, -0.3992330729961395, 0.14378871023654938);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (637, 637, 637);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (637, 2434, '2020-12-18 12:29:05.202000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (637, x'5FDCA091CDBB4F1C41337FCA', 637, 'ik_hand_l', 637, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fcb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (638, 0.010992556810379028, -0.7047909498214722, -0.005831003189086914, 0.7093057632446289);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (638, -0.028614575043320656, 0.0025691986083984375, 0.9708539247512817);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (638, 638, 638);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (638, 2435, '2020-12-18 12:29:05.218000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (638, x'5FDCA091CDBB4F1C41337FCB', 638, 'pelvis', 638, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fcc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (639, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (639, -0.30041399598121643, -0.05572061240673065, 0.8766499757766724);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (639, 639, 639);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (639, 2435, '2020-12-18 12:29:05.218000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (639, x'5FDCA091CDBB4F1C41337FCC', 639, 'ik_hand_gun', 639, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fcd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (640, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (640, 0.3950977921485901, -0.39942026138305664, 0.14489711821079254);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (640, 640, 640);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (640, 2435, '2020-12-18 12:29:05.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (640, x'5FDCA091CDBB4F1C41337FCD', 640, 'ik_hand_l', 640, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fcf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (641, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (641, -0.29962337017059326, -0.05445459112524986, 0.8768264651298523);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (641, 641, 641);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (641, 2436, '2020-12-18 12:29:05.234000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (641, x'5FDCA091CDBB4F1C41337FCF', 641, 'ik_hand_gun', 641, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fd0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (642, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (642, 0.39416393637657166, -0.3996020555496216, 0.1460254043340683);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (642, 642, 642);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (642, 2436, '2020-12-18 12:29:05.234000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (642, x'5FDCA091CDBB4F1C41337FD0', 642, 'ik_hand_l', 642, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fd5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (643, 0.009538531303405762, -0.7045383453369141, -0.0076884925365448, 0.7095600366592407);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (643, -0.02681746892631054, 0.003367459634318948, 0.9709018468856812);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (643, 643, 643);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (643, 2437, '2020-12-18 12:29:05.251000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (643, x'5FDCA091CDBB4F1C41337FD5', 643, 'pelvis', 643, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fd6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (644, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (644, 0.08392134308815002, 0.04345893859863281, 0.06916218996047974);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (644, 644, 644);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (644, 2437, '2020-12-18 12:29:05.251000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (644, x'5FDCA091CDBB4F1C41337FD6', 644, 'ik_foot_l', 644, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fd7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (645, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (645, -0.29885730147361755, -0.053041648119688034, 0.8769851326942444);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (645, 645, 645);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (645, 2437, '2020-12-18 12:29:05.251000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (645, x'5FDCA091CDBB4F1C41337FD7', 645, 'ik_hand_gun', 645, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fd8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (646, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (646, 0.3932126462459564, -0.3998231887817383, 0.1472378373146057);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (646, 646, 646);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (646, 2437, '2020-12-18 12:29:05.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (646, x'5FDCA091CDBB4F1C41337FD8', 646, 'ik_hand_l', 646, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fdf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (647, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (647, -0.29813510179519653, -0.05165399610996246, 0.8771311640739441);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (647, 647, 647);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (647, 2438, '2020-12-18 12:29:05.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (647, x'5FDCA091CDBB4F1C41337FDF', 647, 'ik_hand_gun', 647, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fe0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (648, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (648, 0.3923019468784332, -0.4000450074672699, 0.14841629564762115);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (648, 648, 648);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (648, 2438, '2020-12-18 12:29:05.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (648, x'5FDCA091CDBB4F1C41337FE0', 648, 'ik_hand_l', 648, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fe5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (649, 0.00818711519241333, -0.7043085098266602, -0.009332865476608276, 0.7097852230072021);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (649, -0.025059353560209274, 0.004206924233585596, 0.9709707498550415);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (649, 649, 649);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (649, 2439, '2020-12-18 12:29:05.284000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (649, x'5FDCA091CDBB4F1C41337FE5', 649, 'pelvis', 649, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fe6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (650, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (650, -0.29735469818115234, -0.05017969012260437, 0.8772709965705872);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (650, 650, 650);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (650, 2439, '2020-12-18 12:29:05.284000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (650, x'5FDCA091CDBB4F1C41337FE6', 650, 'ik_hand_gun', 650, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fe7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (651, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (651, 0.3913290798664093, -0.40021419525146484, 0.1496543437242508);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (651, 651, 651);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (651, 2439, '2020-12-18 12:29:05.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (651, x'5FDCA091CDBB4F1C41337FE7', 651, 'ik_hand_l', 651, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fef }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (652, 0.7071062922477722, 1.6093254089355469E-6, -0.7071071863174438, -2.9802322387695312E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (652, -0.10113111138343811, 0.04682281240820885, 0.06949437409639359);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (652, 652, 652);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (652, 2440, '2020-12-18 12:29:05.301000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (652, x'5FDCA091CDBB4F1C41337FEF', 652, 'ik_foot_r', 652, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337ff0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (653, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (653, -0.2965717613697052, -0.04870738834142685, 0.8774065375328064);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (653, 653, 653);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (653, 2440, '2020-12-18 12:29:05.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (653, x'5FDCA091CDBB4F1C41337FF0', 653, 'ik_hand_gun', 653, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337ff1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (654, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (654, 0.3903559446334839, -0.40036487579345703, 0.1508868783712387);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (654, 654, 654);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (654, 2440, '2020-12-18 12:29:05.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (654, x'5FDCA091CDBB4F1C41337FF1', 654, 'ik_hand_l', 654, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337ff9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (655, 0.006795972585678101, -0.7041221857070923, -0.010872304439544678, 0.709962785243988);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (655, -0.023301618173718452, 0.00511932373046875, 0.9710427522659302);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (655, 655, 655);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (655, 2441, '2020-12-18 12:29:05.318000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (655, x'5FDCA091CDBB4F1C41337FF9', 655, 'pelvis', 655, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337ffa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (656, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (656, -0.2957209348678589, -0.04731088504195213, 0.8775016069412231);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (656, 656, 656);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (656, 2441, '2020-12-18 12:29:05.318000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (656, x'5FDCA091CDBB4F1C41337FFA', 656, 'ik_hand_gun', 656, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337ffb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (657, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (657, 0.38947245478630066, -0.40047308802604675, 0.1521526277065277);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (657, 657, 657);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (657, 2441, '2020-12-18 12:29:05.318000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (657, x'5FDCA091CDBB4F1C41337FFB', 657, 'ik_hand_l', 657, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41337fff }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (658, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (658, -0.2948622405529022, -0.04595666751265526, 0.877583384513855);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (658, 658, 658);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (658, 2442, '2020-12-18 12:29:05.334000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (658, x'5FDCA091CDBB4F1C41337FFF', 658, 'ik_hand_gun', 658, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338000 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (659, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (659, 0.3886280059814453, -0.40056732296943665, 0.15340997278690338);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (659, 659, 659);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (659, 2442, '2020-12-18 12:29:05.334000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (659, x'5FDCA091CDBB4F1C41338000', 659, 'ik_hand_l', 659, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338008 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (660, 0.005345433950424194, -0.7039873600006104, -0.012281745672225952, 0.7100859880447388);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (660, -0.021553952246904373, 0.006065899971872568, 0.971109926700592);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (660, 660, 660);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (660, 2443, '2020-12-18 12:29:05.351000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (660, x'5FDCA091CDBB4F1C41338008', 660, 'pelvis', 660, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338009 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (661, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (661, -0.2939886152744293, -0.04464336112141609, 0.8776611685752869);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (661, 661, 661);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (661, 2443, '2020-12-18 12:29:05.351000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (661, x'5FDCA091CDBB4F1C41338009', 661, 'ik_hand_gun', 661, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133800a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (662, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (662, 0.38782161474227905, -0.4006204605102539, 0.15460889041423798);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (662, 662, 662);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (662, 2443, '2020-12-18 12:29:05.351000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (662, x'5FDCA091CDBB4F1C4133800A', 662, 'ik_hand_l', 662, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338012 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (663, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (663, -0.2931142747402191, -0.04334726184606552, 0.8777375817298889);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (663, 663, 663);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (663, 2444, '2020-12-18 12:29:05.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (663, x'5FDCA091CDBB4F1C41338012', 663, 'ik_hand_gun', 663, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338013 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (664, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (664, 0.387029767036438, -0.4006612002849579, 0.15578579902648926);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (664, 664, 664);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (664, 2444, '2020-12-18 12:29:05.368000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (664, x'5FDCA091CDBB4F1C41338013', 664, 'ik_hand_l', 664, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133801b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (665, 0.003880918025970459, -0.7038411498069763, -0.013557463884353638, 0.7102172374725342);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (665, -0.01979583501815796, 0.007031935267150402, 0.9711873531341553);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (665, 665, 665);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (665, 2445, '2020-12-18 12:29:05.385000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (665, x'5FDCA091CDBB4F1C4133801B', 665, 'pelvis', 665, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133801c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (666, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (666, -0.2922793924808502, -0.04199891909956932, 0.8778220415115356);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (666, 666, 666);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (666, 2445, '2020-12-18 12:29:05.385000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (666, x'5FDCA091CDBB4F1C4133801C', 666, 'ik_hand_gun', 666, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133801d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (667, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (667, 0.3861806392669678, -0.40066683292388916, 0.1568533480167389);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (667, 667, 667);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (667, 2445, '2020-12-18 12:29:05.385000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (667, x'5FDCA091CDBB4F1C4133801D', 667, 'ik_hand_l', 667, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338021 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (668, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (668, -0.2914784550666809, -0.040671270340681076, 0.8779066205024719);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (668, 668, 668);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (668, 2446, '2020-12-18 12:29:05.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (668, x'5FDCA091CDBB4F1C41338021', 668, 'ik_hand_gun', 668, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338022 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (669, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (669, 0.3853372037410736, -0.4006619453430176, 0.15786005556583405);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (669, 669, 669);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (669, 2446, '2020-12-18 12:29:05.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (669, x'5FDCA091CDBB4F1C41338022', 669, 'ik_hand_l', 669, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338029 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (670, 0.002436727285385132, -0.703689694404602, -0.014771103858947754, 0.7103495001792908);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (670, -0.018059005960822105, 0.007966232486069202, 0.9712566137313843);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (670, 670, 670);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (670, 2447, '2020-12-18 12:29:05.418000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (670, x'5FDCA091CDBB4F1C41338029', 670, 'pelvis', 670, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133802a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (671, 0.07244576513767242, -0.011912956833839417, -0.18990950286388397, 0.9790524840354919);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (671, 0.2796669602394104, 3.814697180359872E-8, 5.7220457705398076E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (671, 671, 671);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (671, 2447, '2020-12-18 12:29:05.418000', 'upperarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (671, x'5FDCA091CDBB4F1C4133802A', 671, 'lowerarm_l', 671, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133802c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (672, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (672, -0.2906572222709656, -0.039437275379896164, 0.8779643774032593);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (672, 672, 672);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (672, 2447, '2020-12-18 12:29:05.418000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (672, x'5FDCA091CDBB4F1C4133802C', 672, 'ik_hand_gun', 672, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133802d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (673, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (673, 0.38453909754753113, -0.40058040618896484, 0.15880396962165833);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (673, 673, 673);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (673, 2447, '2020-12-18 12:29:05.418000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (673, x'5FDCA091CDBB4F1C4133802D', 673, 'ik_hand_l', 673, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338031 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (674, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (674, -0.28982263803482056, -0.03822122514247894, 0.8780145049095154);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (674, 674, 674);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (674, 2448, '2020-12-18 12:29:05.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (674, x'5FDCA091CDBB4F1C41338031', 674, 'ik_hand_gun', 674, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338032 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (675, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (675, 0.3837479054927826, -0.4004747271537781, 0.15973681211471558);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (675, 675, 675);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (675, 2448, '2020-12-18 12:29:05.434000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (675, x'5FDCA091CDBB4F1C41338032', 675, 'ik_hand_l', 675, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133803a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (676, 0.0010154545307159424, -0.7035478353500366, -0.015982896089553833, 0.7104672193527222);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (676, -0.01630905084311962, 0.008829420432448387, 0.9713237285614014);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (676, 676, 676);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (676, 2449, '2020-12-18 12:29:05.451000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (676, x'5FDCA091CDBB4F1C4133803A', 676, 'pelvis', 676, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133803b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (677, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (677, -0.2889232337474823, -0.037104662507772446, 0.8780693411827087);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (677, 677, 677);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (677, 2449, '2020-12-18 12:29:05.451000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (677, x'5FDCA091CDBB4F1C4133803B', 677, 'ik_hand_gun', 677, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133803c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (678, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (678, 0.3829290568828583, -0.40031370520591736, 0.1605665236711502);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (678, 678, 678);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (678, 2449, '2020-12-18 12:29:05.451000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (678, x'5FDCA091CDBB4F1C4133803C', 678, 'ik_hand_l', 678, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338045 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (679, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (679, -0.28800448775291443, -0.03601595014333725, 0.8781254291534424);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (679, 679, 679);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (679, 2450, '2020-12-18 12:29:05.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (679, x'5FDCA091CDBB4F1C41338045', 679, 'ik_hand_gun', 679, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338046 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (680, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (680, 0.38210177421569824, -0.40013667941093445, 0.16136713325977325);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (680, 680, 680);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (680, 2450, '2020-12-18 12:29:05.468000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (680, x'5FDCA091CDBB4F1C41338046', 680, 'ik_hand_l', 680, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133804a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (681, -2.1564960479736328E-4, -0.7034043669700623, -0.017166554927825928, 0.7105823755264282);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (681, -0.014565045945346355, 0.00959098618477583, 0.9713927507400513);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (681, 681, 681);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (681, 2451, '2020-12-18 12:29:05.484000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (681, x'5FDCA091CDBB4F1C4133804A', 681, 'pelvis', 681, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133804b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (682, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (682, -0.28711214661598206, -0.03497440367937088, 0.8782235383987427);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (682, 682, 682);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (682, 2451, '2020-12-18 12:29:05.484000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (682, x'5FDCA091CDBB4F1C4133804B', 682, 'ik_hand_gun', 682, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133804c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (683, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (683, 0.38131439685821533, -0.4000670611858368, 0.16206103563308716);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (683, 683, 683);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (683, 2451, '2020-12-18 12:29:05.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (683, x'5FDCA091CDBB4F1C4133804C', 683, 'ik_hand_l', 683, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338054 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (684, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (684, -0.2862415611743927, -0.03396325930953026, 0.8783325552940369);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (684, 684, 684);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (684, 2452, '2020-12-18 12:29:05.501000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (684, x'5FDCA091CDBB4F1C41338054', 684, 'ik_hand_gun', 684, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338055 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (685, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (685, 0.38055121898651123, -0.4000304341316223, 0.16271232068538666);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (685, 685, 685);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (685, 2452, '2020-12-18 12:29:05.501000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (685, x'5FDCA091CDBB4F1C41338055', 685, 'ik_hand_l', 685, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133805d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (686, -0.0012155771255493164, -0.703251838684082, -0.01823592185974121, 0.7107056975364685);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (686, -0.012822113931179047, 0.010267866775393486, 0.9714577794075012);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (686, 686, 686);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (686, 2453, '2020-12-18 12:29:05.518000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (686, x'5FDCA091CDBB4F1C4133805D', 686, 'pelvis', 686, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133805e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (687, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (687, -0.2853642702102661, -0.0329938679933548, 0.8784663081169128);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (687, 687, 687);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (687, 2453, '2020-12-18 12:29:05.518000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (687, x'5FDCA091CDBB4F1C4133805E', 687, 'ik_hand_gun', 687, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338062 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (688, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (688, -0.28450024127960205, -0.03205385059118271, 0.8786051273345947);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (688, 688, 688);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (688, 2454, '2020-12-18 12:29:05.534000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (688, x'5FDCA091CDBB4F1C41338062', 688, 'ik_hand_gun', 688, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338063 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (689, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (689, 0.37907394766807556, -0.40016642212867737, 0.16368980705738068);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (689, 689, 689);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (689, 2454, '2020-12-18 12:29:05.534000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (689, x'5FDCA091CDBB4F1C41338063', 689, 'ik_hand_l', 689, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133806b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (690, -0.002018660306930542, -0.7031204700469971, -0.019150227308273315, 0.7108097076416016);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (690, -0.01109031680971384, 0.010808180086314678, 0.9715037941932678);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (690, 690, 690);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (690, 2455, '2020-12-18 12:29:05.551000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (690, x'5FDCA091CDBB4F1C4133806B', 690, 'pelvis', 690, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133806c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (691, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (691, 0.08386259526014328, 0.0441952608525753, 0.06848657131195068);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (691, 691, 691);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (691, 2455, '2020-12-18 12:29:05.551000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (691, x'5FDCA091CDBB4F1C4133806C', 691, 'ik_foot_l', 691, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133806d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (692, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (692, -0.28364238142967224, -0.0312841422855854, 0.878749430179596);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (692, 692, 692);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (692, 2455, '2020-12-18 12:29:05.551000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (692, x'5FDCA091CDBB4F1C4133806D', 692, 'ik_hand_gun', 692, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338071 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (693, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (693, -0.2827877402305603, -0.03056621551513672, 0.8788952231407166);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (693, 693, 693);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (693, 2456, '2020-12-18 12:29:05.568000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (693, x'5FDCA091CDBB4F1C41338071', 693, 'ik_hand_gun', 693, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338073 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (694, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (694, 0.3776486814022064, -0.40026044845581055, 0.16443994641304016);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (694, 694, 694);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (694, 2456, '2020-12-18 12:29:05.568000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (694, x'5FDCA091CDBB4F1C41338073', 694, 'ik_hand_l', 694, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133807a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (695, -0.002539902925491333, -0.70308518409729, -0.019937485456466675, 0.7108213901519775);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (695, -0.00937095656991005, 0.011208036914467812, 0.9715269207954407);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (695, 695, 695);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (695, 2457, '2020-12-18 12:29:05.584000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (695, x'5FDCA091CDBB4F1C4133807A', 695, 'pelvis', 695, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338083 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (696, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (696, -0.2812178432941437, -0.02947358973324299, 0.8791332244873047);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (696, 696, 696);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (696, 2458, '2020-12-18 12:29:05.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (696, x'5FDCA091CDBB4F1C41338083', 696, 'ik_hand_gun', 696, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338084 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (697, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (697, 0.3763557970523834, -0.4002220034599304, 0.16496780514717102);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (697, 697, 697);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (697, 2458, '2020-12-18 12:29:05.601000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (697, x'5FDCA091CDBB4F1C41338084', 697, 'ik_hand_l', 697, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338089 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (698, -0.002798229455947876, -0.7031272649765015, -0.020573735237121582, 0.7107605338096619);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (698, -0.0076656341552734375, 0.01158752292394638, 0.9715354442596436);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (698, 698, 698);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (698, 2459, '2020-12-18 12:29:05.618000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (698, x'5FDCA091CDBB4F1C41338089', 698, 'pelvis', 698, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338091 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (699, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (699, -0.27965816855430603, -0.028583316132426262, 0.8793235421180725);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (699, 699, 699);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (699, 2460, '2020-12-18 12:29:05.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (699, x'5FDCA091CDBB4F1C41338091', 699, 'ik_hand_gun', 699, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338092 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (700, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (700, 0.37527740001678467, -0.4001613259315491, 0.1654374599456787);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (700, 700, 700);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (700, 2460, '2020-12-18 12:29:05.634000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (700, x'5FDCA091CDBB4F1C41338092', 700, 'ik_hand_l', 700, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133809a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (701, -0.002941727638244629, -0.703167736530304, -0.02111607789993286, 0.7107040882110596);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (701, -0.00601211516186595, 0.011910016648471355, 0.9715363383293152);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (701, 701, 701);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (701, 2461, '2020-12-18 12:29:05.651000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (701, x'5FDCA091CDBB4F1C4133809A', 701, 'pelvis', 701, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133809e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (702, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (702, -0.2780369222164154, -0.028183307498693466, 0.8795186281204224);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (702, 702, 702);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (702, 2462, '2020-12-18 12:29:05.668000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (702, x'5FDCA091CDBB4F1C4133809E', 702, 'ik_hand_gun', 702, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380a5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (703, -0.003087371587753296, -0.7031747102737427, -0.02152228355407715, 0.7106843590736389);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (703, -0.0044794464483857155, 0.0121688824146986, 0.9715307950973511);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (703, 703, 703);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (703, 2463, '2020-12-18 12:29:05.684000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (703, x'5FDCA091CDBB4F1C413380A5', 703, 'pelvis', 703, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380a6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (704, 0.05022430419921875, 0.03317013382911682, 0.04093673825263977, 0.9973469972610474);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (704, 0.4363507032394409, -3.814697180359872E-8, -1.1444091541079615E-7);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (704, 704, 704);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (704, 2463, '2020-12-18 12:29:05.684000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (704, x'5FDCA091CDBB4F1C413380A6', 704, 'foot_r', 704, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380a7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (705, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (705, 0.37393057346343994, -0.3997836112976074, 0.16557449102401733);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (705, 705, 705);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (705, 2463, '2020-12-18 12:29:05.684000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (705, x'5FDCA091CDBB4F1C413380A7', 705, 'ik_hand_l', 705, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380b0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (706, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (706, -0.27646082639694214, -0.028006667271256447, 0.8796464204788208);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (706, 706, 706);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (706, 2464, '2020-12-18 12:29:05.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (706, x'5FDCA091CDBB4F1C413380B0', 706, 'ik_hand_gun', 706, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380b4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (707, -0.0032692253589630127, -0.7031866312026978, -0.021816670894622803, 0.7106627225875854);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (707, -0.0030324554536491632, 0.012372893281280994, 0.971517026424408);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (707, 707, 707);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (707, 2465, '2020-12-18 12:29:05.718000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (707, x'5FDCA091CDBB4F1C413380B4', 707, 'pelvis', 707, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380bc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (708, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (708, -0.27486369013786316, -0.02809259295463562, 0.8796809911727905);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (708, 708, 708);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (708, 2466, '2020-12-18 12:29:05.734000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (708, x'5FDCA091CDBB4F1C413380BC', 708, 'ik_hand_gun', 708, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380bd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (709, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (709, 0.3730681538581848, -0.39918598532676697, 0.16527476906776428);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (709, 709, 709);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (709, 2466, '2020-12-18 12:29:05.734000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (709, x'5FDCA091CDBB4F1C413380BD', 709, 'ik_hand_l', 709, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380c4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (710, -0.003404378890991211, -0.7032418251037598, -0.02208864688873291, 0.7105991244316101);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (710, -0.001654891879297793, 0.012565000914037228, 0.9715102314949036);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (710, 710, 710);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (710, 2467, '2020-12-18 12:29:05.751000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (710, x'5FDCA091CDBB4F1C413380C4', 710, 'pelvis', 710, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380c8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (711, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (711, -0.2732011079788208, -0.02831537276506424, 0.8796959519386292);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (711, 711, 711);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (711, 2468, '2020-12-18 12:29:05.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (711, x'5FDCA091CDBB4F1C413380C8', 711, 'ik_hand_gun', 711, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380d1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (712, -0.0033559203147888184, -0.7033179402351379, -0.022257089614868164, 0.7105188965797424);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (712, -3.4057736047543585E-4, 0.012772368267178535, 0.9715206623077393);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (712, 712, 712);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (712, 2469, '2020-12-18 12:29:05.784000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (712, x'5FDCA091CDBB4F1C413380D1', 712, 'pelvis', 712, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380d2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (713, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (713, 0.3726401925086975, -0.39863863587379456, 0.1643107533454895);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (713, 713, 713);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (713, 2469, '2020-12-18 12:29:05.784000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (713, x'5FDCA091CDBB4F1C413380D2', 713, 'ik_hand_l', 713, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380d9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (714, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (714, -0.27170535922050476, -0.028585605323314667, 0.8797716498374939);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (714, 714, 714);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (714, 2470, '2020-12-18 12:29:05.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (714, x'5FDCA091CDBB4F1C413380D9', 714, 'ik_hand_gun', 714, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380dd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (715, -0.0030522048473358154, -0.7033848762512207, -0.022170335054397583, 0.7104564905166626);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (715, 8.548724581487477E-4, 0.012919843196868896, 0.9715247750282288);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (715, 715, 715);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (715, 2471, '2020-12-18 12:29:05.818000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (715, x'5FDCA091CDBB4F1C413380DD', 715, 'pelvis', 715, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380e5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (716, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (716, -0.27051904797554016, -0.02920846827328205, 0.8798953294754028);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (716, 716, 716);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (716, 2472, '2020-12-18 12:29:05.834000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (716, x'5FDCA091CDBB4F1C413380E5', 716, 'ik_hand_gun', 716, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380e6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (717, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (717, 0.3727549612522125, -0.39864933490753174, 0.16296115517616272);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (717, 717, 717);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (717, 2472, '2020-12-18 12:29:05.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (717, x'5FDCA091CDBB4F1C413380E6', 717, 'ik_hand_l', 717, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380e9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (718, -0.002484530210494995, -0.7034730911254883, -0.021852344274520874, 0.710381269454956);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (718, 0.0019103228114545345, 0.012978360056877136, 0.9715118408203125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (718, 718, 718);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (718, 2473, '2020-12-18 12:29:05.851000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (718, x'5FDCA091CDBB4F1C413380E9', 718, 'pelvis', 718, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380f1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (719, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (719, -0.26945385336875916, -0.03001870959997177, 0.8799868822097778);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (719, 719, 719);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (719, 2474, '2020-12-18 12:29:05.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (719, x'5FDCA091CDBB4F1C413380F1', 719, 'ik_hand_gun', 719, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380f2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (720, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (720, 0.3731183111667633, -0.39876261353492737, 0.16181397438049316);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (720, 720, 720);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (720, 2474, '2020-12-18 12:29:05.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (720, x'5FDCA091CDBB4F1C413380F2', 720, 'ik_hand_l', 720, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380fe }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (721, -0.0012983977794647217, -0.7036690711975098, -0.02108117938041687, 0.7102137804031372);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (721, 0.0032826231326907873, 0.012949064373970032, 0.9714786410331726);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (721, 721, 721);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (721, 2476, '2020-12-18 12:29:05.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (721, x'5FDCA091CDBB4F1C413380FE', 721, 'pelvis', 721, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c413380ff }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (722, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (722, 0.08468237519264221, 0.04470184072852135, 0.06812336295843124);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (722, 722, 722);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (722, 2476, '2020-12-18 12:29:05.901000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (722, x'5FDCA091CDBB4F1C413380FF', 722, 'ik_foot_l', 722, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338100 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (723, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (723, -0.2685563266277313, -0.030963974073529243, 0.8800514936447144);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (723, 723, 723);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (723, 2476, '2020-12-18 12:29:05.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (723, x'5FDCA091CDBB4F1C41338100', 723, 'ik_hand_gun', 723, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338101 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (724, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (724, 0.37364462018013, -0.3989165723323822, 0.1605517566204071);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (724, 724, 724);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (724, 2476, '2020-12-18 12:29:05.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (724, x'5FDCA091CDBB4F1C41338101', 724, 'ik_hand_l', 724, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338110 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (725, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (725, -0.2678605318069458, -0.03186700865626335, 0.8801112771034241);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (725, 725, 725);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (725, 2478, '2020-12-18 12:29:05.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (725, x'5FDCA091CDBB4F1C41338110', 725, 'ik_hand_gun', 725, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338111 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (726, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (726, 0.3742765486240387, -0.3991107940673828, 0.15906916558742523);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (726, 726, 726);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (726, 2478, '2020-12-18 12:29:05.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (726, x'5FDCA091CDBB4F1C41338111', 726, 'ik_hand_l', 726, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c41338116 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (727, 8.854269981384277E-5, -0.7039196491241455, -0.020038992166519165, 0.7099965810775757);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (727, 0.004458997864276171, 0.012720869854092598, 0.9714214205741882);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (727, 727, 727);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (727, 2479, '2020-12-18 12:29:05.951000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (727, x'5FDCA091CDBB4F1C41338116', 727, 'pelvis', 727, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133811e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (728, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (728, -0.2670038044452667, -0.032917268574237823, 0.8801741003990173);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (728, 728, 728);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (728, 2480, '2020-12-18 12:29:05.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (728, x'5FDCA091CDBB4F1C4133811E', 728, 'ik_hand_gun', 728, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca091cdbb4f1c4133811f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (729, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (729, 0.37509816884994507, -0.39940765500068665, 0.15738850831985474);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (729, 729, 729);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (729, 2480, '2020-12-18 12:29:05.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (729, x'5FDCA091CDBB4F1C4133811F', 729, 'ik_hand_l', 729, '2020-12-18 12:29:05.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338127 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (730, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (730, 0.3757993280887604, -0.3997657597064972, 0.15650427341461182);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (730, 730, 730);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (730, 2481, '2020-12-18 12:29:05.984000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (730, x'5FDCA092CDBB4F1C41338127', 730, 'ik_hand_l', 730, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133812c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (731, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (731, -0.2664159834384918, -0.03430192917585373, 0.8802374005317688);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (731, 731, 731);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (731, 2482, '2020-12-18 12:29:06.001000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (731, x'5FDCA092CDBB4F1C4133812C', 731, 'ik_hand_gun', 731, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133812d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (732, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (732, 0.3765673339366913, -0.400176078081131, 0.15563040971755981);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (732, 732, 732);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (732, 2482, '2020-12-18 12:29:06.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (732, x'5FDCA092CDBB4F1C4133812D', 732, 'ik_hand_l', 732, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338134 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (733, 0.0018798410892486572, -0.7043019533157349, -0.01883631944656372, 0.7096478939056396);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (733, 0.005645141005516052, 0.012364196591079235, 0.9713497757911682);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (733, 733, 733);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (733, 2483, '2020-12-18 12:29:06.018000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (733, x'5FDCA092CDBB4F1C41338134', 733, 'pelvis', 733, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338135 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (734, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (734, 0.3773316442966461, -0.4005804657936096, 0.1547955721616745);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (734, 734, 734);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (734, 2483, '2020-12-18 12:29:06.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (734, x'5FDCA092CDBB4F1C41338135', 734, 'ik_hand_l', 734, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133813d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (735, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (735, -0.2661125361919403, -0.03559884801506996, 0.8803046345710754);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (735, 735, 735);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (735, 2484, '2020-12-18 12:29:06.034000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (735, x'5FDCA092CDBB4F1C4133813D', 735, 'ik_hand_gun', 735, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133813e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (736, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (736, 0.37809768319129944, -0.4009844958782196, 0.15396782755851746);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (736, 736, 736);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (736, 2484, '2020-12-18 12:29:06.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (736, x'5FDCA092CDBB4F1C4133813E', 736, 'ik_hand_l', 736, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338144 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (737, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (737, 0.37884974479675293, -0.4014074504375458, 0.15313689410686493);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (737, 737, 737);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (737, 2485, '2020-12-18 12:29:06.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (737, x'5FDCA092CDBB4F1C41338144', 737, 'ik_hand_l', 737, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133814d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (738, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (738, -0.2660830318927765, -0.03676750138401985, 0.8803974986076355);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (738, 738, 738);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (738, 2486, '2020-12-18 12:29:06.067000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (738, x'5FDCA092CDBB4F1C4133814D', 738, 'ik_hand_gun', 738, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133814e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (739, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (739, 0.3795793950557709, -0.401824951171875, 0.15232545137405396);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (739, 739, 739);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (739, 2486, '2020-12-18 12:29:06.067000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (739, x'5FDCA092CDBB4F1C4133814E', 739, 'ik_hand_l', 739, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338152 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (740, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (740, 0.38034796714782715, -0.40221285820007324, 0.1513807773590088);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (740, 740, 740);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (740, 2487, '2020-12-18 12:29:06.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (740, x'5FDCA092CDBB4F1C41338152', 740, 'ik_hand_l', 740, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338162 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (741, 0.004223942756652832, -0.7046959400177002, -0.016669541597366333, 0.7093007564544678);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (741, 0.00655532767996192, 0.011852338910102844, 0.9712784290313721);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (741, 741, 741);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (741, 2488, '2020-12-18 12:29:06.101000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (741, x'5FDCA092CDBB4F1C41338162', 741, 'pelvis', 741, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338163 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (742, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (742, -0.26619747281074524, -0.03779397904872894, 0.880429744720459);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (742, 742, 742);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (742, 2488, '2020-12-18 12:29:06.101000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (742, x'5FDCA092CDBB4F1C41338163', 742, 'ik_hand_gun', 742, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338164 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (743, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (743, 0.38110628724098206, -0.4025803208351135, 0.1504218727350235);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (743, 743, 743);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (743, 2488, '2020-12-18 12:29:06.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (743, x'5FDCA092CDBB4F1C41338164', 743, 'ik_hand_l', 743, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338165 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (744, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (744, 0.3819156587123871, -0.4029124975204468, 0.1494670957326889);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (744, 744, 744);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (744, 2489, '2020-12-18 12:29:06.117000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (744, x'5FDCA092CDBB4F1C41338165', 744, 'ik_hand_l', 744, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338175 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (745, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (745, -0.26641207933425903, -0.03903190419077873, 0.8804232478141785);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (745, 745, 745);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (745, 2490, '2020-12-18 12:29:06.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (745, x'5FDCA092CDBB4F1C41338175', 745, 'ik_hand_gun', 745, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338176 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (746, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (746, 0.3827451169490814, -0.4032357633113861, 0.14850860834121704);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (746, 746, 746);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (746, 2490, '2020-12-18 12:29:06.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (746, x'5FDCA092CDBB4F1C41338176', 746, 'ik_hand_l', 746, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338177 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (747, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (747, 0.38360899686813354, -0.40354883670806885, 0.14757609367370605);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (747, 747, 747);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (747, 2491, '2020-12-18 12:29:06.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (747, x'5FDCA092CDBB4F1C41338177', 747, 'ik_hand_l', 747, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338184 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (748, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (748, -0.2666502594947815, -0.040604572743177414, 0.88038170337677);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (748, 748, 748);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (748, 2492, '2020-12-18 12:29:06.168000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (748, x'5FDCA092CDBB4F1C41338184', 748, 'ik_hand_gun', 748, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338185 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (749, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (749, 0.38448068499565125, -0.4038581848144531, 0.14665375649929047);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (749, 749, 749);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (749, 2492, '2020-12-18 12:29:06.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (749, x'5FDCA092CDBB4F1C41338185', 749, 'ik_hand_l', 749, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338186 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (750, -0.05912594497203827, 0.055737197399139404, 0.12861113250255585, 0.9883604049682617);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (750, 0.061942823231220245, -2.384185648907078E-8, -5.7220457705398076E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (750, 750, 750);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (750, 2493, '2020-12-18 12:29:06.184000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (750, x'5FDCA092CDBB4F1C41338186', 750, 'head', 750, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338187 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (751, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (751, 0.38531869649887085, -0.40417051315307617, 0.14569908380508423);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (751, 751, 751);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (751, 2493, '2020-12-18 12:29:06.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (751, x'5FDCA092CDBB4F1C41338187', 751, 'ik_hand_l', 751, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338188 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (752, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (752, -0.26681286096572876, -0.04217899218201637, 0.8803897500038147);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (752, 752, 752);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (752, 2494, '2020-12-18 12:29:06.201000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (752, x'5FDCA092CDBB4F1C41338188', 752, 'ik_hand_gun', 752, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338189 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (753, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (753, 0.3861505091190338, -0.4044853746891022, 0.14472968876361847);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (753, 753, 753);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (753, 2494, '2020-12-18 12:29:06.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (753, x'5FDCA092CDBB4F1C41338189', 753, 'ik_hand_l', 753, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338197 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (754, 0.008191525936126709, -0.7053939700126648, -0.012955993413925171, 0.7086495161056519);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (754, 0.006776351016014814, 0.010747450403869152, 0.9711490273475647);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (754, 754, 754);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (754, 2495, '2020-12-18 12:29:06.218000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (754, x'5FDCA092CDBB4F1C41338197', 754, 'pelvis', 754, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338199 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (755, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (755, 0.38694846630096436, -0.4047764837741852, 0.14373567700386047);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (755, 755, 755);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (755, 2495, '2020-12-18 12:29:06.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (755, x'5FDCA092CDBB4F1C41338199', 755, 'ik_hand_l', 755, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133819a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (756, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (756, -0.26689907908439636, -0.043719444423913956, 0.8804171681404114);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (756, 756, 756);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (756, 2496, '2020-12-18 12:29:06.235000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (756, x'5FDCA092CDBB4F1C4133819A', 756, 'ik_hand_gun', 756, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133819b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (757, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (757, 0.3877149224281311, -0.40505290031433105, 0.14276175200939178);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (757, 757, 757);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (757, 2496, '2020-12-18 12:29:06.235000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (757, x'5FDCA092CDBB4F1C4133819B', 757, 'ik_hand_l', 757, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133819c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (758, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (758, 0.388507217168808, -0.4052661061286926, 0.1417970210313797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (758, 758, 758);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (758, 2497, '2020-12-18 12:29:06.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (758, x'5FDCA092CDBB4F1C4133819C', 758, 'ik_hand_l', 758, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ab }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (759, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (759, -0.2669523060321808, -0.04530595615506172, 0.8803313374519348);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (759, 759, 759);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (759, 2498, '2020-12-18 12:29:06.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (759, x'5FDCA092CDBB4F1C413381AB', 759, 'ik_hand_gun', 759, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ac }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (760, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (760, 0.38931408524513245, -0.40546512603759766, 0.1408250480890274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (760, 760, 760);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (760, 2498, '2020-12-18 12:29:06.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (760, x'5FDCA092CDBB4F1C413381AC', 760, 'ik_hand_l', 760, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ad }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (761, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (761, 0.3900744616985321, -0.4056094288825989, 0.1399071216583252);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (761, 761, 761);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (761, 2499, '2020-12-18 12:29:06.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (761, x'5FDCA092CDBB4F1C413381AD', 761, 'ik_hand_l', 761, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381af }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (762, 0.011523574590682983, -0.7059186697006226, -0.009801805019378662, 0.7081310749053955);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (762, 0.006300352513790131, 0.009672774001955986, 0.970992386341095);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (762, 762, 762);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (762, 2500, '2020-12-18 12:29:06.301000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (762, x'5FDCA092CDBB4F1C413381AF', 762, 'pelvis', 762, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381b0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (763, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (763, 0.08568671345710754, 0.04471198841929436, 0.06814627349376678);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (763, 763, 763);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (763, 2500, '2020-12-18 12:29:06.301000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (763, x'5FDCA092CDBB4F1C413381B0', 763, 'ik_foot_l', 763, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381b1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (764, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (764, -0.2671836316585541, -0.04702587053179741, 0.8801738619804382);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (764, 764, 764);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (764, 2500, '2020-12-18 12:29:06.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (764, x'5FDCA092CDBB4F1C413381B1', 764, 'ik_hand_gun', 764, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381b2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (765, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (765, 0.3908248543739319, -0.40573814511299133, 0.13900065422058105);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (765, 765, 765);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (765, 2500, '2020-12-18 12:29:06.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (765, x'5FDCA092CDBB4F1C413381B2', 765, 'ik_hand_l', 765, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381b8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (766, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (766, 0.391560822725296, -0.40582433342933655, 0.1380663961172104);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (766, 766, 766);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (766, 2501, '2020-12-18 12:29:06.318000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (766, x'5FDCA092CDBB4F1C413381B8', 766, 'ik_hand_l', 766, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381bb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (767, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (767, -0.267502099275589, -0.04876727983355522, 0.8800004124641418);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (767, 767, 767);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (767, 2502, '2020-12-18 12:29:06.335000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (767, x'5FDCA092CDBB4F1C413381BB', 767, 'ik_hand_gun', 767, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381bc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (768, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (768, 0.3922966718673706, -0.40589821338653564, 0.13711833953857422);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (768, 768, 768);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (768, 2502, '2020-12-18 12:29:06.335000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (768, x'5FDCA092CDBB4F1C413381BC', 768, 'ik_hand_l', 768, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381c9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (769, 0.01361820101737976, -0.7061629295349121, -0.007746279239654541, 0.7078758478164673);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (769, 0.005726012401282787, 0.00877861026674509, 0.9708861112594604);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (769, 769, 769);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (769, 2503, '2020-12-18 12:29:06.351000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (769, x'5FDCA092CDBB4F1C413381C9', 769, 'pelvis', 769, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ca }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (770, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (770, 0.39304816722869873, -0.405895859003067, 0.1361086368560791);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (770, 770, 770);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (770, 2503, '2020-12-18 12:29:06.351000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (770, x'5FDCA092CDBB4F1C413381CA', 770, 'ik_hand_l', 770, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381cc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (771, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (771, -0.26783642172813416, -0.05054042860865593, 0.8798114061355591);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (771, 771, 771);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (771, 2504, '2020-12-18 12:29:06.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (771, x'5FDCA092CDBB4F1C413381CC', 771, 'ik_hand_gun', 771, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381cd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (772, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (772, 0.3938176929950714, -0.405870646238327, 0.1350623369216919);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (772, 772, 772);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (772, 2504, '2020-12-18 12:29:06.368000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (772, x'5FDCA092CDBB4F1C413381CD', 772, 'ik_hand_l', 772, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381d9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (773, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (773, 0.3945707678794861, -0.4058060646057129, 0.13407838344573975);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (773, 773, 773);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (773, 2505, '2020-12-18 12:29:06.384000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (773, x'5FDCA092CDBB4F1C413381D9', 773, 'ik_hand_l', 773, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381da }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (774, 0.01575714349746704, -0.7063261270523071, -0.005566924810409546, 0.7076890468597412);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (774, 0.004950942471623421, 0.007952270098030567, 0.9708043336868286);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (774, 774, 774);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (774, 2506, '2020-12-18 12:29:06.401000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (774, x'5FDCA092CDBB4F1C413381DA', 774, 'pelvis', 774, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381dc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (775, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (775, -0.2681103050708771, -0.05226966738700867, 0.8795865178108215);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (775, 775, 775);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (775, 2506, '2020-12-18 12:29:06.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (775, x'5FDCA092CDBB4F1C413381DC', 775, 'ik_hand_gun', 775, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381dd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (776, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (776, 0.39534270763397217, -0.40572860836982727, 0.13308101892471313);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (776, 776, 776);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (776, 2506, '2020-12-18 12:29:06.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (776, x'5FDCA092CDBB4F1C413381DD', 776, 'ik_hand_l', 776, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381de }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (777, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (777, 0.39606136083602905, -0.4056587219238281, 0.13205501437187195);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (777, 777, 777);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (777, 2507, '2020-12-18 12:29:06.418000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (777, x'5FDCA092CDBB4F1C413381DE', 777, 'ik_hand_l', 777, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381e8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (778, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (778, -0.268520325422287, -0.053934402763843536, 0.8793752789497375);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (778, 778, 778);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (778, 2508, '2020-12-18 12:29:06.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (778, x'5FDCA092CDBB4F1C413381E8', 778, 'ik_hand_gun', 778, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381e9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (779, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (779, 0.3967602550983429, -0.4055914580821991, 0.13102592527866364);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (779, 779, 779);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (779, 2508, '2020-12-18 12:29:06.434000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (779, x'5FDCA092CDBB4F1C413381E9', 779, 'ik_hand_l', 779, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (780, 0.018171995878219604, -0.7065051794052124, -0.003089398145675659, 0.7074675559997559);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (780, 0.003977431915700436, 0.007105178665369749, 0.970772922039032);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (780, 780, 780);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (780, 2509, '2020-12-18 12:29:06.451000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (780, x'5FDCA092CDBB4F1C413381EA', 780, 'pelvis', 780, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381eb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (781, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (781, 0.3975357413291931, -0.4056624174118042, 0.12993179261684418);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (781, 781, 781);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (781, 2509, '2020-12-18 12:29:06.451000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (781, x'5FDCA092CDBB4F1C413381EB', 781, 'ik_hand_l', 781, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ec }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (782, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (782, -0.269199013710022, -0.05554300174117088, 0.8792383670806885);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (782, 782, 782);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (782, 2510, '2020-12-18 12:29:06.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (782, x'5FDCA092CDBB4F1C413381EC', 782, 'ik_hand_gun', 782, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381ed }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (783, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (783, 0.39832618832588196, -0.40577414631843567, 0.12882938981056213);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (783, 783, 783);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (783, 2510, '2020-12-18 12:29:06.468000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (783, x'5FDCA092CDBB4F1C413381ED', 783, 'ik_hand_l', 783, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381f8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (784, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (784, 0.39915433526039124, -0.40602439641952515, 0.12769815325737);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (784, 784, 784);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (784, 2511, '2020-12-18 12:29:06.484000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (784, x'5FDCA092CDBB4F1C413381F8', 784, 'ik_hand_l', 784, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381f9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (785, 0.020713120698928833, -0.7067760229110718, -5.616545677185059E-4, 0.7071336507797241);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (785, 0.002845610724762082, 0.006453550886362791, 0.9706938862800598);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (785, 785, 785);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (785, 2512, '2020-12-18 12:29:06.501000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (785, x'5FDCA092CDBB4F1C413381F9', 785, 'pelvis', 785, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381fa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (786, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (786, -0.27012720704078674, -0.057173099368810654, 0.8792127966880798);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (786, 786, 786);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (786, 2512, '2020-12-18 12:29:06.501000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (786, x'5FDCA092CDBB4F1C413381FA', 786, 'ik_hand_gun', 786, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381fb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (787, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (787, 0.39998316764831543, -0.40631282329559326, 0.1265724003314972);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (787, 787, 787);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (787, 2512, '2020-12-18 12:29:06.501000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (787, x'5FDCA092CDBB4F1C413381FB', 787, 'ik_hand_l', 787, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381fc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (788, -0.036006227135658264, 0.035669535398483276, -0.1514684557914734, 0.9871616959571838);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (788, 0.13577045500278473, 2.384185648907078E-8, 2.8610228852699038E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (788, 788, 788);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (788, 2513, '2020-12-18 12:29:06.518000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (788, x'5FDCA092CDBB4F1C413381FC', 788, 'neck_01', 788, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413381fe }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (789, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (789, 0.40086105465888977, -0.406695157289505, 0.12554994225502014);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (789, 789, 789);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (789, 2513, '2020-12-18 12:29:06.518000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (789, x'5FDCA092CDBB4F1C413381FE', 789, 'ik_hand_l', 789, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133820c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (790, 0.022342711687088013, -0.7069125175476074, 8.744895458221436E-4, 0.7069473266601562);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (790, 0.0019626617431640625, 0.005879515781998634, 0.9706201553344727);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (790, 790, 790);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (790, 2514, '2020-12-18 12:29:06.534000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (790, x'5FDCA092CDBB4F1C4133820C', 790, 'pelvis', 790, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133820d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (791, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (791, -0.27123522758483887, -0.058809757232666016, 0.8792097568511963);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (791, 791, 791);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (791, 2514, '2020-12-18 12:29:06.534000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (791, x'5FDCA092CDBB4F1C4133820D', 791, 'ik_hand_gun', 791, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133820e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (792, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (792, 0.40174299478530884, -0.40710100531578064, 0.1245710551738739);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (792, 792, 792);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (792, 2514, '2020-12-18 12:29:06.534000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (792, x'5FDCA092CDBB4F1C4133820E', 792, 'ik_hand_l', 792, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133820f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (793, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (793, -0.27184367179870605, -0.059632815420627594, 0.8792049884796143);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (793, 793, 793);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (793, 2515, '2020-12-18 12:29:06.551000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (793, x'5FDCA092CDBB4F1C4133820F', 793, 'ik_hand_gun', 793, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338210 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (794, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (794, 0.40266501903533936, -0.40752825140953064, 0.12367512285709381);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (794, 794, 794);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (794, 2515, '2020-12-18 12:29:06.551000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (794, x'5FDCA092CDBB4F1C41338210', 794, 'ik_hand_l', 794, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338211 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (795, 0.02340826392173767, -0.7070072889328003, 0.0017609596252441406, 0.7068164348602295);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (795, 0.001023254357278347, 0.005259932950139046, 0.9705455303192139);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (795, 795, 795);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (795, 2516, '2020-12-18 12:29:06.568000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (795, x'5FDCA092CDBB4F1C41338211', 795, 'pelvis', 795, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338212 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (796, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (796, 0.4035654366016388, -0.4079461991786957, 0.12283558398485184);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (796, 796, 796);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (796, 2516, '2020-12-18 12:29:06.568000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (796, x'5FDCA092CDBB4F1C41338212', 796, 'ik_hand_l', 796, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133821a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (797, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (797, -0.2731470763683319, -0.061177462339401245, 0.8791540265083313);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (797, 797, 797);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (797, 2517, '2020-12-18 12:29:06.584000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (797, x'5FDCA092CDBB4F1C4133821A', 797, 'ik_hand_gun', 797, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133821b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (798, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (798, 0.4044813811779022, -0.4083751142024994, 0.12208142131567001);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (798, 798, 798);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (798, 2517, '2020-12-18 12:29:06.584000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (798, x'5FDCA092CDBB4F1C4133821B', 798, 'ik_hand_l', 798, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338221 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (799, 0.023694872856140137, -0.7071871161460876, 0.0022581815719604492, 0.7066254615783691);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (799, 2.9830931453034282E-5, 0.004429778549820185, 0.9704694151878357);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (799, 799, 799);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (799, 2518, '2020-12-18 12:29:06.601000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (799, x'5FDCA092CDBB4F1C41338221', 799, 'pelvis', 799, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338223 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (800, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (800, -0.27388688921928406, -0.06191690266132355, 0.8790961503982544);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (800, 800, 800);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (800, 2518, '2020-12-18 12:29:06.601000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (800, x'5FDCA092CDBB4F1C41338223', 800, 'ik_hand_gun', 800, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338224 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (801, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (801, 0.40540847182273865, -0.40881049633026123, 0.12134844809770584);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (801, 801, 801);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (801, 2518, '2020-12-18 12:29:06.601000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (801, x'5FDCA092CDBB4F1C41338224', 801, 'ik_hand_l', 801, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338228 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (802, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (802, -0.27467820048332214, -0.06253780424594879, 0.8790462017059326);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (802, 802, 802);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (802, 2519, '2020-12-18 12:29:06.618000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (802, x'5FDCA092CDBB4F1C41338228', 802, 'ik_hand_gun', 802, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338229 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (803, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (803, 0.4062940180301666, -0.4092133939266205, 0.12067736685276031);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (803, 803, 803);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (803, 2519, '2020-12-18 12:29:06.618000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (803, x'5FDCA092CDBB4F1C41338229', 803, 'ik_hand_l', 803, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338231 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (804, 0.02430662512779236, -0.7073110342025757, 0.0028609931468963623, 0.7064783573150635);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (804, -0.0011563110165297985, 0.003933105152100325, 0.970424473285675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (804, 804, 804);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (804, 2520, '2020-12-18 12:29:06.634000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (804, x'5FDCA092CDBB4F1C41338231', 804, 'pelvis', 804, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338232 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (805, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (805, -0.2755008339881897, -0.06313808262348175, 0.8789975643157959);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (805, 805, 805);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (805, 2520, '2020-12-18 12:29:06.634000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (805, x'5FDCA092CDBB4F1C41338232', 805, 'ik_hand_gun', 805, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338233 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (806, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (806, 0.40718644857406616, -0.40961581468582153, 0.12000972777605057);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (806, 806, 806);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (806, 2520, '2020-12-18 12:29:06.634000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (806, x'5FDCA092CDBB4F1C41338233', 806, 'ik_hand_l', 806, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338237 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (807, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (807, 0.40814104676246643, -0.41002416610717773, 0.11930637061595917);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (807, 807, 807);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (807, 2521, '2020-12-18 12:29:06.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (807, x'5FDCA092CDBB4F1C41338237', 807, 'ik_hand_l', 807, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338245 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (808, 0.025152236223220825, -0.7073673009872437, 0.0036232173442840576, 0.7063890695571899);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (808, -0.0024883269798010588, 0.0035381310153752565, 0.9704204201698303);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (808, 808, 808);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (808, 2522, '2020-12-18 12:29:06.668000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (808, x'5FDCA092CDBB4F1C41338245', 808, 'pelvis', 808, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338246 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (809, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (809, -0.2770572900772095, -0.06420877575874329, 0.878957986831665);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (809, 809, 809);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (809, 2522, '2020-12-18 12:29:06.668000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (809, x'5FDCA092CDBB4F1C41338246', 809, 'ik_hand_gun', 809, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338247 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (810, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (810, 0.4090772569179535, -0.4104187786579132, 0.11861968040466309);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (810, 810, 810);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (810, 2522, '2020-12-18 12:29:06.668000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (810, x'5FDCA092CDBB4F1C41338247', 810, 'ik_hand_l', 810, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338248 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (811, 0.7071062922477722, 1.6093254089355469E-6, -0.7071071863174438, -2.9802322387695312E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (811, -0.10012822598218918, 0.04660903662443161, 0.06954345852136612);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (811, 811, 811);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (811, 2523, '2020-12-18 12:29:06.684000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (811, x'5FDCA092CDBB4F1C41338248', 811, 'ik_foot_r', 811, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338257 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (812, 0.025908946990966797, -0.7073777914047241, 0.004487454891204834, 0.7063462138175964);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (812, -0.003932266030460596, 0.003163756337016821, 0.9704224467277527);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (812, 812, 812);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (812, 2524, '2020-12-18 12:29:06.701000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (812, x'5FDCA092CDBB4F1C41338257', 812, 'pelvis', 812, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338258 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (813, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (813, -0.2786053717136383, -0.06512750685214996, 0.8789644241333008);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (813, 813, 813);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (813, 2524, '2020-12-18 12:29:06.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (813, x'5FDCA092CDBB4F1C41338258', 813, 'ik_hand_gun', 813, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338259 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (814, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (814, 0.4106731414794922, -0.4110983908176422, 0.11786643415689468);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (814, 814, 814);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (814, 2524, '2020-12-18 12:29:06.701000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (814, x'5FDCA092CDBB4F1C41338259', 814, 'ik_hand_l', 814, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338269 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (815, 0.02680918574333191, -0.7074360847473145, 0.005594313144683838, 0.7062463164329529);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (815, -0.005466917995363474, 0.0027943411841988564, 0.9704163074493408);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (815, 815, 815);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (815, 2526, '2020-12-18 12:29:06.734000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (815, x'5FDCA092CDBB4F1C41338269', 815, 'pelvis', 815, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (816, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (816, -0.2801273763179779, -0.06588121503591537, 0.8788545727729797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (816, 816, 816);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (816, 2526, '2020-12-18 12:29:06.734000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (816, x'5FDCA092CDBB4F1C4133826A', 816, 'ik_hand_gun', 816, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (817, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (817, 0.4121352732181549, -0.41163384914398193, 0.11735589057207108);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (817, 817, 817);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (817, 2526, '2020-12-18 12:29:06.734000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (817, x'5FDCA092CDBB4F1C4133826B', 817, 'ik_hand_l', 817, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (818, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (818, 0.0862116888165474, 0.04406280443072319, 0.06875235587358475);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (818, 818, 818);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (818, 2527, '2020-12-18 12:29:06.751000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (818, x'5FDCA092CDBB4F1C4133826C', 818, 'ik_foot_l', 818, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (819, 0.02792462706565857, -0.7075707912445068, 0.006921976804733276, 0.7060563564300537);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (819, -0.007065275683999062, 0.002389143919572234, 0.9703911542892456);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (819, 819, 819);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (819, 2528, '2020-12-18 12:29:06.768000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (819, x'5FDCA092CDBB4F1C4133826D', 819, 'pelvis', 819, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (820, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (820, -0.28156015276908875, -0.06660646200180054, 0.8786544799804688);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (820, 820, 820);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (820, 2528, '2020-12-18 12:29:06.768000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (820, x'5FDCA092CDBB4F1C4133826E', 820, 'ik_hand_gun', 820, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133826f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (821, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (821, 0.4135657548904419, -0.4120621681213379, 0.11694535613059998);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (821, 821, 821);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (821, 2528, '2020-12-18 12:29:06.768000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (821, x'5FDCA092CDBB4F1C4133826F', 821, 'ik_hand_l', 821, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133827d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (822, 0.029368609189987183, -0.7077444791793823, 0.008241325616836548, 0.705809473991394);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (822, -0.008782805874943733, 0.0020172118674963713, 0.9703611731529236);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (822, 822, 822);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (822, 2530, '2020-12-18 12:29:06.801000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (822, x'5FDCA092CDBB4F1C4133827D', 822, 'pelvis', 822, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133827e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (823, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (823, -0.2831882834434509, -0.06744394451379776, 0.8784365653991699);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (823, 823, 823);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (823, 2530, '2020-12-18 12:29:06.801000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (823, x'5FDCA092CDBB4F1C4133827E', 823, 'ik_hand_gun', 823, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133827f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (824, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (824, 0.4150421917438507, -0.412455677986145, 0.11645665764808655);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (824, 824, 824);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (824, 2530, '2020-12-18 12:29:06.801000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (824, x'5FDCA092CDBB4F1C4133827F', 824, 'ik_hand_l', 824, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338280 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (825, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (825, -0.2840884029865265, -0.06789249181747437, 0.878315269947052);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (825, 825, 825);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (825, 2531, '2020-12-18 12:29:06.817000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (825, x'5FDCA092CDBB4F1C41338280', 825, 'ik_hand_gun', 825, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338284 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (826, 0.03128868341445923, -0.7079299688339233, 0.009678393602371216, 0.7055226564407349);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (826, -0.010709837079048157, 0.001702117850072682, 0.9703248143196106);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (826, 826, 826);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (826, 2532, '2020-12-18 12:29:06.834000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (826, x'5FDCA092CDBB4F1C41338284', 826, 'pelvis', 826, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338285 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (827, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (827, -0.28502359986305237, -0.06835412979125977, 0.8781886100769043);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (827, 827, 827);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (827, 2532, '2020-12-18 12:29:06.834000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (827, x'5FDCA092CDBB4F1C41338285', 827, 'ik_hand_gun', 827, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338286 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (828, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (828, 0.41625094413757324, -0.4125538170337677, 0.11604118347167969);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (828, 828, 828);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (828, 2532, '2020-12-18 12:29:06.834000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (828, x'5FDCA092CDBB4F1C41338286', 828, 'ik_hand_l', 828, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133828a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (829, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (829, -0.2859231233596802, -0.06883113831281662, 0.878075897693634);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (829, 829, 829);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (829, 2533, '2020-12-18 12:29:06.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (829, x'5FDCA092CDBB4F1C4133828A', 829, 'ik_hand_gun', 829, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c41338299 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (830, 0.03305238485336304, -0.7080782651901245, 0.010967016220092773, 0.7052745223045349);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (830, -0.012595746666193008, 0.0014009082224220037, 0.9702792763710022);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (830, 830, 830);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (830, 2534, '2020-12-18 12:29:06.868000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (830, x'5FDCA092CDBB4F1C41338299', 830, 'pelvis', 830, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133829a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (831, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (831, -0.2868293225765228, -0.06932147592306137, 0.8779650926589966);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (831, 831, 831);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (831, 2534, '2020-12-18 12:29:06.868000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (831, x'5FDCA092CDBB4F1C4133829A', 831, 'ik_hand_gun', 831, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c4133829b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (832, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (832, 0.4173796474933624, -0.41259104013442993, 0.11566542088985443);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (832, 832, 832);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (832, 2534, '2020-12-18 12:29:06.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (832, x'5FDCA092CDBB4F1C4133829B', 832, 'ik_hand_l', 832, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382aa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (833, 0.03470313549041748, -0.7081836462020874, 0.0122586190700531, 0.7050682306289673);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (833, -0.014481276273727417, 0.001077957102097571, 0.9702127575874329);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (833, 833, 833);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (833, 2536, '2020-12-18 12:29:06.901000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (833, x'5FDCA092CDBB4F1C413382AA', 833, 'pelvis', 833, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382ac }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (834, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (834, -0.2884865999221802, -0.07026840001344681, 0.8776338696479797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (834, 834, 834);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (834, 2536, '2020-12-18 12:29:06.901000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (834, x'5FDCA092CDBB4F1C413382AC', 834, 'ik_hand_gun', 834, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382ad }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (835, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (835, 0.41856810450553894, -0.41242000460624695, 0.11489695310592651);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (835, 835, 835);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (835, 2536, '2020-12-18 12:29:06.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (835, x'5FDCA092CDBB4F1C413382AD', 835, 'ik_hand_l', 835, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382ae }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (836, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (836, -0.2892954647541046, -0.0708351880311966, 0.877467930316925);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (836, 836, 836);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (836, 2537, '2020-12-18 12:29:06.917000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (836, x'5FDCA092CDBB4F1C413382AE', 836, 'ik_hand_gun', 836, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382af }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (837, 0.0363595187664032, -0.7082815170288086, 0.013455778360366821, 0.704864501953125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (837, -0.01637321151793003, 8.386993431486189E-4, 0.970149576663971);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (837, 837, 837);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (837, 2538, '2020-12-18 12:29:06.934000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (837, x'5FDCA092CDBB4F1C413382AF', 837, 'pelvis', 837, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382b0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (838, -0.008595496416091919, 0.05391968786716461, 0.12012486159801483, 0.9912561178207397);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (838, 0.06194283440709114, -4.0531158873591266E-8, -4.76837147544984E-9);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (838, 838, 838);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (838, 2538, '2020-12-18 12:29:06.934000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (838, x'5FDCA092CDBB4F1C413382B0', 838, 'head', 838, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382b1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (839, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (839, -0.29010164737701416, -0.07143104076385498, 0.877303957939148);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (839, 839, 839);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (839, 2538, '2020-12-18 12:29:06.934000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (839, x'5FDCA092CDBB4F1C413382B1', 839, 'ik_hand_gun', 839, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca092cdbb4f1c413382b2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (840, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (840, 0.4198054373264313, -0.4120084047317505, 0.11383718997240067);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (840, 840, 840);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (840, 2538, '2020-12-18 12:29:06.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (840, x'5FDCA092CDBB4F1C413382B2', 840, 'ik_hand_l', 840, '2020-12-18 12:29:06.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382bf }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (841, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (841, -0.29097574949264526, -0.07218080013990402, 0.8771474957466125);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (841, 841, 841);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (841, 2539, '2020-12-18 12:29:06.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (841, x'5FDCA093CDBB4F1C413382BF', 841, 'ik_hand_gun', 841, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (842, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (842, 0.4205063283443451, -0.411783367395401, 0.11306866258382797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (842, 842, 842);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (842, 2539, '2020-12-18 12:29:06.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (842, x'5FDCA093CDBB4F1C413382C0', 842, 'ik_hand_l', 842, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (843, 0.03792762756347656, -0.7083796262741089, 0.01462399959564209, 0.7046600580215454);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (843, -0.018358303233981133, 6.132495473138988E-4, 0.9700626730918884);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (843, 843, 843);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (843, 2540, '2020-12-18 12:29:06.968000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (843, x'5FDCA093CDBB4F1C413382C1', 843, 'pelvis', 843, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (844, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (844, -0.29187527298927307, -0.07298188656568527, 0.8769925236701965);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (844, 844, 844);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (844, 2540, '2020-12-18 12:29:06.968000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (844, x'5FDCA093CDBB4F1C413382C2', 844, 'ik_hand_gun', 844, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (845, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (845, 0.42123526334762573, -0.41155585646629333, 0.11222728341817856);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (845, 845, 845);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (845, 2540, '2020-12-18 12:29:06.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (845, x'5FDCA093CDBB4F1C413382C3', 845, 'ik_hand_l', 845, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (846, -0.008392572402954102, -0.010142594575881958, -0.9999130964279175, -2.1034479141235352E-4);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (846, 4.77790808872669E-6, -4.291534239087014E-8, 0.07517420500516891);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (846, 846, 846);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (846, 2541, '2020-12-18 12:29:06.985000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (846, x'5FDCA093CDBB4F1C413382C4', 846, 'thigh_r', 846, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (847, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (847, -0.2927128076553345, -0.07376476377248764, 0.8767544627189636);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (847, 847, 847);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (847, 2541, '2020-12-18 12:29:06.985000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (847, x'5FDCA093CDBB4F1C413382C5', 847, 'ik_hand_gun', 847, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382c6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (848, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (848, 0.4220353662967682, -0.41134002804756165, 0.11126501113176346);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (848, 848, 848);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (848, 2541, '2020-12-18 12:29:06.985000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (848, x'5FDCA093CDBB4F1C413382C6', 848, 'ik_hand_l', 848, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (849, 0.03900066018104553, -0.7085672616958618, 0.01584455370903015, 0.7043862342834473);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (849, -0.02018073759973049, 2.339935308555141E-4, 0.9699189066886902);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (849, 849, 849);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (849, 2542, '2020-12-18 12:29:07.002000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (849, x'5FDCA093CDBB4F1C413382D3', 849, 'pelvis', 849, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (850, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (850, -0.29352694749832153, -0.07453759759664536, 0.8764925003051758);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (850, 850, 850);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (850, 2542, '2020-12-18 12:29:07.002000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (850, x'5FDCA093CDBB4F1C413382D4', 850, 'ik_hand_gun', 850, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (851, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (851, 0.4228522479534149, -0.4111289381980896, 0.11027174443006516);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (851, 851, 851);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (851, 2542, '2020-12-18 12:29:07.002000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (851, x'5FDCA093CDBB4F1C413382D5', 851, 'ik_hand_l', 851, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (852, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (852, -0.2941712439060211, -0.07532388716936111, 0.8763145208358765);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (852, 852, 852);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (852, 2543, '2020-12-18 12:29:07.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (852, x'5FDCA093CDBB4F1C413382D6', 852, 'ik_hand_gun', 852, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (853, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (853, 0.42370909452438354, -0.4110611379146576, 0.10905662924051285);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (853, 853, 853);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (853, 2543, '2020-12-18 12:29:07.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (853, x'5FDCA093CDBB4F1C413382D7', 853, 'ik_hand_l', 853, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (854, 0.03986838459968567, -0.7087068557739258, 0.016962766647338867, 0.7041711807250977);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (854, -0.02144416607916355, -1.1146545148221776E-4, 0.9697799682617188);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (854, 854, 854);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (854, 2544, '2020-12-18 12:29:07.035000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (854, x'5FDCA093CDBB4F1C413382D8', 854, 'pelvis', 854, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382d9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (855, 0.015319570899009705, 0.033458411693573, -0.15801513195037842, 0.986750602722168);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (855, 0.1357707530260086, 1.4305114426349519E-8, -3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (855, 855, 855);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (855, 2544, '2020-12-18 12:29:07.035000', 'spine_03');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (855, x'5FDCA093CDBB4F1C413382D9', 855, 'neck_01', 855, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382da }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (856, 0.08723071217536926, 0.016749322414398193, 0.07084329426288605, 0.9935246706008911);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (856, 0.4363507628440857, -3.814697180359872E-8, 3.814697180359872E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (856, 856, 856);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (856, 2544, '2020-12-18 12:29:07.035000', 'calf_r');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (856, x'5FDCA093CDBB4F1C413382DA', 856, 'foot_r', 856, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382db }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (857, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (857, -0.29479557275772095, -0.07614381611347198, 0.8761517405509949);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (857, 857, 857);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (857, 2544, '2020-12-18 12:29:07.035000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (857, x'5FDCA093CDBB4F1C413382DB', 857, 'ik_hand_gun', 857, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382dc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (858, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (858, 0.42460906505584717, -0.41102850437164307, 0.10773661732673645);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (858, 858, 858);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (858, 2544, '2020-12-18 12:29:07.035000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (858, x'5FDCA093CDBB4F1C413382DC', 858, 'ik_hand_l', 858, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382e2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (859, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (859, -0.2952341139316559, -0.07706668972969055, 0.8760654330253601);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (859, 859, 859);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (859, 2545, '2020-12-18 12:29:07.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (859, x'5FDCA093CDBB4F1C413382E2', 859, 'ik_hand_gun', 859, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382e3 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (860, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (860, 0.4255046248435974, -0.41104868054389954, 0.10636554658412933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (860, 860, 860);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (860, 2545, '2020-12-18 12:29:07.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (860, x'5FDCA093CDBB4F1C413382E3', 860, 'ik_hand_l', 860, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382e9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (861, 0.041170090436935425, -0.708770751953125, 0.01806509494781494, 0.7040045261383057);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (861, -0.022475125268101692, -3.63848201232031E-4, 0.9696748852729797);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (861, 861, 861);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (861, 2546, '2020-12-18 12:29:07.068000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (861, x'5FDCA093CDBB4F1C413382E9', 861, 'pelvis', 861, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382ea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (862, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (862, -0.29561516642570496, -0.0780133455991745, 0.8760021924972534);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (862, 862, 862);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (862, 2546, '2020-12-18 12:29:07.068000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (862, x'5FDCA093CDBB4F1C413382EA', 862, 'ik_hand_gun', 862, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382eb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (863, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (863, 0.42639267444610596, -0.41108450293540955, 0.1049889549612999);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (863, 863, 863);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (863, 2546, '2020-12-18 12:29:07.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (863, x'5FDCA093CDBB4F1C413382EB', 863, 'ik_hand_l', 863, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382ef }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (864, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (864, 0.42722076177597046, -0.4110713005065918, 0.10349962115287781);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (864, 864, 864);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (864, 2547, '2020-12-18 12:29:07.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (864, x'5FDCA093CDBB4F1C413382EF', 864, 'ik_hand_l', 864, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382fc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (865, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (865, -0.2960849106311798, -0.079896941781044, 0.8758861422538757);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (865, 865, 865);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (865, 2548, '2020-12-18 12:29:07.101000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (865, x'5FDCA093CDBB4F1C413382FC', 865, 'ik_hand_gun', 865, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382fd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (866, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (866, 0.4280235171318054, -0.41104403138160706, 0.10199117660522461);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (866, 866, 866);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (866, 2548, '2020-12-18 12:29:07.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (866, x'5FDCA093CDBB4F1C413382FD', 866, 'ik_hand_l', 866, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382fe }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (867, 0.04320108890533447, -0.708838701248169, 0.019327670335769653, 0.7037808895111084);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (867, -0.02378196455538273, -7.566857384517789E-4, 0.9695618152618408);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (867, 867, 867);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (867, 2549, '2020-12-18 12:29:07.118000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (867, x'5FDCA093CDBB4F1C413382FE', 867, 'pelvis', 867, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413382ff }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (868, 0.032017678022384644, 0.07889008522033691, 0.10089659690856934, 0.9912471175193787);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (868, 0.06194324791431427, 9.536742595628311E-8, 6.67572024326546E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (868, 868, 868);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (868, 2549, '2020-12-18 12:29:07.118000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (868, x'5FDCA093CDBB4F1C413382FF', 868, 'head', 868, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338300 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (869, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (869, 0.42892754077911377, -0.4111378490924835, 0.1003560870885849);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (869, 869, 869);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (869, 2549, '2020-12-18 12:29:07.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (869, x'5FDCA093CDBB4F1C41338300', 869, 'ik_hand_l', 869, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133830b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (870, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (870, -0.2965366542339325, -0.08172792196273804, 0.875797688961029);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (870, 870, 870);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (870, 2550, '2020-12-18 12:29:07.134000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (870, x'5FDCA093CDBB4F1C4133830B', 870, 'ik_hand_gun', 870, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133830c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (871, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (871, 0.4298180043697357, -0.41126173734664917, 0.09876140207052231);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (871, 871, 871);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (871, 2550, '2020-12-18 12:29:07.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (871, x'5FDCA093CDBB4F1C4133830C', 871, 'ik_hand_l', 871, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133830d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (872, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (872, 0.4308219850063324, -0.4114433526992798, 0.09720012545585632);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (872, 872, 872);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (872, 2551, '2020-12-18 12:29:07.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (872, x'5FDCA093CDBB4F1C4133830D', 872, 'ik_hand_l', 872, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133830e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (873, 0.04520872235298157, -0.708948016166687, 0.02069029211997986, 0.7035058736801147);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (873, -0.02488204650580883, -0.0011850738665089011, 0.9694254994392395);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (873, 873, 873);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (873, 2552, '2020-12-18 12:29:07.168000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (873, x'5FDCA093CDBB4F1C4133830E', 873, 'pelvis', 873, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133830f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (874, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (874, -0.29711276292800903, -0.08349290490150452, 0.8756311535835266);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (874, 874, 874);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (874, 2552, '2020-12-18 12:29:07.168000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (874, x'5FDCA093CDBB4F1C4133830F', 874, 'ik_hand_gun', 874, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338310 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (875, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (875, 0.4318621754646301, -0.4116426408290863, 0.09564731270074844);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (875, 875, 875);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (875, 2552, '2020-12-18 12:29:07.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (875, x'5FDCA093CDBB4F1C41338310', 875, 'ik_hand_l', 875, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133831c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (876, 0.07674163579940796, -0.0026875436305999756, -0.1412878781557083, 0.9869858622550964);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (876, 0.2796670198440552, -1.907348590179936E-8, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (876, 876, 876);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (876, 2553, '2020-12-18 12:29:07.184000', 'upperarm_l');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (876, x'5FDCA093CDBB4F1C4133831C', 876, 'lowerarm_l', 876, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133831d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (877, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (877, 0.4328845143318176, -0.41178569197654724, 0.09424581378698349);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (877, 877, 877);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (877, 2553, '2020-12-18 12:29:07.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (877, x'5FDCA093CDBB4F1C4133831D', 877, 'ik_hand_l', 877, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133831e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (878, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (878, -0.29771608114242554, -0.08522355556488037, 0.8754400610923767);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (878, 878, 878);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (878, 2554, '2020-12-18 12:29:07.201000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (878, x'5FDCA093CDBB4F1C4133831E', 878, 'ik_hand_gun', 878, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133831f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (879, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (879, 0.43387937545776367, -0.411909282207489, 0.09291814267635345);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (879, 879, 879);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (879, 2554, '2020-12-18 12:29:07.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (879, x'5FDCA093CDBB4F1C4133831F', 879, 'ik_hand_l', 879, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338320 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (880, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (880, 0.08590757846832275, 0.04339790344238281, 0.06949763745069504);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (880, 880, 880);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (880, 2555, '2020-12-18 12:29:07.218000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (880, x'5FDCA093CDBB4F1C41338320', 880, 'ik_foot_l', 880, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338321 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (881, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (881, 0.43486180901527405, -0.41196897625923157, 0.09170454740524292);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (881, 881, 881);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (881, 2555, '2020-12-18 12:29:07.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (881, x'5FDCA093CDBB4F1C41338321', 881, 'ik_hand_l', 881, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338328 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (882, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (882, -0.2979857325553894, -0.08683723211288452, 0.8752589821815491);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (882, 882, 882);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (882, 2556, '2020-12-18 12:29:07.234000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (882, x'5FDCA093CDBB4F1C41338328', 882, 'ik_hand_gun', 882, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338329 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (883, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (883, 0.4357990622520447, -0.41200780868530273, 0.09057604521512985);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (883, 883, 883);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (883, 2556, '2020-12-18 12:29:07.234000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (883, x'5FDCA093CDBB4F1C41338329', 883, 'ik_hand_l', 883, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338338 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (884, 0.04784044623374939, -0.7093656063079834, 0.02125820517539978, 0.7028937339782715);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (884, -0.02593192830681801, -0.0016888427780941129, 0.9692764282226562);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (884, 884, 884);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (884, 2557, '2020-12-18 12:29:07.251000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (884, x'5FDCA093CDBB4F1C41338338', 884, 'pelvis', 884, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338339 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (885, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (885, 0.4369368553161621, -0.41214847564697266, 0.08954349160194397);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (885, 885, 885);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (885, 2557, '2020-12-18 12:29:07.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (885, x'5FDCA093CDBB4F1C41338339', 885, 'ik_hand_l', 885, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133833a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (886, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (886, -0.2982358932495117, -0.0882987380027771, 0.8749417662620544);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (886, 886, 886);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (886, 2558, '2020-12-18 12:29:07.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (886, x'5FDCA093CDBB4F1C4133833A', 886, 'ik_hand_gun', 886, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133833b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (887, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (887, 0.4381663501262665, -0.41232606768608093, 0.08851860463619232);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (887, 887, 887);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (887, 2558, '2020-12-18 12:29:07.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (887, x'5FDCA093CDBB4F1C4133833B', 887, 'ik_hand_l', 887, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338345 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (888, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (888, 0.4391542673110962, -0.41244059801101685, 0.0878118947148323);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (888, 888, 888);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (888, 2559, '2020-12-18 12:29:07.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (888, x'5FDCA093CDBB4F1C41338345', 888, 'ik_hand_l', 888, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338346 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (889, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (889, -0.29874125123023987, -0.08978191018104553, 0.8745745420455933);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (889, 889, 889);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (889, 2560, '2020-12-18 12:29:07.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (889, x'5FDCA093CDBB4F1C41338346', 889, 'ik_hand_gun', 889, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338347 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (890, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (890, 0.440114825963974, -0.41254252195358276, 0.08716396242380142);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (890, 890, 890);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (890, 2560, '2020-12-18 12:29:07.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (890, x'5FDCA093CDBB4F1C41338347', 890, 'ik_hand_l', 890, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338348 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (891, 0.04973366856575012, -0.7099066972732544, 0.02336496114730835, 0.7021487355232239);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (891, -0.026351163163781166, -0.0027301025111228228, 0.9691100120544434);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (891, 891, 891);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (891, 2561, '2020-12-18 12:29:07.318000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (891, x'5FDCA093CDBB4F1C41338348', 891, 'pelvis', 891, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338352 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (892, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (892, -0.29912859201431274, -0.09093441069126129, 0.8740962743759155);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (892, 892, 892);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (892, 2562, '2020-12-18 12:29:07.334000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (892, x'5FDCA093CDBB4F1C41338352', 892, 'ik_hand_gun', 892, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338353 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (893, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (893, 0.4418293535709381, -0.4125802516937256, 0.08624856173992157);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (893, 893, 893);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (893, 2562, '2020-12-18 12:29:07.334000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (893, x'5FDCA093CDBB4F1C41338353', 893, 'ik_hand_l', 893, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338354 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (894, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (894, -0.29933658242225647, -0.0918390080332756, 0.8736205101013184);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (894, 894, 894);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (894, 2564, '2020-12-18 12:29:07.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (894, x'5FDCA093CDBB4F1C41338354', 894, 'ik_hand_gun', 894, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338355 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (895, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (895, 0.4436038136482239, -0.4126445949077606, 0.08575034141540527);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (895, 895, 895);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (895, 2564, '2020-12-18 12:29:07.368000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (895, x'5FDCA093CDBB4F1C41338355', 895, 'ik_hand_l', 895, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338358 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (896, 0.051969319581985474, -0.7105385065078735, 0.025780141353607178, 0.7012627124786377);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (896, -0.026388240978121758, -0.003992843441665173, 0.9689487218856812);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (896, 896, 896);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (896, 2565, '2020-12-18 12:29:07.384000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (896, x'5FDCA093CDBB4F1C41338358', 896, 'pelvis', 896, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133835b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (897, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (897, -0.29952433705329895, -0.092905692756176, 0.8732166886329651);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (897, 897, 897);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (897, 2566, '2020-12-18 12:29:07.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (897, x'5FDCA093CDBB4F1C4133835B', 897, 'ik_hand_gun', 897, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133835c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (898, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (898, 0.44522130489349365, -0.41270968317985535, 0.08537749946117401);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (898, 898, 898);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (898, 2566, '2020-12-18 12:29:07.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (898, x'5FDCA093CDBB4F1C4133835C', 898, 'ik_hand_l', 898, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338369 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (899, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (899, 0.08534247428178787, 0.0426940992474556, 0.07009803503751755);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (899, 899, 899);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (899, 2567, '2020-12-18 12:29:07.418000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (899, x'5FDCA093CDBB4F1C41338369', 899, 'ik_foot_l', 899, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133836a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (900, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (900, -0.29963770508766174, -0.09393695741891861, 0.8727728724479675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (900, 900, 900);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (900, 2568, '2020-12-18 12:29:07.434000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (900, x'5FDCA093CDBB4F1C4133836A', 900, 'ik_hand_gun', 900, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133836b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (901, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (901, 0.4467313289642334, -0.41260600090026855, 0.08535553514957428);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (901, 901, 901);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (901, 2568, '2020-12-18 12:29:07.434000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (901, x'5FDCA093CDBB4F1C4133836B', 901, 'ik_hand_l', 901, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338377 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (902, 0.05398571491241455, -0.7111971378326416, 0.027342528104782104, 0.7003828287124634);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (902, -0.02605491131544113, -0.005165331065654755, 0.9688338041305542);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (902, 902, 902);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (902, 2569, '2020-12-18 12:29:07.451000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (902, x'5FDCA093CDBB4F1C41338377', 902, 'pelvis', 902, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338378 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (903, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (903, -0.2997838854789734, -0.09483102709054947, 0.8723220825195312);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (903, 903, 903);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (903, 2570, '2020-12-18 12:29:07.468000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (903, x'5FDCA093CDBB4F1C41338378', 903, 'ik_hand_gun', 903, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338379 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (904, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (904, 0.4480656683444977, -0.4124622642993927, 0.08564338833093643);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (904, 904, 904);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (904, 2570, '2020-12-18 12:29:07.468000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (904, x'5FDCA093CDBB4F1C41338379', 904, 'ik_hand_l', 904, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338386 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (905, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (905, 0.4493344724178314, -0.4121079444885254, 0.08599395304918289);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (905, 905, 905);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (905, 2572, '2020-12-18 12:29:07.502000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (905, x'5FDCA093CDBB4F1C41338386', 905, 'ik_hand_l', 905, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338387 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (906, 0.05534440279006958, -0.7117970585823059, 0.027970731258392334, 0.6996423006057739);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (906, -0.02537437155842781, -0.006093904841691256, 0.9687425494194031);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (906, 906, 906);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (906, 2573, '2020-12-18 12:29:07.518000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (906, x'5FDCA093CDBB4F1C41338387', 906, 'pelvis', 906, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338388 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (907, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (907, -0.2997298836708069, -0.09603685140609741, 0.871660053730011);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (907, 907, 907);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (907, 2573, '2020-12-18 12:29:07.518000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (907, x'5FDCA093CDBB4F1C41338388', 907, 'ik_hand_gun', 907, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338393 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (908, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (908, 0.4503467381000519, -0.4117821753025055, 0.08615551888942719);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (908, 908, 908);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (908, 2574, '2020-12-18 12:29:07.534000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (908, x'5FDCA093CDBB4F1C41338393', 908, 'ik_hand_l', 908, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338394 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (909, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (909, -0.2994146943092346, -0.09712693840265274, 0.8710750341415405);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (909, 909, 909);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (909, 2576, '2020-12-18 12:29:07.568000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (909, x'5FDCA093CDBB4F1C41338394', 909, 'ik_hand_gun', 909, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383a0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (910, 0.056042104959487915, -0.7120331525802612, 0.027770042419433594, 0.6993545889854431);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (910, -0.02442893758416176, -0.0070619224570691586, 0.9685482382774353);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (910, 910, 910);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (910, 2577, '2020-12-18 12:29:07.584000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (910, x'5FDCA093CDBB4F1C413383A0', 910, 'pelvis', 910, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383a1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (911, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (911, 0.45154938101768494, -0.41151249408721924, 0.08627293258905411);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (911, 911, 911);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (911, 2577, '2020-12-18 12:29:07.584000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (911, x'5FDCA093CDBB4F1C413383A1', 911, 'ik_hand_l', 911, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383a2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (912, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (912, -0.298678457736969, -0.0982460156083107, 0.8705215454101562);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (912, 912, 912);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (912, 2579, '2020-12-18 12:29:07.618000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (912, x'5FDCA093CDBB4F1C413383A2', 912, 'ik_hand_gun', 912, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383a8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (913, 0.05590921640396118, -0.7120359539985657, 0.027310311794281006, 0.6993802785873413);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (913, -0.023477323353290558, -0.007969588972628117, 0.9683384299278259);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (913, 913, 913);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (913, 2580, '2020-12-18 12:29:07.634000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (913, x'5FDCA093CDBB4F1C413383A8', 913, 'pelvis', 913, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383ab }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (914, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (914, -0.29805782437324524, -0.09901302307844162, 0.8701183795928955);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (914, 914, 914);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (914, 2581, '2020-12-18 12:29:07.651000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (914, x'5FDCA093CDBB4F1C413383AB', 914, 'ik_hand_gun', 914, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383ac }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (915, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (915, 0.45261016488075256, -0.41097292304039, 0.08651665598154068);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (915, 915, 915);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (915, 2581, '2020-12-18 12:29:07.651000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (915, x'5FDCA093CDBB4F1C413383AC', 915, 'ik_hand_l', 915, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383b9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (916, 0.05591088533401489, -0.7119434475898743, 0.026952296495437622, 0.6994882822036743);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (916, -0.02276672050356865, -0.008696215227246284, 0.9682084321975708);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (916, 916, 916);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (916, 2582, '2020-12-18 12:29:07.668000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (916, x'5FDCA093CDBB4F1C413383B9', 916, 'pelvis', 916, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383c8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (917, 0.0558563768863678, -0.7119178771972656, 0.026775985956192017, 0.6995253562927246);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (917, -0.02201751433312893, -0.009371948428452015, 0.9680963158607483);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (917, 917, 917);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (917, 2584, '2020-12-18 12:29:07.701000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (917, x'5FDCA093CDBB4F1C413383C8', 917, 'pelvis', 917, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383c9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (918, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (918, -0.2972036302089691, -0.09990787506103516, 0.8695430755615234);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (918, 918, 918);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (918, 2584, '2020-12-18 12:29:07.701000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (918, x'5FDCA093CDBB4F1C413383C9', 918, 'ik_hand_gun', 918, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383ca }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (919, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (919, 0.4532092213630676, -0.4104114770889282, 0.08749847859144211);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (919, 919, 919);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (919, 2585, '2020-12-18 12:29:07.718000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (919, x'5FDCA093CDBB4F1C413383CA', 919, 'ik_hand_l', 919, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383cb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (920, 0.0556376576423645, -0.7119438052177429, 0.026702582836151123, 0.6995193362236023);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (920, -0.02122039534151554, -0.009976119734346867, 0.9680118560791016);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (920, 920, 920);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (920, 2586, '2020-12-18 12:29:07.734000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (920, x'5FDCA093CDBB4F1C413383CB', 920, 'pelvis', 920, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383d6 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (921, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (921, -0.2960625886917114, -0.100056953728199, 0.8690106868743896);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (921, 921, 921);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (921, 2587, '2020-12-18 12:29:07.751000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (921, x'5FDCA093CDBB4F1C413383D6', 921, 'ik_hand_gun', 921, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383d8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (922, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (922, 0.45317938923835754, -0.4099920988082886, 0.08845678716897964);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (922, 922, 922);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (922, 2587, '2020-12-18 12:29:07.751000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (922, x'5FDCA093CDBB4F1C413383D8', 922, 'ik_hand_l', 922, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383d9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (923, 0.055185467004776, -0.7119688987731934, 0.026461303234100342, 0.6995387673377991);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (923, -0.020373530685901642, -0.010606154799461365, 0.9679380655288696);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (923, 923, 923);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (923, 2588, '2020-12-18 12:29:07.768000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (923, x'5FDCA093CDBB4F1C413383D9', 923, 'pelvis', 923, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383da }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (924, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (924, -0.2949603497982025, -0.10007470846176147, 0.8687140941619873);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (924, 924, 924);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (924, 2589, '2020-12-18 12:29:07.785000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (924, x'5FDCA093CDBB4F1C413383DA', 924, 'ik_hand_gun', 924, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383db }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (925, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (925, 0.4528925120830536, -0.40951022505760193, 0.08973155915737152);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (925, 925, 925);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (925, 2589, '2020-12-18 12:29:07.785000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (925, x'5FDCA093CDBB4F1C413383DB', 925, 'ik_hand_l', 925, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383e8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (926, 0.05447766184806824, -0.7119306325912476, 0.025854676961898804, 0.6996557712554932);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (926, -0.019484706223011017, -0.01109519973397255, 0.9678764939308167);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (926, 926, 926);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (926, 2590, '2020-12-18 12:29:07.802000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (926, x'5FDCA093CDBB4F1C413383E8', 926, 'pelvis', 926, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383e9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (927, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (927, -0.29360681772232056, -0.09981255978345871, 0.8684452772140503);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (927, 927, 927);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (927, 2591, '2020-12-18 12:29:07.818000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (927, x'5FDCA093CDBB4F1C413383E9', 927, 'ik_hand_gun', 927, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383ea }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (928, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (928, 0.45226526260375977, -0.4089508354663849, 0.09114134311676025);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (928, 928, 928);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (928, 2591, '2020-12-18 12:29:07.818000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (928, x'5FDCA093CDBB4F1C413383EA', 928, 'ik_hand_l', 928, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383eb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (929, 0.05364808440208435, -0.7118328809738159, 0.025110632181167603, 0.6998463869094849);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (929, -0.018555982038378716, -0.01148658711463213, 0.967820942401886);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (929, 929, 929);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (929, 2592, '2020-12-18 12:29:07.835000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (929, x'5FDCA093CDBB4F1C413383EB', 929, 'pelvis', 929, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383f9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (930, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (930, -0.2922423779964447, -0.09931163489818573, 0.8682060837745667);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (930, 930, 930);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (930, 2593, '2020-12-18 12:29:07.851000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (930, x'5FDCA093CDBB4F1C413383F9', 930, 'ik_hand_gun', 930, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383fa }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (931, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (931, 0.4512847661972046, -0.408359557390213, 0.09278471022844315);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (931, 931, 931);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (931, 2593, '2020-12-18 12:29:07.851000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (931, x'5FDCA093CDBB4F1C413383FA', 931, 'ik_hand_l', 931, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383fb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (932, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (932, 0.4507558345794678, -0.4080880880355835, 0.09362232685089111);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (932, 932, 932);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (932, 2594, '2020-12-18 12:29:07.868000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (932, x'5FDCA093CDBB4F1C413383FB', 932, 'ik_hand_l', 932, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383fc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (933, 0.05255964398384094, -0.7116957902908325, 0.024237453937530518, 0.7000992298126221);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (933, -0.01712592877447605, -0.012041245587170124, 0.967738926410675);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (933, 933, 933);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (933, 2595, '2020-12-18 12:29:07.884000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (933, x'5FDCA093CDBB4F1C413383FC', 933, 'pelvis', 933, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383fd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (934, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (934, -0.2908139228820801, -0.09861040115356445, 0.867954671382904);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (934, 934, 934);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (934, 2595, '2020-12-18 12:29:07.884000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (934, x'5FDCA093CDBB4F1C413383FD', 934, 'ik_hand_gun', 934, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c413383fe }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (935, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (935, 0.4501357972621918, -0.4078424274921417, 0.09474918246269226);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (935, 935, 935);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (935, 2595, '2020-12-18 12:29:07.884000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (935, x'5FDCA093CDBB4F1C413383FE', 935, 'ik_hand_l', 935, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133840a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (936, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (936, 0.449497789144516, -0.4076087474822998, 0.09594688564538956);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (936, 936, 936);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (936, 2596, '2020-12-18 12:29:07.901000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (936, x'5FDCA093CDBB4F1C4133840A', 936, 'ik_hand_l', 936, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133840b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (937, 0.05185475945472717, -0.711580753326416, 0.02394777536392212, 0.700278639793396);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (937, -0.016141431406140327, -0.012544021010398865, 0.9676637053489685);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (937, 937, 937);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (937, 2597, '2020-12-18 12:29:07.918000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (937, x'5FDCA093CDBB4F1C4133840B', 937, 'pelvis', 937, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133840c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (938, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (938, -0.2893829047679901, -0.09768632799386978, 0.8677182793617249);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (938, 938, 938);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (938, 2597, '2020-12-18 12:29:07.918000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (938, x'5FDCA093CDBB4F1C4133840C', 938, 'ik_hand_gun', 938, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133840d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (939, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (939, 0.4486418068408966, -0.4072630703449249, 0.09709637612104416);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (939, 939, 939);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (939, 2597, '2020-12-18 12:29:07.918000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (939, x'5FDCA093CDBB4F1C4133840D', 939, 'ik_hand_l', 939, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133840f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (940, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (940, 0.44773972034454346, -0.4068918228149414, 0.09820818901062012);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (940, 940, 940);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (940, 2598, '2020-12-18 12:29:07.934000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (940, x'5FDCA093CDBB4F1C4133840F', 940, 'ik_hand_l', 940, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338416 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (941, 0.05087488889694214, -0.7114377021789551, 0.022960424423217773, 0.7005289196968079);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (941, -0.015135571360588074, -0.012799302116036415, 0.9676240086555481);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (941, 941, 941);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (941, 2599, '2020-12-18 12:29:07.951000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (941, x'5FDCA093CDBB4F1C41338416', 941, 'pelvis', 941, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338417 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (942, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (942, -0.2880527675151825, -0.09668146073818207, 0.8676325678825378);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (942, 942, 942);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (942, 2599, '2020-12-18 12:29:07.951000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (942, x'5FDCA093CDBB4F1C41338417', 942, 'ik_hand_gun', 942, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338418 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (943, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (943, 0.4467821717262268, -0.4065730571746826, 0.09950382262468338);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (943, 943, 943);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (943, 2599, '2020-12-18 12:29:07.951000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (943, x'5FDCA093CDBB4F1C41338418', 943, 'ik_hand_l', 943, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c4133841b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (944, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (944, 0.44580304622650146, -0.4062676429748535, 0.10085993260145187);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (944, 944, 944);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (944, 2600, '2020-12-18 12:29:07.968000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (944, x'5FDCA093CDBB4F1C4133841B', 944, 'ik_hand_l', 944, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338421 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (945, 0.04973864555358887, -0.7112619280815125, 0.02172181010246277, 0.7008283138275146);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (945, -0.014104383997619152, -0.0129450224339962, 0.9675952196121216);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (945, 945, 945);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (945, 2601, '2020-12-18 12:29:07.984000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (945, x'5FDCA093CDBB4F1C41338421', 945, 'pelvis', 945, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338422 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (946, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (946, -0.2868371903896332, -0.09558328241109848, 0.8676339387893677);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (946, 946, 946);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (946, 2601, '2020-12-18 12:29:07.984000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (946, x'5FDCA093CDBB4F1C41338422', 946, 'ik_hand_gun', 946, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca093cdbb4f1c41338423 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (947, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (947, 0.44475775957107544, -0.4059150218963623, 0.10222780704498291);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (947, 947, 947);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (947, 2601, '2020-12-18 12:29:07.984000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (947, x'5FDCA093CDBB4F1C41338423', 947, 'ik_hand_l', 947, '2020-12-18 12:29:07.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133842a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (948, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (948, 0.4436975121498108, -0.40555059909820557, 0.10359340161085129);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (948, 948, 948);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (948, 2602, '2020-12-18 12:29:08.001000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (948, x'5FDCA094CDBB4F1C4133842A', 948, 'ik_hand_l', 948, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133842f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (949, 0.04861021041870117, -0.711076021194458, 0.020497649908065796, 0.7011328935623169);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (949, -0.01307044830173254, -0.013042830862104893, 0.9675809144973755);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (949, 949, 949);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (949, 2603, '2020-12-18 12:29:08.018000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (949, x'5FDCA094CDBB4F1C4133842F', 949, 'pelvis', 949, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338430 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (950, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (950, -0.2858538329601288, -0.09440530836582184, 0.8676440715789795);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (950, 950, 950);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (950, 2603, '2020-12-18 12:29:08.018000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (950, x'5FDCA094CDBB4F1C41338430', 950, 'ik_hand_gun', 950, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338431 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (951, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (951, 0.4426182508468628, -0.4053378999233246, 0.10489878058433533);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (951, 951, 951);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (951, 2603, '2020-12-18 12:29:08.018000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (951, x'5FDCA094CDBB4F1C41338431', 951, 'ik_hand_l', 951, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338434 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (952, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (952, 0.44153180718421936, -0.40517038106918335, 0.10618826746940613);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (952, 952, 952);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (952, 2604, '2020-12-18 12:29:08.034000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (952, x'5FDCA094CDBB4F1C41338434', 952, 'ik_hand_l', 952, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133843b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (953, 0.047385215759277344, -0.7108533978462219, 0.01927807927131653, 0.7014771699905396);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (953, -0.01202926505357027, -0.013110275380313396, 0.9675742387771606);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (953, 953, 953);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (953, 2605, '2020-12-18 12:29:08.051000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (953, x'5FDCA094CDBB4F1C4133843B', 953, 'pelvis', 953, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133843c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (954, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (954, -0.28514453768730164, -0.09310100227594376, 0.8677273392677307);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (954, 954, 954);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (954, 2605, '2020-12-18 12:29:08.051000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (954, x'5FDCA094CDBB4F1C4133843C', 954, 'ik_hand_gun', 954, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133843d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (955, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (955, 0.44052061438560486, -0.4050526022911072, 0.10750231146812439);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (955, 955, 955);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (955, 2605, '2020-12-18 12:29:08.051000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (955, x'5FDCA094CDBB4F1C4133843D', 955, 'ik_hand_l', 955, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338441 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (956, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (956, 0.4395318925380707, -0.4049500524997711, 0.10882443189620972);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (956, 956, 956);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (956, 2606, '2020-12-18 12:29:08.068000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (956, x'5FDCA094CDBB4F1C41338441', 956, 'ik_hand_l', 956, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338447 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (957, 0.045949697494506836, -0.710587739944458, 0.017979055643081665, 0.7018761038780212);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (957, -0.010982893407344818, -0.013148345984518528, 0.9675725102424622);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (957, 957, 957);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (957, 2607, '2020-12-18 12:29:08.084000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (957, x'5FDCA094CDBB4F1C41338447', 957, 'pelvis', 957, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338448 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (958, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (958, -0.2843543589115143, -0.09169282764196396, 0.8678867816925049);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (958, 958, 958);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (958, 2607, '2020-12-18 12:29:08.084000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (958, x'5FDCA094CDBB4F1C41338448', 958, 'ik_hand_gun', 958, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338449 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (959, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (959, 0.43855029344558716, -0.404895156621933, 0.11009292304515839);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (959, 959, 959);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (959, 2607, '2020-12-18 12:29:08.084000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (959, x'5FDCA094CDBB4F1C41338449', 959, 'ik_hand_l', 959, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338451 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (960, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (960, 0.43757009506225586, -0.4048548936843872, 0.11134616285562515);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (960, 960, 960);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (960, 2608, '2020-12-18 12:29:08.101000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (960, x'5FDCA094CDBB4F1C41338451', 960, 'ik_hand_l', 960, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338455 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (961, 0.044330209493637085, -0.7103210091590881, 0.01664215326309204, 0.7022832632064819);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (961, -0.009943312034010887, -0.013126220554113388, 0.9675835371017456);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (961, 961, 961);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (961, 2609, '2020-12-18 12:29:08.118000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (961, x'5FDCA094CDBB4F1C41338455', 961, 'pelvis', 961, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338456 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (962, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (962, -0.2836932837963104, -0.09023523330688477, 0.8681358098983765);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (962, 962, 962);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (962, 2609, '2020-12-18 12:29:08.118000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (962, x'5FDCA094CDBB4F1C41338456', 962, 'ik_hand_gun', 962, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338457 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (963, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (963, 0.4365901052951813, -0.4048852324485779, 0.11263357847929001);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (963, 963, 963);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (963, 2609, '2020-12-18 12:29:08.118000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (963, x'5FDCA094CDBB4F1C41338457', 963, 'ik_hand_l', 963, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133845c }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (964, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (964, 0.4356062114238739, -0.4049365520477295, 0.11393630504608154);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (964, 964, 964);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (964, 2610, '2020-12-18 12:29:08.134000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (964, x'5FDCA094CDBB4F1C4133845C', 964, 'ik_hand_l', 964, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338465 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (965, 0.04269269108772278, -0.7100627422332764, 0.015243083238601685, 0.7026773691177368);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (965, -0.008907622657716274, -0.012985610403120518, 0.9676184058189392);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (965, 965, 965);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (965, 2611, '2020-12-18 12:29:08.151000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (965, x'5FDCA094CDBB4F1C41338465', 965, 'pelvis', 965, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338466 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (966, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (966, -0.2832237482070923, -0.08858972042798996, 0.868427574634552);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (966, 966, 966);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (966, 2611, '2020-12-18 12:29:08.151000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (966, x'5FDCA094CDBB4F1C41338466', 966, 'ik_hand_gun', 966, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338467 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (967, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (967, 0.4346114993095398, -0.4050600230693817, 0.11514409631490707);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (967, 967, 967);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (967, 2611, '2020-12-18 12:29:08.151000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (967, x'5FDCA094CDBB4F1C41338467', 967, 'ik_hand_l', 967, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133846a }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (968, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (968, 0.4336409270763397, -0.4052019715309143, 0.11629046499729156);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (968, 968, 968);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (968, 2612, '2020-12-18 12:29:08.168000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (968, x'5FDCA094CDBB4F1C4133846A', 968, 'ik_hand_l', 968, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338470 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (969, 0.041534483432769775, -0.7096695303916931, 0.013686835765838623, 0.7031760215759277);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (969, -0.007895048707723618, -0.012668151408433914, 0.9676884412765503);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (969, 969, 969);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (969, 2613, '2020-12-18 12:29:08.184000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (969, x'5FDCA094CDBB4F1C41338470', 969, 'pelvis', 969, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338471 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (970, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (970, -0.2825489342212677, -0.08697078377008438, 0.8689129948616028);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (970, 970, 970);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (970, 2613, '2020-12-18 12:29:08.184000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (970, x'5FDCA094CDBB4F1C41338471', 970, 'ik_hand_gun', 970, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338472 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (971, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (971, 0.4326431453227997, -0.40546557307243347, 0.1173628568649292);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (971, 971, 971);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (971, 2613, '2020-12-18 12:29:08.184000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (971, x'5FDCA094CDBB4F1C41338472', 971, 'ik_hand_l', 971, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338476 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (972, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (972, 0.43162059783935547, -0.4057679772377014, 0.11843233555555344);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (972, 972, 972);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (972, 2614, '2020-12-18 12:29:08.201000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (972, x'5FDCA094CDBB4F1C41338476', 972, 'ik_hand_l', 972, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133847e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (973, 0.04045897722244263, -0.7091749310493469, 0.011957228183746338, 0.7037689089775085);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (973, -0.006876982748508453, -0.012248381040990353, 0.9677708745002747);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (973, 973, 973);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (973, 2615, '2020-12-18 12:29:08.218000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (973, x'5FDCA094CDBB4F1C4133847E', 973, 'pelvis', 973, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133847f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (974, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (974, -0.28161129355430603, -0.08526048809289932, 0.8695835471153259);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (974, 974, 974);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (974, 2615, '2020-12-18 12:29:08.218000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (974, x'5FDCA094CDBB4F1C4133847F', 974, 'ik_hand_gun', 974, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338480 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (975, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (975, 0.43050146102905273, -0.4060167968273163, 0.11951876431703568);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (975, 975, 975);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (975, 2615, '2020-12-18 12:29:08.218000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (975, x'5FDCA094CDBB4F1C41338480', 975, 'ik_hand_l', 975, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338487 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (976, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (976, -0.2810760736465454, -0.0842619463801384, 0.8699178695678711);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (976, 976, 976);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (976, 2616, '2020-12-18 12:29:08.235000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (976, x'5FDCA094CDBB4F1C41338487', 976, 'ik_hand_gun', 976, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338488 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (977, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (977, 0.429385244846344, -0.40624332427978516, 0.12058013677597046);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (977, 977, 977);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (977, 2616, '2020-12-18 12:29:08.235000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (977, x'5FDCA094CDBB4F1C41338488', 977, 'ik_hand_l', 977, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133848b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (978, 0.03879225254058838, -0.7088544368743896, 0.010480433702468872, 0.7042090892791748);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (978, -0.005916593596339226, -0.011897278018295765, 0.9677813649177551);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (978, 978, 978);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (978, 2617, '2020-12-18 12:29:08.251000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (978, x'5FDCA094CDBB4F1C4133848B', 978, 'pelvis', 978, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133848d }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (979, 0.0012058913707733154, 0.04306298494338989, 0.08429349958896637, 0.9955090284347534);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (979, 0.061942994594573975, -4.5299529460862686E-8, 4.291534239087014E-8);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (979, 979, 979);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (979, 2617, '2020-12-18 12:29:08.251000', 'neck_01');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (979, x'5FDCA094CDBB4F1C4133848D', 979, 'head', 979, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133848e }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (980, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (980, 0.42854517698287964, -0.4066356420516968, 0.12146265059709549);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (980, 980, 980);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (980, 2617, '2020-12-18 12:29:08.251000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (980, x'5FDCA094CDBB4F1C4133848E', 980, 'ik_hand_l', 980, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338494 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (981, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (981, -0.28057825565338135, -0.08244996517896652, 0.8703866600990295);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (981, 981, 981);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (981, 2618, '2020-12-18 12:29:08.268000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (981, x'5FDCA094CDBB4F1C41338494', 981, 'ik_hand_gun', 981, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c41338495 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (982, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (982, 0.42775779962539673, -0.4070824384689331, 0.12231957912445068);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (982, 982, 982);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (982, 2618, '2020-12-18 12:29:08.268000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (982, x'5FDCA094CDBB4F1C41338495', 982, 'ik_hand_l', 982, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133849b }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (983, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (983, 0.42700162529945374, -0.4074527323246002, 0.12331309169530869);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (983, 983, 983);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (983, 2619, '2020-12-18 12:29:08.284000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (983, x'5FDCA094CDBB4F1C4133849B', 983, 'ik_hand_l', 983, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c4133849f }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (984, 0.036043912172317505, -0.7082899808883667, 0.008647114038467407, 0.7049475908279419);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (984, -0.004519499838352203, -0.01144691277295351, 0.967753529548645);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (984, 984, 984);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (984, 2620, '2020-12-18 12:29:08.301000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (984, x'5FDCA094CDBB4F1C4133849F', 984, 'pelvis', 984, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384a0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (985, 5.662441253662109E-7, -0.7071071863174438, -4.470348358154297E-7, 0.7071062326431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (985, 0.08545630425214767, 0.04343537241220474, 0.06932464241981506);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (985, 985, 985);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (985, 2620, '2020-12-18 12:29:08.301000', 'ik_foot_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (985, x'5FDCA094CDBB4F1C413384A0', 985, 'ik_foot_l', 985, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384a1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (986, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (986, -0.2802979648113251, -0.08049488067626953, 0.8706486821174622);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (986, 986, 986);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (986, 2620, '2020-12-18 12:29:08.301000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (986, x'5FDCA094CDBB4F1C413384A1', 986, 'ik_hand_gun', 986, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384a2 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (987, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (987, 0.42623984813690186, -0.4078085124492645, 0.12436529994010925);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (987, 987, 987);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (987, 2620, '2020-12-18 12:29:08.301000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (987, x'5FDCA094CDBB4F1C413384A2', 987, 'ik_hand_l', 987, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384a8 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (988, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (988, 0.4255044460296631, -0.40819305181503296, 0.12548044323921204);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (988, 988, 988);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (988, 2621, '2020-12-18 12:29:08.318000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (988, x'5FDCA094CDBB4F1C413384A8', 988, 'ik_hand_l', 988, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384af }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (989, 0.03484839200973511, -0.7078353762626648, 0.007489830255508423, 0.7054773569107056);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (989, -0.0036332702729851007, -0.010939482599496841, 0.9678201675415039);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (989, 989, 989);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (989, 2622, '2020-12-18 12:29:08.334000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (989, x'5FDCA094CDBB4F1C413384AF', 989, 'pelvis', 989, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384b0 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (990, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (990, -0.27999264001846313, -0.07863184064626694, 0.8711268901824951);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (990, 990, 990);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (990, 2622, '2020-12-18 12:29:08.334000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (990, x'5FDCA094CDBB4F1C413384B0', 990, 'ik_hand_gun', 990, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384b1 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (991, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (991, 0.42477545142173767, -0.4085870385169983, 0.12661714851856232);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (991, 991, 991);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (991, 2622, '2020-12-18 12:29:08.334000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (991, x'5FDCA094CDBB4F1C413384B1', 991, 'ik_hand_l', 991, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384b4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (992, 0.01707276701927185, 0.007131651043891907, 0.999828577041626, -1.7255544662475586E-5);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (992, 4.804134277947014E-6, 3.814697180359872E-8, 0.07517418265342712);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (992, 992, 992);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (992, 2623, '2020-12-18 12:29:08.351000', 'pelvis');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (992, x'5FDCA094CDBB4F1C413384B4', 992, 'thigh_r', 992, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384b5 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (993, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (993, 0.42396968603134155, -0.40890488028526306, 0.1274312138557434);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (993, 993, 993);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (993, 2623, '2020-12-18 12:29:08.351000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (993, x'5FDCA094CDBB4F1C413384B5', 993, 'ik_hand_l', 993, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384bb }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (994, 0.03378739953041077, -0.707522988319397, 0.006576120853424072, 0.7058513164520264);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (994, -0.002808532677590847, -0.010368650779128075, 0.967893660068512);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (994, 994, 994);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (994, 2624, '2020-12-18 12:29:08.368000', 'root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (994, x'5FDCA094CDBB4F1C413384BB', 994, 'pelvis', 994, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384bc }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (995, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (995, -0.27945461869239807, -0.0767601951956749, 0.8715949058532715);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (995, 995, 995);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (995, 2624, '2020-12-18 12:29:08.368000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (995, x'5FDCA094CDBB4F1C413384BC', 995, 'ik_hand_gun', 995, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384bd }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (996, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (996, 0.4231410622596741, -0.4092002809047699, 0.12814967334270477);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (996, 996, 996);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (996, 2624, '2020-12-18 12:29:08.368000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (996, x'5FDCA094CDBB4F1C413384BD', 996, 'ik_hand_l', 996, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384c4 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (997, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (997, 0.4223555326461792, -0.4093981087207794, 0.1290934979915619);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (997, 997, 997);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (997, 2625, '2020-12-18 12:29:08.384000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (997, x'5FDCA094CDBB4F1C413384C4', 997, 'ik_hand_l', 997, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384c7 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (998, 0.579227864742279, -0.12278766930103302, 0.40557998418807983, 0.6963640451431274);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (998, -0.27900639176368713, -0.07491792738437653, 0.8720212578773499);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (998, 998, 998);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (998, 2626, '2020-12-18 12:29:08.401000', 'ik_hand_root');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (998, x'5FDCA094CDBB4F1C413384C7', 998, 'ik_hand_gun', 998, '2020-12-18 12:29:08.000000', 'tf');


-- { _id: 5fdca094cdbb4f1c413384c9 }
INSERT INTO `5fdca422f5f14142fe678936_tf_transform_rotation` (`ID`, `x`, `y`, `z`, `w`)
    VALUES
        (999, 0.6408560872077942, -0.7071067690849304, 0.29883620142936707, 0.0);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform_translation` (`ID`, `x`, `y`, `z`)
    VALUES
        (999, 0.4215880036354065, -0.4095655381679535, 0.13009901344776154);

INSERT INTO `5fdca422f5f14142fe678936_tf_transform` (`ID`, `translation_fk`, `rotation_fk`)
    VALUES
        (999, 999, 999);

INSERT INTO `5fdca422f5f14142fe678936_tf_header` (`ID`, `seq`, `stamp`, `frame_id`)
    VALUES
        (999, 2626, '2020-12-18 12:29:08.401000', 'ik_hand_gun');

INSERT INTO `5fdca422f5f14142fe678936_tf` (`ID`, `_id`, `header_fk`, `child_frame_id`, `transform_fk`, `__recorded`, `__topic`)
    VALUES
        (999, x'5FDCA094CDBB4F1C413384C9', 999, 'ik_hand_l', 999, '2020-12-18 12:29:08.000000', 'tf');

