USE geronimo;
INSERT INTO city(id, name) VALUES (1, 'Kharkov'),
                                  (2, 'Kiev'),
                                  (3, 'Lutsk');

INSERT INTO category(id, name) VALUES (1, 'food'),
                                      (2, 'clothes'),
                                      (3, 'entertainment'),
                                      (4, 'business'),
                                      (5, 'sport complex'),
                                      (6, 'health'),
                                      (7, 'state'),
                                      (8, 'beauty'),
                                      (9, 'crossroads'),
                                      (10, 'nature'),
                                      (11, 'electronics');

#Kharkov
INSERT INTO place(id, is_crossroads, name, rating, category_id, city_id) VALUES (1, false, 'Posad', 'SATISFACTORILY', 1, 1),
                                                                                (2, false, 'Buffet', 'GOOD', 1, 1),
                                                                                (3, true, 'Buffet-Papa_Roma', 'GOOD', 9, 1),
                                                                                (4, false, 'Youth park', 'EXCELLENT', 10, 1),
                                                                                (5, false, 'Papa Roma', 'EXCELLENT', 1, 1),
                                                                                (6, false, 'Students palace', 'GOOD', 7, 1),
                                                                                (7, true, 'Palace-Dormitory', 'GOOD', 9, 1),
                                                                                (8, false, 'Giant Dormitory', 'TERRIBLY', 7, 1),
                                                                                (9, false, 'Rest or Run', 'GOOD', 1, 1),
                                                                                (10, false, 'Kulinichi', 'EXCELLENT', 1, 1),
                                                                                (11, false, 'Analysis laboratory', 'GOOD', 6, 1),
                                                                                (12, false, 'Copy center', 'EXCELLENT', 4, 1),
                                                                                (13, false, 'Prostor', 'GOOD', 8, 1),
                                                                                (14, false, 'Woof hot dog', 'SATISFACTORILY', 1, 1),
                                                                                (15, false, 'Citrus', 'GOOD', 11, 1),
                                                                                (16, false, 'Mafia', 'EXCELLENT', 1, 1),
                                                                                (17, true, 'Prostor-Citrus', 'GOOD', 9, 1);

INSERT INTO road(weight, from_id, to_id) VALUES (25, 1, 2),
                                                (50, 1, 6),
                                                (28, 1, 3),
                                                (3, 2, 3),
                                                (25, 2, 6),
                                                (23, 6, 3),
                                                (3, 6, 7),
                                                (53, 1, 7),
                                                (28, 2, 7),
                                                (35, 4, 3),
                                                (5, 4, 5),
                                                (75, 4, 7),
                                                (30, 5, 3),
                                                (70, 5, 7),
                                                (25, 9, 7),
                                                (3, 9, 10),
                                                (400, 9, 11),
                                                (200, 9, 17),
                                                (193, 10, 17),
                                                (393, 10, 11),
                                                (28, 10, 7),
                                                (425, 11, 7),
                                                (200, 11, 17),
                                                (10, 8, 7),
                                                (30, 8, 16),
                                                (200, 8, 17),
                                                (55, 16, 7),
                                                (30, 16, 17),
                                                (30, 12, 17),
                                                (25, 12, 13),
                                                (35, 12, 14),
                                                (5, 13, 17),
                                                (5, 13, 14),
                                                (10, 14, 17),
                                                (15, 15, 17);

#Kiev
INSERT INTO place(id, is_crossroads, name, rating, category_id, city_id) VALUES (18, false, 'Gold century', 'GOOD', 8, 2),
                                                                                (19, false, 'Allo', 'GOOD', 11, 2),
                                                                                (20, false, 'Stilyaga', 'GOOD', 2, 2),
                                                                                (21, false, 'Eva', 'GOOD', 8, 2),
                                                                                (22, false, 'Nike', 'EXCELLENT', 2, 2),
                                                                                (23, false, 'Mc Donalds', 'EXCELLENT', 1, 2),
                                                                                (24, false, 'Puzata hata', 'GOOD', 1, 2),
                                                                                (25, false, 'Vodafone', 'SATISFACTORILY', 11, 2),
                                                                                (26, false, 'Raiffeisen Bank Aval', 'GOOD', 4, 2),
                                                                                (27, false, 'Khreshchaty Yar', 'EXCELLENT', 10, 2),
                                                                                (28, false, 'National Council', 'GOOD', 7, 2),
                                                                                (29, false, 'Kartata Potata', 'GOOD', 1, 2),
                                                                                (30, false, 'Friends', 'GOOD', 1, 2),
                                                                                (31, false, 'Consular Office of Ireland', 'GOOD', 7, 2),
                                                                                (32, true, 'Nike-Stilyaga', 'GOOD', 9, 2),
                                                                                (33, true, 'Allo-Mc Donalds', 'GOOD', 9, 2);

