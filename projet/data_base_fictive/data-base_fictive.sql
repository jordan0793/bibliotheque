DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `id_I` mediumint,
  `nom_I` varchar(255) default NULL,
  `prenom_I` varchar(255) default NULL,
  `date_emprunt` varchar(255),
  `addresse_I` varchar(255) default NULL,
  `codepostal_I` varchar(10) default NULL,
  `ville_I` varchar(255),
  `tel_I` varchar(100) default NULL,
  `email_I` varchar(255) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (1,"Baxter","Ria","07 16 2024","P.O. Box 773, 2215 Vel Road","20608","Mandai","01 48 64 83 21","enim.diam@protonmail.ca"),
  (2,"Porter","Phelan","29 00 2023","P.O. Box 751, 6313 Ut St.","71622-64416","Notre-Dame-de-la-Salette","07 03 25 38 53","id.magna@google.com"),
  (3,"Melton","Victoria","27 50 2022","154-6602 Fringilla Avenue","45-823","Hà Nội","03 63 52 60 17","donec.est@outlook.com"),
  (4,"Dotson","Felicia","07 51 2022","477-5293 Commodo Ave","99501-769","St. Andrä","06 48 64 36 27","enim.consequat@protonmail.org"),
  (5,"Galloway","Nicholas","14 52 2022","9946 Ac, St.","68664","Gimpo","08 95 19 56 12","pede.malesuada.vel@outlook.net"),
  (6,"Hester","Philip","25 23 2023","6528 Eget St.","6335","Pamplona","04 84 41 96 84","nunc.laoreet.lectus@hotmail.ca"),
  (7,"Ayers","Cameron","16 34 2022","818-5613 Odio. Avenue","2273 MH","Port Nolloth","03 25 28 98 86","quis.diam@icloud.com"),
  (8,"Clements","Teagan","16 00 2023","284-710 Taciti St.","5729","Odessa","07 48 35 66 53","dictum@hotmail.com"),
  (9,"Higgins","Teagan","07 19 2023","P.O. Box 642, 1403 Urna. St.","622762","Welkom","01 08 37 12 37","suspendisse.commodo.tincidunt@hotmail.org"),
  (10,"Albert","Dillon","29 25 2023","Ap #648-7775 Cursus. Ave","IY6L 9JK","Hudiksvall","03 37 64 47 07","fusce.feugiat@icloud.edu");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (11,"Fitzpatrick","Hunter","12 46 2023","Ap #871-7415 Faucibus Rd.","192680","Empangeni","02 24 76 17 32","in@yahoo.org"),
  (12,"Flowers","Cyrus","15 27 2023","1832 Interdum. St.","M2C 3J3","Puerto Nariño","09 12 88 27 38","mi@outlook.ca"),
  (13,"Roth","Benedict","28 30 2023","988-8989 Mi Avenue","956456","Brevik","03 18 18 97 39","mauris.ut.quam@icloud.org"),
  (14,"Wade","Halla","19 48 2023","166-2805 Velit. St.","737537","Dublin","04 37 15 66 96","sagittis@google.ca"),
  (15,"Meyers","Sean","28 01 2022","Ap #294-8689 Leo. Avenue","3767","Motala","05 52 22 71 17","arcu.vestibulum.ut@outlook.org"),
  (16,"Hughes","Chantale","14 40 2022","493-8662 Donec Ave","17531","Morhet","03 17 74 37 13","a.mi@icloud.org"),
  (17,"Kent","Cameron","27 33 2023","Ap #271-3104 Sodales Ave","866346","Kohima","05 72 65 24 43","nulla.eget@hotmail.edu"),
  (18,"Perry","Drake","27 05 2023","Ap #868-6643 Orci Avenue","24692","Tarnów","08 03 45 32 23","id.libero.donec@protonmail.couk"),
  (19,"Strickland","Shaeleigh","17 00 2023","499-3707 Ante Rd.","31711","Sengkang","06 47 99 77 28","dictum.placerat.augue@outlook.net"),
  (20,"Estes","Barrett","19 10 2023","Ap #417-7626 In St.","7699","Ciudad Valles","08 73 95 04 54","facilisis@yahoo.com");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (21,"Pope","Kaye","05 58 2023","606-2817 Ante Av.","450723","Magadan","01 45 96 54 14","nunc.quisque@protonmail.couk"),
  (22,"Olsen","Isaiah","06 38 2022","292-9567 Luctus St.","642852","Jurong East","01 86 43 35 71","ac.metus@google.edu"),
  (23,"Lucas","Sydney","11 47 2022","4166 Nisi Rd.","073722","Portsoy","09 68 85 20 48","aliquam.erat@protonmail.edu"),
  (24,"Juarez","Macaulay","06 40 2023","131-4965 A, Av.","448557","Bendigo","01 62 65 38 36","erat.semper@icloud.ca"),
  (25,"Browning","Kylee","24 41 2024","Ap #870-761 Semper Avenue","1473-2629","Chongqing","05 02 01 29 38","egestas@hotmail.net"),
  (26,"Day","Amaya","01 14 2023","Ap #669-7880 Magna. Rd.","68-285","Legal","02 21 99 71 36","nascetur.ridiculus@outlook.net"),
  (27,"Mccall","MacKensie","06 10 2022","P.O. Box 766, 968 Luctus Rd.","19197","Porirua","08 81 53 88 71","magna.et.ipsum@aol.ca"),
  (28,"Horton","Kasper","26 34 2024","580-1841 Nec Rd.","24785-92407","Oviedo","02 25 76 17 84","sapien.imperdiet@hotmail.org"),
  (29,"Terrell","Fuller","22 08 2022","Ap #972-9728 Non, Ave","14124","Biloxi","05 78 43 62 11","nec@aol.couk"),
  (30,"Haney","Cruz","19 36 2023","437-8332 Ipsum Ave","4851","Chulucanas","04 73 32 88 44","eu.metus@outlook.org");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (31,"Shannon","Maryam","18 16 2022","P.O. Box 378, 5718 Nisi Rd.","9311","Kropyvnytskyi","08 75 65 68 46","ipsum.primis@google.edu"),
  (32,"Nielsen","Shea","29 58 2023","Ap #162-5713 A, Street","22552","Chepén","06 27 89 68 40","non.bibendum.sed@protonmail.com"),
  (33,"Nichols","Mikayla","02 39 2023","Ap #145-1720 Auctor, Rd.","B6G 3OV","Saintes","06 83 04 12 61","ut.dolor.dapibus@aol.couk"),
  (34,"Colon","Sebastian","21 50 2024","748-6670 Nunc Rd.","15783","Kristiansand","06 13 09 95 17","interdum.feugiat@protonmail.net"),
  (35,"O'brien","Tanner","13 34 2023","535-5826 Varius Rd.","23965","Lạng Sơn","02 32 14 58 82","a.enim@outlook.ca"),
  (36,"Hobbs","Cassidy","11 45 2023","Ap #963-8173 Risus. Road","7774 ZQ","Chippenham","02 77 23 62 24","est.mollis@protonmail.couk"),
  (37,"Mays","Jessica","21 50 2022","844-212 Phasellus Rd.","155115","Kirkwall","05 74 34 18 57","est.vitae@aol.org"),
  (38,"Wilkins","Wanda","22 06 2022","535-7564 Cum St.","853577","Cottbus","02 66 38 52 15","quam.a@hotmail.ca"),
  (39,"Blankenship","Lev","03 56 2024","Ap #380-8346 Aliquet, St.","77-94","Staßfurt","03 22 22 23 58","orci.adipiscing@google.edu"),
  (40,"Manning","Moses","08 04 2023","269-525 Et Rd.","27643","Gjoa Haven","06 71 56 53 05","pulvinar.arcu@hotmail.ca");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (41,"Blackburn","Rosalyn","07 52 2023","854-7482 Lorem Av.","757315","Tauranga","08 27 46 15 89","arcu.ac.orci@google.edu"),
  (42,"Weaver","Mannix","23 38 2023","900-764 Blandit Street","8487-2537","Logroño","08 55 33 61 32","dapibus.gravida@protonmail.edu"),
  (43,"Church","Jasper","21 13 2023","P.O. Box 272, 8545 Aliquet St.","3428-7717","Amstetten","06 89 18 32 84","etiam.gravida.molestie@hotmail.com"),
  (44,"May","Meredith","02 27 2023","293-8115 Class St.","52009","Banbury","05 48 11 81 55","phasellus.dapibus@hotmail.edu"),
  (45,"Irwin","Rudyard","09 07 2022","Ap #153-7358 Eget St.","53771","Choa Chu Kang","02 33 41 20 52","nec.diam.duis@yahoo.ca"),
  (46,"Benson","Branden","01 07 2023","6319 Quis, St.","65317-611","Brakpan","02 36 77 57 62","ac.facilisis.facilisis@google.com"),
  (47,"Brock","Amethyst","27 19 2022","1042 Suspendisse Rd.","8125","Belfast","06 48 25 76 84","porttitor.vulputate@protonmail.net"),
  (48,"Page","Danielle","23 26 2022","6689 At, St.","196943","Kozan","08 58 77 76 14","a.feugiat@outlook.net"),
  (49,"Banks","Heather","06 32 2022","686-2971 Interdum. Ave","6139","Shebekino","08 71 53 28 04","volutpat@icloud.edu"),
  (50,"Gray","Darius","23 12 2023","P.O. Box 187, 7921 Mollis. St.","55516","Limón (Puerto Limón]","08 08 55 79 47","eu@aol.com");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (51,"Yates","Nyssa","04 59 2022","Ap #120-8392 Magna, Avenue","59391","Vinh","03 43 28 12 88","mi.lacinia@hotmail.org"),
  (52,"Benton","Nerea","15 39 2023","637-4615 Dolor Road","55843","Alto del Carmen","02 81 65 63 22","porta@yahoo.net"),
  (53,"Gallegos","Jessamine","12 48 2023","773-2533 At Street","EQ12 0GF","Worms","04 46 55 53 01","ornare.facilisis@yahoo.com"),
  (54,"Herman","Plato","02 49 2023","Ap #556-8652 Rutrum. Av.","57663","Chancay","06 12 62 59 40","ullamcorper.eu@aol.ca"),
  (55,"Mcclain","Sean","15 43 2022","P.O. Box 254, 1750 Vel, Avenue","99027","Belfast","09 71 62 72 45","ullamcorper.velit@yahoo.couk"),
  (56,"Mercado","Macey","26 12 2022","P.O. Box 126, 535 Mollis. Rd.","44835-82187","Waitara","08 81 77 46 10","nibh.quisque@hotmail.ca"),
  (57,"Medina","Avram","17 01 2023","Ap #513-7647 Proin Avenue","Y5R 0J6","Namyangju","09 73 81 73 55","tristique.senectus.et@icloud.net"),
  (58,"Jacobs","Lacey","17 41 2022","6047 Ultrices. St.","57-49","Tarrasa","08 51 58 27 41","proin.ultrices@aol.couk"),
  (59,"Kirk","Indigo","11 14 2024","Ap #114-9911 Elit St.","88631","León","03 11 73 97 08","ut.dolor@hotmail.com"),
  (60,"Townsend","MacKensie","20 15 2022","507-2328 Sed Road","B7Z 6B8","Quảng Ngãi","03 58 52 31 32","porttitor@outlook.edu");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (61,"Huff","Aurora","19 17 2022","P.O. Box 848, 6807 Nullam Road","64546","Trà Vinh","02 34 18 81 43","porttitor.interdum@aol.ca"),
  (62,"Kerr","India","12 50 2023","P.O. Box 454, 123 Justo Rd.","U5A 8A7","Hà Nội","06 38 88 75 24","nullam@icloud.couk"),
  (63,"Jefferson","Priscilla","23 19 2023","305-2602 Rutrum St.","3144 SS","Leke","07 26 84 24 41","malesuada.id@yahoo.ca"),
  (64,"Patrick","Jana","10 54 2022","9787 Orci Road","327632","Contagem","08 77 95 57 31","ac.feugiat@aol.com"),
  (65,"Nielsen","Freya","03 20 2024","8097 Morbi Street","68-62","Ávila","05 77 32 03 27","suspendisse.commodo@google.couk"),
  (66,"Pollard","Emerald","17 29 2022","329-9922 Duis Road","72293","Bremen","06 83 93 89 58","dictum.eu.eleifend@outlook.org"),
  (67,"Huff","Ivy","05 39 2023","668-429 Arcu. Av.","9787","Makurdi","01 54 12 85 71","nec.malesuada.ut@aol.couk"),
  (68,"Waller","Joan","12 14 2022","953-9906 Donec Av.","8153","Chungju","06 97 68 26 64","nam.tempor@protonmail.edu"),
  (69,"Mcgee","Allistair","04 08 2023","Ap #545-2636 Mi Road","10963","Calapan","05 14 79 93 53","cras.sed@google.edu"),
  (70,"Howell","Adrienne","07 39 2023","Ap #274-3905 Phasellus Avenue","6449","Berlin","09 63 71 76 85","lectus.pede@outlook.com");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (71,"Stout","Christopher","28 46 2022","Ap #600-715 Lobortis Street","58582-576","Kovel","01 61 23 53 21","consequat.nec.mollis@hotmail.com"),
  (72,"Hogan","Ira","20 02 2023","Ap #797-6853 Nisi Ave","30286","Mercedes","07 61 23 95 68","ac.sem.ut@outlook.ca"),
  (73,"Ryan","Driscoll","19 04 2023","2316 Pede. St.","570972","Bạc Liêu","01 33 77 10 32","imperdiet.erat@aol.net"),
  (74,"Charles","Brent","17 19 2022","Ap #711-1014 Velit. Road","3371 IN","Arendonk","05 39 39 87 78","nunc.pulvinar@google.org"),
  (75,"Perkins","Sean","27 12 2022","1841 Enim. Ave","39582","Ulloa (Barrial]","07 40 14 67 62","elit.curabitur.sed@protonmail.couk"),
  (76,"Freeman","Bernard","31 39 2023","Ap #806-5695 Elementum Rd.","771366","Chilpancingo","08 04 14 51 57","eleifend@protonmail.edu"),
  (77,"Sanchez","Julie","08 41 2022","813-6108 Eu Road","04350-26116","Cajamarca","02 37 05 09 82","sit.amet@yahoo.org"),
  (78,"Marquez","Steven","30 38 2022","P.O. Box 754, 5936 Nisi Av.","75-11","Tomsk","05 74 98 37 63","dui.nec.urna@outlook.com"),
  (79,"Lloyd","Deanna","24 36 2023","P.O. Box 577, 7171 At St.","2312 WB","Pskov","04 86 46 58 46","molestie.arcu@google.com"),
  (80,"O'connor","Shad","20 10 2024","8825 Sollicitudin St.","65881","Afşin","05 44 82 61 10","pede@protonmail.ca");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (81,"Atkins","Noel","29 01 2023","705-2306 Sit St.","773932","Zierikzee","05 55 93 95 39","proin.non.massa@outlook.edu"),
  (82,"Jacobson","Cheyenne","29 38 2022","Ap #473-8822 Mauris Avenue","231006","Yekaterinburg","06 95 35 17 76","ipsum.primis.in@outlook.ca"),
  (83,"Warner","Ivan","22 31 2023","7376 In Rd.","784936","Alexandra","07 28 25 81 08","tristique@protonmail.com"),
  (84,"Vaughan","Aquila","14 19 2023","648-7820 Dui Avenue","158353","Melrose","07 69 86 63 75","risus.duis.a@yahoo.ca"),
  (85,"Bush","Mona","15 35 2022","579-2197 Adipiscing Road","38-66","Akhtubinsk","03 26 21 12 42","ac.mattis@google.ca"),
  (86,"Marks","Jemima","31 00 2022","126-6914 Sociis Rd.","7682","Nasirabad","09 14 85 31 41","sit.amet@outlook.org"),
  (87,"Cochran","Evangeline","25 07 2022","Ap #109-8582 Erat. St.","74-23","Lelystad","06 01 52 92 83","tristique.pharetra@hotmail.ca"),
  (88,"Schroeder","Hadassah","29 27 2022","Ap #859-4862 Nisl St.","65321-695","Belfast","04 35 71 12 15","odio.semper@protonmail.couk"),
  (89,"Mccullough","Garrison","10 30 2022","987-3869 Tellus Road","03341","Empangeni","07 34 97 45 30","sit.amet@protonmail.couk"),
  (90,"Adams","Ivan","19 59 2023","Ap #626-9014 Euismod St.","46536","Blue Mountains","08 11 74 81 44","aliquam.enim.nec@icloud.com");
