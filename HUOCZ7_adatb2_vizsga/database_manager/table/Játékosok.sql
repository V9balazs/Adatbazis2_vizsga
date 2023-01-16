CREATE TABLE jatekosok(
    id NUMBER PRIMARY KEY,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    mezszam VARCHAR2(5 CHAR),
    magassag NUMBER,
    dobott_pontok NUMBER,
    mecsek_szama NUMBER,
    fizetes NUMBER,
    karrier_kezdet DATE NOT NULL,
    pozicio VARCHAR2(250 CHAR),
    csapat_id NUMBER NOT NULL,
    modositas_ideje TIMESTAMP
)


ALTER TABLE jatekosok ADD CONSTRAINT fk_jatekosok_csapatok
    FOREIGN KEY(csapat_id) REFERENCES csapatok(id);


INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (1, 'Malcolm', 'Brogdon', 11, 190, 359, 220, 23000000, to_date('1998-01-25', 'yyyy-mm-dd'), 'Írányító', 1, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (2, 'Jaylen', 'Brown', 03, 201, 390, 240, 15000000, to_date('1993-05-05', 'yyyy-mm-dd'), 'Dobóhátvéd', 1, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (3, 'JD', 'Davision', 08, 195, 450, 267, 37000000, to_date('1991-10-16', 'yyyy-mm-dd'), 'Alacsonybedobó', 1, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (4, 'Danilo', 'Ganillari', 20, 190, 290, 172, 40000000, to_date('2003-02-01', 'yyyy-mm-dd'), 'Erõcsatár', 1, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (5, 'Brake', 'Griffin', 43, 199, 280, 124, 20000000, to_date('2000-06-14', 'yyyy-mm-dd'), 'Center', 1, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (6, 'LaMelo', 'Ball', 01, 198, 402, 303, 40000000, to_date('1989-05-11', 'yyyy-mm-dd'), 'Írányító', 2, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (7, 'James', 'Bouknight', 32, 209, 389, 254, 32000000, to_date('1999-05-05', 'yyyy-mm-dd'), 'Dobóhátvéd', 2, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (8, 'Gordon', 'Hayward', 12, 203, 201, 278, 33000000, to_date('1998-11-11', 'yyyy-mm-dd'), 'Alacsonybedobó', 2, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (9, 'Kia', 'Jones', 10, 199, 290, 156, 19000000, to_date('2004-05-05', 'yyyy-mm-dd'), 'Erõcsatár', 2, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (10, 'Cordy', 'Martin', 09, 205, 156, 120, 17000000, to_date('2001-07-14', 'yyyy-mm-dd'), 'Center', 2, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (11, 'Goga', 'Bitadze', 15, 207, 123, 299, 34000000, to_date('1994-01-20', 'yyyy-mm-dd'), 'Írányító', 3, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (12, 'Oshae', 'Brissett', 16, 211, 234, 304, 37000000, to_date('1992-07-21', 'yyyy-mm-dd'), 'Dobóhátvéd', 3, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (13, 'Kendall', 'Brown', 27, 204, 134, 167, 21000000, to_date('2000-12-24', 'yyyy-mm-dd'), 'Alacsonybedobó', 3, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (14, 'Chris', 'Duarte', 26, 197, 201, 100, 15000000, to_date('2006-03-02', 'yyyy-mm-dd'), 'Erõcsatár', 3, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (15, 'Buddy', 'Hield', 35, 213, 188, 130, 19000000, to_date('2003-10-23', 'yyyy-mm-dd'), 'Center', 3, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));

INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (16, 'Steven', 'Adamans', 03, 210, 289, 267, 30000000, to_date('1999-07-12', 'yyyy-mm-dd'), 'Írányító', 4, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (17, 'Santi', 'Aldama', 08, 201, 205, 231, 35000000, to_date('1995-05-14', 'yyyy-mm-dd'), 'Dobóhátvéd', 4, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (18, 'Desmond', 'Bane', 34, 197, 220, 244, 36000000, to_date('1995-10-19', 'yyyy-mm-dd'), 'Alacsonybedobó', 4, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (19, 'Danny', 'Green', 46, 196, 165, 172, 21000000, to_date('2001-02-02', 'yyyy-mm-dd'), 'Erõcsatár', 4, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO jatekosok (id, keresztnev, vezeteknev, mezszam, magassag, dobott_pontok, mecsek_szama, fizetes, karrier_kezdet, pozicio, csapat_id, modositas_ideje)
VALUES (20, 'Brandon', 'Clarke', 49, 201, 110, 87, 13000000, to_date('2010-01-30', 'yyyy-mm-dd'), 'Center', 4, to_date('2023-01-13 17:55:11', 'yyyy-mm-dd hh24:mi:ss'));
