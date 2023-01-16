CREATE TABLE edzok(
    id NUMBER PRIMARY KEY,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    tapasztalat_ev NUMBER,
    csapat_ezdo_ota DATE,
    fizetes NUMBER,
    modositas_ideje TIMESTAMP
)


INSERT INTO edzok (id, keresztnev, vezeteknev, tapasztalat_ev, csapat_ezdo_ota, fizetes, modositas_ideje)
VALUES (1, 'Joe', 'Mazzulla', 4, to_date('2020', 'yyyy'), 3000000, to_date('2023-01-13 17:56:13', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO edzok (id, keresztnev, vezeteknev, tapasztalat_ev, csapat_ezdo_ota, fizetes, modositas_ideje)
VALUES (2, 'Steve', 'Clifford', 23, to_date('2013', 'yyyy'), 7000000, to_date('2023-01-13 17:56:13', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO edzok (id, keresztnev, vezeteknev, tapasztalat_ev, csapat_ezdo_ota, fizetes, modositas_ideje)
VALUES (3, 'Rick', 'Carlisle', 33, to_date('2001', 'yyyy'), 8000000, to_date('2023-01-13 17:56:13', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO edzok (id, keresztnev, vezeteknev, tapasztalat_ev, csapat_ezdo_ota, fizetes, modositas_ideje)
VALUES (4, 'Taylor', 'Jenkins', 10, to_date('2023', 'yyyy'), 5000000, to_date('2023-01-13 17:56:13', 'yyyy-mm-dd hh24:mi:ss'));
