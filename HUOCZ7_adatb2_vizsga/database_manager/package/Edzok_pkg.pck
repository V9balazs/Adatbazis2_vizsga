CREATE OR REPLACE PACKAGE edzok_pkg IS

  PROCEDURE edzok_delete(p_id NUMBER);
  
  PROCEDURE edzok_insert(p_id NUMBER,
                         p_vezeteknev VARCHAR2,
                         p_keresztnev VARCHAR2,
                         p_tapasztalat_ev NUMBER,
                         p_csapat_ezdo_ota DATE,
                         p_fizetes NUMBER);
                          
  PROCEDURE edzok_update(p_id NUMBER,
                         p_vezeteknev VARCHAR2,
                         p_keresztnev VARCHAR2,
                         p_tapasztalat_ev NUMBER,
                         p_csapat_ezdo_ota DATE,
                         p_fizetes NUMBER);
                               
  FUNCTION edzok_select(p_id NUMBER) RETURN edzok_ty;
  
END edzok_pkg;
/
CREATE OR REPLACE PACKAGE BODY edzok_pkg IS

--DELETE--
  PROCEDURE edzok_delete(p_id NUMBER) IS
  BEGIN
    DELETE FROM edzok e WHERE e.id = p_id;
  END edzok_delete;
  
--INSERT--  
  PROCEDURE edzok_insert(p_id NUMBER,
                         p_vezeteknev VARCHAR2,
                         p_keresztnev VARCHAR2,
                         p_tapasztalat_ev NUMBER,
                         p_csapat_ezdo_ota DATE,
                         p_fizetes NUMBER) IS                       
  BEGIN
    INSERT INTO edzok
      (id,
       vezeteknev,
       keresztnev,
       tapasztalat_ev,
       csapat_ezdo_ota,
       fizetes)
     VALUES
       (p_id,
        p_vezeteknev,
        p_keresztnev,
        p_tapasztalat_ev,
        p_csapat_ezdo_ota,
        p_fizetes);
  END edzok_insert;
  
--UPDATE--  
  PROCEDURE edzok_update (p_id NUMBER,
                          p_vezeteknev VARCHAR2,
                          p_keresztnev VARCHAR2,
                          p_tapasztalat_ev NUMBER,
                          p_csapat_ezdo_ota DATE,
                          p_fizetes NUMBER) IS 
                              
  v_edzok edzok%ROWTYPE;
  BEGIN
    
    BEGIN
      SELECT *
        INTO v_edzok
        FROM edzok e
      WHERE e.id = p_id;
    EXCEPTION
      WHEN no_data_found THEN
      raise_application_error(exception_pkg.no_edzok_exc_code, 'Nincs ilyen sor');
    END;

  IF p_id IS NOT NULL
  THEN
    v_edzok.id := p_id;
  END IF;

  IF p_vezeteknev IS NOT NULL
  THEN
    v_edzok.vezeteknev := p_vezeteknev;
  END IF;

  IF p_keresztnev IS NOT NULL
  THEN
    v_edzok.keresztnev := p_keresztnev;
  END IF;
  
   IF p_tapasztalat_ev IS NOT NULL
  THEN
    v_edzok.tapasztalat_ev := p_tapasztalat_ev;
  END IF;
  
   IF p_csapat_ezdo_ota IS NOT NULL
  THEN
    v_edzok.csapat_ezdo_ota := p_csapat_ezdo_ota;
  END IF;
  
  IF p_fizetes IS NOT NULL
  THEN
    v_edzok.fizetes := p_fizetes;
  END IF;
  
  UPDATE edzok e
     SET e.id = v_edzok.id,
         e.vezeteknev = v_edzok.vezeteknev,
         e.keresztnev = v_edzok.keresztnev,
         e.tapasztalat_ev = v_edzok.tapasztalat_ev,
         e.csapat_ezdo_ota = v_edzok.csapat_ezdo_ota,
         e.fizetes = v_edzok.fizetes
   WHERE e.id = p_id;
  END edzok_update;

--SELECT--
  FUNCTION edzok_select(p_id number)
    RETURN edzok_ty IS
    res edzok_ty;
  BEGIN
    res := edzok_ty();
  
    SELECT e.id,
           e.vezeteknev,
           e.keresztnev,
           e.tapasztalat_ev,
           e.csapat_ezdo_ota,
           e.fizetes
      INTO res.id,
           res.vezeteknev,
           res.keresztnev,
           res.tapasztalat_ev,
           res.csapat_ezdo_ota,
           res.fizetes
      FROM edzok e
     WHERE e.id = p_id;
   
    RETURN(res);
  END edzok_select;

END edzok_pkg;
/
