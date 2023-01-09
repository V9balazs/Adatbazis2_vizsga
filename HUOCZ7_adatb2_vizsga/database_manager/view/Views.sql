CREATE VIEW IT_egesz AS
SELECT (ge.ceg_id || ' ' || ge.vezeteknev) AS nev, ge.keresztnev, ge.szuletesi_datum, ge.lakhely, ge.cim, ge.email, ge.telefon, ge.pozicio, ge.fizetes, it.feladatkor, it.kivett_szabadsagok, ge.szerzodes_lejar, ge.utolso_modositas_ideje, ge.letrehozas_ideje
FROM GE_alkalmazott ge INNER JOIN IT_alkalmazott it ON ge.ceg_id = it.ceg_it;

CREATE VIEW HR_egesz AS
SELECT (ge.ceg_id || ' ' || ge.vezeteknev) AS nev, ge.szuletesi_datum, ge.lakhely, ge.cim, ge.email, ge.telefon, ge.pozicio, ge.fizetes, hr.felvettek_szama, hr.rendezvenyen_reszvetel, ge.szerzodes_lejar, ge.utolso_modositas_ideje, ge.letrehozas_ideje
FROM GE_alkalmazott ge INNER JOIN HR_alkalmazott hr ON ge.ceg_id = hr.ceg_it;

CREATE VIEW AC_egesz AS
SELECT (ge.ceg_id || ' ' || ge.vezeteknev) AS nev, ge.szuletesi_datum, ge.lakhely, ge.cim, ge.email, ge.telefon, ge.pozicio, ge.fizetes, ac.konyvelek_szama, ac.cegel_foglalkozik, ge.szerzodes_lejar, ge.utolso_modositas_ideje, ge.letrehozas_ideje
FROM GE_alkalmazott ge INNER JOIN AC_alkalmazott ac ON ge.ceg_id = ac.ceg_it;