INSERT INTO `myTable` (`id_I`,`nom_I`,`prenom_I`,`date_emprunt`,`addresse_I`,`codepostal_I`,`ville_I`,`tel_I`,`email_I`)
VALUES
  (91,"Henderson","Harper","29 09 2023","P.O. Box 721, 7093 Cursus Road","74743-927","Yangsan","04 94 62 64 24","semper.erat.in@protonmail.org"),
  (92,"Poole","Knox","10 12 2022","2412 Lorem, Street","527133","Thame","07 28 89 35 14","diam.proin@aol.couk"),
  (93,"Alexander","Elvis","24 11 2023","836-7278 Eleifend St.","6646","Guangxi","04 94 17 14 36","neque@google.org"),
  (94,"Becker","Arden","20 09 2023","P.O. Box 754, 2222 Metus. Avenue","17431-121","Otegem","08 73 00 06 24","nunc.in@outlook.com"),
  (95,"Parker","Hakeem","11 14 2023","910 Imperdiet Road","74-185","Ørsta","03 74 83 38 82","tincidunt.dui@yahoo.org"),
  (96,"Beard","Tallulah","06 24 2023","Ap #926-637 Semper St.","N4R 5DM","Paya Lebar","05 57 98 05 03","ac.mattis@google.org"),
  (97,"Gibson","Hedley","22 50 2023","P.O. Box 654, 8569 Ante. Ave","50214","Ningxia","05 64 71 33 92","ante.lectus@icloud.couk"),
  (98,"Simmons","Tamara","16 52 2023","P.O. Box 361, 8116 Penatibus Rd.","16558","Mâcon","09 52 83 64 64","donec@icloud.org"),
  (99,"Espinoza","Murphy","27 59 2023","P.O. Box 707, 1920 Tellus Avenue","747448","Borlänge","03 03 13 24 57","odio.semper.cursus@google.com"),
  (100,"Little","Hollee","29 27 2024","P.O. Box 637, 1700 Commodo St.","S9J 5W2","Chilpancingo","01 63 79 78 27","orci.luctus@hotmail.org");
