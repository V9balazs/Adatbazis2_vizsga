create or replace package pkg_beszuras is

  alkalmazott_dup_exc EXCEPTION;
  PRAGMA EXCEPTION_INIT(alkalmazott_dup_exc, -20001);
  PROCEDURE insert_alkalmazott(temp_ceg_id VARCHAR2,
                               temp_vezeteknev VARCHAR2,
                               temp_keresztnev VARCHAR2,
                               temp_szuletesi_datum DATE,
                               temp_lakhely VARCHAR2,
                               temp_cim VARCHAR2),
                               temp_email VARCHAR2,
                               temp_telefon VARCHAR2,
                               temp_pozicio VARCHAR2,
                               temp_fizetes NUMBER,
                               temp_szerzodes_lejar DATE,
                               temp_utolso_modositas_ideje TIMESTAMP,
                               temp_letrehozas_ideje TIMESTAMP);
                               
  FUNCTION letezik(temp_ceg_id VARCHAR2,
                               temp_vezeteknev VARCHAR2,
                               temp_keresztnev VARCHAR2,
                               temp_szuletesi_datum DATE,
                               temp_lakhely VARCHAR2,
                               temp_cim VARCHAR2),
                               temp_email VARCHAR2,
                               temp_telefon VARCHAR2,
                               temp_pozicio VARCHAR2,
                               temp_fizetes NUMBER,
                               temp_szerzodes_lejar DATE,
                               temp_utolso_modositas_ideje TIMESTAMP,
                               temp_letrehozas_ideje TIMESTAMP); RETURN BOOLEAN;

end pkg_beszuras;
/
create or replace package body pkg_beszuras is

  PROCEDURE insert_alkalmazott(temp_ceg_id VARCHAR2,
                               temp_vezeteknev VARCHAR2,
                               temp_keresztnev VARCHAR2,
                               temp_szuletesi_datum DATE,
                               temp_lakhely VARCHAR2,
                               temp_cim VARCHAR2,
                               temp_email VARCHAR2,
                               temp_telefon VARCHAR2,
                               temp_pozicio VARCHAR2,
                               temp_fizetes NUMBER,
                               temp_szerzodes_lejar DATE,
                               temp_utolso_modositas_ideje TIMESTAMP,
                               temp_letrehozas_ideje TIMESTAMP) IS
  BEGIN
    IF letezik(temp_ceg_id, temp_vezeteknev, temp_keresztnev, temp_szuletesi_datum, temp_lakhely, temp_cim, temp_email, temp_telefon, temp_pozicio, temp_fizetes, temp_szerzodes_lejar, temp_utolso_modositas_ideje, temp_letrehozas_ideje)
    THEN
      RAISE alkalmazott_dup_exc;
    ELSE
      INSERT INTO GE_alkalmazott
        (ceg_id,
         vezeteknev, 
         keresztnev,
         szuletesi_datum,
         lakhely,
         cim,
         email,
         telefon,
         pozicio,
         fizetes,
         szerzodes_lejar,
         utolso_modositas_ideje,
         letrehozas_ideje)
      VALUES
        (temp_ceg_id,
         temp_vezeteknev,
         temp_keresztnev,
         temp_szuletesi_datum,
         temp_lakhely,
         temp_cim,
         temp_email,
         temp_telefon,
         temp_pozicio,
         temp_fizetes,
         temp_szerzodes_lejar,
         temp_utolso_modositas_ideje,
        temp_letrehozas_ideje);
    END IF;
  END insert_alkalmazott;
  
  FUNCTION letezik(temp_ceg_id VARCHAR2,
                   temp_vezeteknev VARCHAR2,
                   temp_keresztnev VARCHAR2,
                   temp_szuletesi_datum DATE,
                   temp_lakhely VARCHAR2,
                   temp_cim VARCHAR2,
                   temp_email VARCHAR2,
                   temp_telefon VARCHAR2,
                   temp_pozicio VARCHAR2,
                   temp_fizetes NUMBER,
                   temp_szerzodes_lejar DATE,
                   temp_utolso_modositas_ideje TIMESTAMP,
                   temp_letrehozas_ideje TIMESTAMP) RETURN BOOLEAN IS
    temp_num NUMBER := 0;
  BEGIN
    SELECT COUNT(*)
      INTO temp_num
      FROM GE_alkalmazott
     WHERE ceg_id = temp_ceg_id
       AND email = temp_email
       AND telefon = temp_telefon;
    IF temp_num != 0
    THEN
      RETURN TRUE;
    ELSE
      RETURN FALSE;
    END IF;
  END letezik;
end pkg_beszuras;
/
