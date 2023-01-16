CREATE OR REPLACE PACKAGE jatekosok_pkg IS

  PROCEDURE jatekosok_delete(p_id NUMBER);
  
  PROCEDURE jatekosok_insert(p_id NUMBER,
                             p_vezeteknev VARCHAR2,
                             p_keresztnev VARCHAR2,
                             p_mezszam VARCHAR2,
                             p_magassag NUMBER,
                             p_dobott_pontok NUMBER,
                             p_mecsek_szama NUMBER,
                             p_fizetes NUMBER,
                             p_karrier_kezdet DATE,
                             p_pozicio VARCHAR2,
                             p_csapat_id VARCHAR2);
                          
  PROCEDURE jatekosok_update(p_id NUMBER,
                             p_vezeteknev VARCHAR2,
                             p_keresztnev VARCHAR2,
                             p_mezszam VARCHAR2,
                             p_magassag NUMBER,
                             p_dobott_pontok NUMBER,
                             p_mecsek_szama NUMBER,
                             p_fizetes NUMBER,
                             p_karrier_kezdet DATE,
                             p_pozicio VARCHAR2,
                             p_csapat_id VARCHAR2);
                               
  FUNCTION jatekosok_select(p_id NUMBER) RETURN jatekosok_ty;
  
END jatekosok_pkg;
/
CREATE OR REPLACE PACKAGE BODY jatekosok_pkg IS

--DELETE--
  PROCEDURE jatekosok_delete(p_id NUMBER) IS
  BEGIN
    DELETE FROM jatekosok j WHERE j.id = p_id;
  END jatekosok_delete;
  
--INSERT--  
  PROCEDURE jatekosok_insert(p_id NUMBER,
                             p_vezeteknev VARCHAR2,
                             p_keresztnev VARCHAR2,
                             p_mezszam VARCHAR2,
                             p_magassag NUMBER,
                             p_dobott_pontok NUMBER,
                             p_mecsek_szama NUMBER,
                             p_fizetes NUMBER,
                             p_karrier_kezdet DATE,
                             p_pozicio VARCHAR2,
                             p_csapat_id NUMBER) IS                       
  BEGIN
    INSERT INTO jatekosok
      (id,
       vezeteknev,
       keresztnev,
       mezszam,
       magassag,
       dobott_pontok,
       mecsek_szama,
       fizetes,
       karrier_kezdet,
       pozicio,
       csapat_id)
     VALUES
       (p_id,
        p_vezeteknev,
        p_keresztnev,
        p_mezszam,
        p_magassag,
        p_dobott_pontok,
        p_mecsek_szama,
        p_fizetes,
        p_karrier_kezdet,
        p_pozicio,
        p_csapat_id);
  END jatekosok_insert;
  
--UPDATE--  
  PROCEDURE jatekosok_update (p_id NUMBER,
                              p_vezeteknev VARCHAR2,
                              p_keresztnev VARCHAR2,
                              p_mezszam VARCHAR2,
                              p_magassag NUMBER,
                              p_dobott_pontok NUMBER,
                              p_mecsek_szama NUMBER,
                              p_fizetes NUMBER,
                              p_karrier_kezdet DATE,
                              p_pozicio VARCHAR2,
                              p_csapat_id NUMBER) IS 
                              
  v_jatekosok jatekosok%ROWTYPE;
  BEGIN
    
    BEGIN
      SELECT *
        INTO v_jatekosok
        FROM jatekosok j
      WHERE j.id = p_id;
    EXCEPTION
      WHEN no_data_found THEN
      raise_application_error(exception_pkg.no_jatekosok_exc_code, 'Nincs ilyen sor');
    END;

  IF p_id IS NOT NULL
  THEN
    v_jatekosok.id := p_id;
  END IF;

  IF p_vezeteknev IS NOT NULL
  THEN
    v_jatekosok.vezeteknev := p_vezeteknev;
  END IF;

  IF p_keresztnev IS NOT NULL
  THEN
    v_jatekosok.keresztnev := p_keresztnev;
  END IF;
  
   IF p_mezszam IS NOT NULL
  THEN
    v_jatekosok.mezszam := p_mezszam;
  END IF;
  
   IF p_magassag IS NOT NULL
  THEN
    v_jatekosok.magassag := p_magassag;
  END IF;
  
  IF p_dobott_pontok IS NOT NULL
  THEN
    v_jatekosok.dobott_pontok := p_dobott_pontok;
  END IF;
  
  IF p_mecsek_szama IS NOT NULL
  THEN
    v_jatekosok.mecsek_szama := p_mecsek_szama;
  END IF;
  
  IF p_fizetes IS NOT NULL
  THEN
    v_jatekosok.fizetes := p_fizetes;
  END IF;
  
  IF p_karrier_kezdet IS NOT NULL
  THEN
    v_jatekosok.karrier_kezdet := p_karrier_kezdet;
  END IF;
  
  IF p_pozicio IS NOT NULL
  THEN
    v_jatekosok.pozicio := p_pozicio;
  END IF;
  
  IF p_csapat_id IS NOT NULL
  THEN
    v_jatekosok.csapat_id := p_csapat_id;
  END IF;
  
  UPDATE jatekosok j
     SET j.id = v_jatekosok.id,
         j.vezeteknev = v_jatekosok.vezeteknev,
         j.keresztnev = v_jatekosok.keresztnev,
         j.mezszam = v_jatekosok.mezszam,
         j.magassag = v_jatekosok.magassag,
         j.dobott_pontok = v_jatekosok.dobott_pontok,
         j.mecsek_szama = v_jatekosok.mecsek_szama,
         j.fizetes = v_jatekosok.fizetes,
         j.karrier_kezdet = v_jatekosok.karrier_kezdet,
         j.pozicio = v_jatekosok.pozicio,
         j.csapat_id =  v_jatekosok.csapat_id
   WHERE j.id = p_id;
  END jatekosok_update;

--SELECT--
  FUNCTION jatekosok_select(p_id number)
    RETURN jatekosok_ty IS
    res jatekosok_ty;
  BEGIN
    res := jatekosok_ty();
  
    SELECT j.id,
           j.vezeteknev,
           j.keresztnev,
           j.mezszam,
           j.magassag,
           j.dobott_pontok,
           j.mecsek_szama,
           j.fizetes,
           j.karrier_kezdet,
           j.pozicio,
           j.csapat_id
      INTO res.id,
           res.vezeteknev,
           res.keresztnev,
           res.mezszam,
           res.magassag,
           res.dobott_pontok,
           res.mecsek_szama,
           res.fizetes,
           res.karrier_kezdet,
           res.pozicio,
           res.csapat_id
      FROM jatekosok j
     WHERE j.id = p_id;
   
    RETURN(res);
  END jatekosok_select;

END jatekosok_pkg;
/
