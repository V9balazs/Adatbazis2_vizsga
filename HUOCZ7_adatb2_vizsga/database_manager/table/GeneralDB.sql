CREATE TABLE GE_alkalmazott(
    ceg_id VARCHAR2(250 CHAR) PRIMARY KEY,
    vezeteknev VARCHAR2(250 CHAR) NOT NULL,
    keresztnev VARCHAR2(250 CHAR) NOT NULL,
    szuletesi_datum DATE,
    lakhely VARCHAR2(250 CHAR),
    cim VARCHAR2(250 CHAR),
    email VARCHAR2(250 CHAR) NOT NULL,
    telefon VARCHAR2(250 CHAR) NOT NULL,
    pozicio VARCHAR2(250 CHAR),
    fizetes NUMBER,
    szerzodes_lejar DATE,
    utolso_modositas_ideje TIMESTAMP,
    letrehozas_ideje TIMESTAMP
)

INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (IT0000001F01, 'Sas', 'Em�ke', to_date('13-05-1981', 'dd-mm-yyyy'), 'P�cs', 'Hirdi �t 15.', 'sas.emoke@dbm.hu', '06304625432', 'Java fejleszt�', 1250000, to_date('02-12-2024', 'dd-mm-yyyy'), to_date('07-01-2023 15:34:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-12-2012 15:45:23', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (IT0000002F01, 'B�thory', 'K�lm�n', to_date('02-03-1997', 'dd-mm-yyyy'), 'P�cs', 'F�rj utca 6.', 'bathory.kalman@dbm.hu', '0630851642', 'Full stack fejleszt�', 1100000, to_date('11-11-2026', 'dd-mm-yyyy'), to_date('07-01-2023 15:00:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-11-2016 15:27:32', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (IT0000003F01, 'Tisza', 'J�nos', to_date('25-10-1980', 'dd-mm-yyyy'), 'P�cs', 'Megyeri �t 23.', 'tisza.janos@dbm.hu', '06200235648', 'IT bizonts�gi tan�csad�', 1400000, to_date('19-07-2024', 'dd-mm-yyyy'), to_date('07-01-2023 15:05:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-07-2020 15:33:27', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (IT0000004F01, 'Vencel', 'Zal�n', to_date('21-12-1976', 'dd-mm-yyyy'), 'P�cs', 'Andr�s utca 1.', 'vencel.zalan@dbm.hu', '06309844538', 'Tesztel�si vezet�', 1500000, to_date('27-01-2025', 'dd-mm-yyyy'), to_date('07-01-2023 15:14:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-01-2018 15:36:53', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (IT0000005F01, 'B�r�', 'Zsombor', to_date('30-08-1999', 'dd-mm-yyyy'), 'P�cs', 'Toborc urca 49.', 'biro.zsombor@dbm.hu', '06200155645', 'IT vezet�', 1750000, to_date('30-06-2027', 'dd-mm-yyyy'), to_date('07-01-2023 15:33:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('30-06-2014 15:42:24', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (HR0000001F02, 'G�rdonyi', 'P�ter', to_date('18-02-2000', 'dd-mm-yyyy'), 'P�cs', 'Udvari �t 30.', 'gardonyi.peter@dbm.hu', '06203156489', 'HR manager', 1200000, to_date('17-02-2025', 'dd-mm-yyyy'), to_date('07-01-2023 15:06:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-02-2023 15:13:13', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (HR0000002F02, 'Rig�', 'Mil�na', to_date('13-04-1986', 'dd-mm-yyyy'), 'P�cs', 'Vas�t utca 5.', 'rigo.milena@dbm.hu', '06304456201', 'HR generalista', 1000000, to_date('16-09-2024', 'dd-mm-yyyy'), to_date('07-01-2023 15:01:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-09-2022 15:20:46', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (HR0000003F02, 'Sz�kely', 'Eliza', to_date('01-09-1978', 'dd-mm-yyyy'), 'P�cs', 'Zsolt utca 3.', 'szekely.eliza@dbm.hu', '06307852610', 'Recruiter', 700000, to_date('17-10-2027', 'dd-mm-yyyy'), to_date('07-01-2023 15:13:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-10-2011 15:01:11', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (HR0000004F02, 'Katona', 'M�zes', to_date('11-11-1980', 'dd-mm-yyyy'), 'P�cs', '�z utca 12.', 'katona.mozes@dbm.hu', '06303546870', 'Recruiter', 680000, to_date('05-12-2028', 'dd-mm-yyyy'), to_date('07-01-2023 15:23:43', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-12-2010 15:27:12', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (HR0000005F02, 'Arany', '�rmin', to_date('17-06-1985', 'dd-mm-yyyy'), 'P�cs', 'Ny�rfa utca 22.', 'arany.armin@dbm.hu', '06308995521', 'HR asszisztens', 850000, to_date('28-01-2024', 'dd-mm-yyyy'), to_date('07-01-2023 15:53:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('28-01-2015 15:03:43', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (AC0000001F03, 'Lov�sz', 'Kelemen', to_date('04-11-1985', 'dd-mm-yyyy'), 'P�cs', 'Nagyr�ti �t 8.', 'lovasz.kelemen@dbm.hu', '06202566001', 'K�nyvel�', 600000, to_date('14-04-2025', 'dd-mm-yyyy'), to_date('07-01-2023 15:43:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-04-2017 15:55:59', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (AC0000002F03, 'M�rton', 'Irma', to_date('11-04-1971', 'dd-mm-yyyy'), 'P�cs', 'Mecsek utca 17.', 'matron.irma@dbm.hu', '06301254862', 'K�nyvel�', 600000, to_date('07-02-2028', 'dd-mm-yyyy'), to_date('07-01-2023 15:18:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-02-2017 15:40:40', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (AC0000003F03, 'Budai', 'Melissza', to_date('10-10-1981', 'dd-mm-yyyy'), 'P�cs', 'K�k�nyi �t 4.', 'budai.melissza@dbm.hu', '06302660548', 'K�nyvel�', 600000, to_date('02-10-2025', 'dd-mm-yyyy'), to_date('07-01-2023 15:12:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-10-2018 15:01:31', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (AC0000004F03, 'Erd�s', 'M�nika', to_date('19-08-1993', 'dd-mm-yyyy'), 'P�cs', 'Iparos utca 7.', 'erdos.monika@dbm.hu', '06301110058', 'K�nyvel�', 600000, to_date('23-11-2025', 'dd-mm-yyyy'), to_date('07-01-2023 15:51:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-11-2020 15:43:29', 'dd-mm-yyyy hh24:mi:ss'));
INSERT INTO GE_alkalmazott (ceg_id, keresztnev, vezeteknev, szuletesi_datum, lakhely, cim, email, telefon, pozicio, fizetes, szerzodes_lejar, utolso_modositas_ideje, letrehozas_ideje)
values (AC0000005F03, 'Szarvas', 'N�ra', to_date('02-12-1993', 'dd-mm-yyyy'), 'P�cs', 'E�tv�s utca 10.', 'szarvas.nora@dbm.hu', '06306945008', 'K�nyvel�', 600000, to_date('11-10-2026', 'dd-mm-yyyy'), to_date('07-01-2023 15:54:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-10-2021 15:41:32', 'dd-mm-yyyy hh24:mi:ss'));

