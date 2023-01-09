CREATE TABLE HR_alkalmazott(
    id NUMBER PRIMARY KEY,
    ceg_id VARCHAR2(250 CHAR) NOT NULL,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    felvettek_szama NUMBER,
    rendezvenyen_reszvetel NUMBER
)

ALTER TABLE HR_alkalmazott ADD FOREIGN KEY (ceg_id) REFERENCES GE_alkalmazott(ceg_id);

INSERT INTO HR_alkalmazott (id, ceg_id, keresztnev, vezeteknev, felvettek_szama, rendezvenyen_reszvetel)
values (1, HR0000001F02, 'Gárdonyi', 'Péter', 24, 10);
INSERT INTO HR_alkalmazott (id, ceg_id, keresztnev, vezeteknev, felvettek_szama, rendezvenyen_reszvetel)
values (2, HR0000002F02, 'Rigó', 'Miléna', 20, 8);
INSERT INTO HR_alkalmazott (id, ceg_id, keresztnev, vezeteknev, felvettek_szama, rendezvenyen_reszvetel)
values (3, HR0000003F02, 'Székely', 'Eliza', 8, 4);
INSERT INTO HR_alkalmazott (id, ceg_id, keresztnev, vezeteknev, felvettek_szama, rendezvenyen_reszvetel)
values (4, HR0000004F02, 'Katona', 'Mózes', 7, 5);
INSERT INTO HR_alkalmazott (id, ceg_id, keresztnev, vezeteknev, felvettek_szama, rendezvenyen_reszvetel)
values (5, HR0000005F02, 'Arany', 'Ármin', 4, 2);
