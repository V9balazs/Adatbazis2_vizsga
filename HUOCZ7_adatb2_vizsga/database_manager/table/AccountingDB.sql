CREATE TABLE AC_alkalmazott(
    id NUMBER PRIMARY KEY,
    ceg_id VARCHAR2(250 CHAR) NOT NULL,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    konyvelek_szama NUMBER,
    cegel_foglalkozik VARCHAR2(250 CHAR)
)

ALTER TABLE AC_alkalmazott ADD FOREIGN KEY (ceg_id) REFERENCES GE_alkalmazott(ceg_id);

INSERT INTO AC_alkalmazott (id, ceg_id, keresztnev, vezeteknev, konyvelek_szama, cegel_foglalkozik)
values (1, AC0000001F03, 'Lovász', 'Kelemen', 112, 'Saját cég');
INSERT INTO AC_alkalmazott (id, ceg_id, keresztnev, vezeteknev, konyvelek_szama, cegel_foglalkozik)
values (2, AC0000002F03, 'Márton', 'Irma', 250, 'Telekom');
INSERT INTO AC_alkalmazott (id, ceg_id, keresztnev, vezeteknev, konyvelek_szama, cegel_foglalkozik)
values (3, AC0000003F03, 'Budai', 'Melissza', 98, 'UPC');
INSERT INTO AC_alkalmazott (id, ceg_id, keresztnev, vezeteknev, konyvelek_szama, cegel_foglalkozik)
values (4, AC0000004F03, 'Erdõs', 'Mónika', 111, 'Saját cég');
INSERT INTO AC_alkalmazott (id, ceg_id, keresztnev, vezeteknev, konyvelek_szama, cegel_foglalkozik)
values (5, AC0000005F03, 'Szarvas', 'Nóra', 185, 'PTE');
