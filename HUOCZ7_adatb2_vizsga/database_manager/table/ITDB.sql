CREATE TABLE IT_alkalmazott(
    id NUMBER PRIMARY KEY,
    ceg_id VARCHAR2(250 CHAR) NOT NULL,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    feladatkor VARCHAR2(250 CHAR),
    kivett_szabadsagok NUMBER
)

ALTER TABLE IT_alkalmazott ADD FOREIGN KEY (ceg_id) REFERENCES GE_alkalmazott(ceg_id);

INSERT INTO IT_alkalmazott (id, ceg_id, keresztnev, vezeteknev, feladatkor, kivett_szabadsagok)
values (1, IT0000001F01, 'Sas', 'Em�ke', 'Program fejleszt�s', 5);
INSERT INTO IT_alkalmazott (id, ceg_id, keresztnev, vezeteknev, feladatkor, kivett_szabadsagok)
values (2, IT0000002F01, 'B�thory', 'K�lm�n', 'Backend �s Frontend fejleszt�s', 10);
INSERT INTO IT_alkalmazott (id, ceg_id, keresztnev, vezeteknev, feladatkor, kivett_szabadsagok)
values (3, IT0000003F01, 'Tisza', 'J�nos', 'C�ges rendszer biztons�ga', 1);
INSERT INTO IT_alkalmazott (id, ceg_id, keresztnev, vezeteknev, feladatkor, kivett_szabadsagok)
values (4, IT0000004F01, 'Vencel', 'Zal�n', 'Programok tesztel�se', 2);
INSERT INTO IT_alkalmazott (id, ceg_id, keresztnev, vezeteknev, feladatkor, kivett_szabadsagok)
values (5, IT0000005F01, 'B�r�', 'Zsombor', 'Programok fejeszt�s�nek feloszt�sa', 11);