INSERT INTO road(weight, from_id, to_id) VALUES (20, 18, 19),
                                                (65, 18, 20),
                                                (75, 18, 32),
                                                (55, 19, 20),
                                                (65, 19, 32),
                                                (62, 19, 33),
                                                (10, 20, 32),
                                                (5, 21, 22),
                                                (15, 21, 32),
                                                (50, 21, 26),
                                                (10, 22, 32),
                                                (45, 22, 26),
                                                (40, 26, 32),
                                                (45, 26, 27),
                                                (5, 28, 30),
                                                (30, 28, 29),
                                                (22, 28, 27),
                                                (17, 30, 27),
                                                (25, 30, 29),
                                                (10, 29, 27),
                                                (15, 23, 33),
                                                (30, 23, 24),
                                                (40, 23, 25),
                                                (45, 24, 33),
                                                (10, 24, 25),
                                                (55, 25, 33);


#Lutsk
INSERT INTO place(id, is_crossroads, name, rating, category_id, city_id) VALUES (34, false, 'Oshad Bank', 'GOOD', 4, 3),
                                                                                (35, false, 'Prokuratura of the Volyn Region', 'GOOD', 7, 3),
                                                                                (36, false, 'Chokonel', 'EXCELLENT', 1, 3),
                                                                                (37, false, 'Sim23', 'GOOD', 11, 3),
                                                                                (38, false, 'Ranok Novoi Volyni', 'GOOD', 7, 3),
                                                                                (39, false, 'I like kebab', 'GOOD', 1, 3),
                                                                                (40, false, 'Coffee mania', 'EXCELLENT', 1, 3),
                                                                                (41, false, 'Karabas Barabas', 'GOOD', 1, 3),
                                                                                (42, false, 'Miydun', 'GOOD', 1, 3),
                                                                                (43, false, 'Skarbnitsa', 'SATISFACTORILY', 4, 3),
                                                                                (45, false, 'Kava avenue', 'GOOD', 1, 3),
                                                                                (46, false, 'Vitdil Vikonavchoi Sluzbi', 'GOOD', 7, 3),
                                                                                (47, false, 'Oxford medical', 'EXCELLENT', 6, 3),
                                                                                (48, false, 'Tech Life', 'GOOD', 11, 3),
                                                                                (49, false, 'Step Academy', 'GOOD', 4, 3),
                                                                                (50, true, 'Sim32-Skarbnitsa-Karabas', 'GOOD', 9, 3),
                                                                                (51, true, 'Oxford-Skarbntitsa-Karabas', 'GOOD', 9, 3);

INSERT INTO road(weight, from_id, to_id) VALUES (25, 34, 35),
                                                (70, 34, 36),
                                                (95, 34, 37),
                                                (130, 34, 50),
                                                (115, 34, 38),
                                                (45, 35, 36),
                                                (70, 35, 37),
                                                (105, 35, 50),
                                                (110, 35, 38),
                                                (25, 36, 37),
                                                (60, 36, 50),
                                                (115, 36, 38),
                                                (35, 37, 50),
                                                (120, 37, 38),
                                                (155, 38, 50),
                                                (10, 39, 40),
                                                (25, 39, 41),
                                                (50, 39, 50),
                                                (80, 39, 42),
                                                (85, 39, 51),
                                                (15, 40, 41),
                                                (40, 40, 50),
                                                (70, 40, 42),
                                                (75, 40, 51),
                                                (25, 41, 50),
                                                (70, 41, 42),
                                                (60, 41, 51),
                                                (50, 42, 50),
                                                (40, 42, 51),
                                                (15, 43, 50),
                                                (45, 43, 45),
                                                (48, 43, 46),
                                                (30, 43, 51),
                                                (60, 45, 50),
                                                (45, 45, 46),
                                                (30, 45, 51),
                                                (63, 46, 50),
                                                (60, 46, 51),
                                                (10, 47, 51),
                                                (25, 47, 48),
                                                (25, 47, 49),
                                                (28, 48, 49),
                                                (35, 48, 51),
                                                (35, 49, 51);