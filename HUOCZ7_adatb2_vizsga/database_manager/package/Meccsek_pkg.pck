CREATE OR REPLACE PACKAGE meccsek_pkg IS

  PROCEDURE meccsek_delete(p_id NUMBER);
  
  PROCEDURE meccsek_insert(p_id NUMBER,
                           p_helyszin VARCHAR2,
                           p_mecs_ideje DATE,
                           p_hazai_csapat_id NUMBER,
                           p_hazai_pontszam NUMBER,
                           p_ellenfel_csapat_id NUMBER,
                           p_ellenfel_pontszam NUMBER);
                          
  PROCEDURE meccsek_update(p_id NUMBER,
                           p_helyszin VARCHAR2,
                           p_mecs_ideje DATE,
                           p_hazai_csapat_id NUMBER,
                           p_hazai_pontszam NUMBER,
                           p_ellenfel_csapat_id NUMBER,
                           p_ellenfel_pontszam NUMBER);
                               
  FUNCTION meccsek_select(p_id NUMBER) RETURN meccsek_ty;
  
END meccsek_pkg;
/
CREATE OR REPLACE PACKAGE BODY meccsek_pkg IS

--DELETE--
  PROCEDURE meccsek_delete(p_id NUMBER) IS
  BEGIN
    DELETE FROM meccsek m WHERE m.id = p_id;
  END meccsek_delete;
  
--INSERT--  
  PROCEDURE meccsek_insert(p_id NUMBER,
                           p_helyszin VARCHAR2,
                           p_mecs_ideje DATE,
                           p_hazai_csapat_id NUMBER,
                           p_hazai_pontszam NUMBER,
                           p_ellenfel_csapat_id NUMBER,
                           p_ellenfel_pontszam NUMBER) IS                       
  BEGIN
    INSERT INTO edzok
      (id,
       helyszin,
       mecs_ideje,
       hazai_csapat_id,
       hazai_pontszam,
       ellenfel_csapat_id,
       ellenfel_pontszam)
     VALUES
       (p_id,
        p_helyszin,
        p_mecs_ideje,
        p_hazai_csapat_id,
        p_hazai_pontszam,
        p_ellenfel_csapat_id,
        p_ellenfel_pontszam);
  END meccsek_insert;
  
--UPDATE--  
  PROCEDURE meccsek_update (p_id NUMBER,
                            p_helyszin VARCHAR2,
                            p_mecs_ideje DATE,
                            p_hazai_csapat_id NUMBER,
                            p_hazai_pontszam NUMBER,
                            p_ellenfel_csapat_id NUMBER,
                            p_ellenfel_pontszam NUMBER) IS 
                              
  v_meccsek meccsek%ROWTYPE;
  BEGIN
    
    BEGIN
      SELECT *
        INTO v_meccsek
        FROM meccsek m
      WHERE m.id = p_id;
    EXCEPTION
      WHEN no_data_found THEN
      raise_application_error(exception_pkg.no_meccsek_exc_code, 'Nincs ilyen sor');
    END;

  IF p_id IS NOT NULL
  THEN
    v_meccsek.id := p_id;
  END IF;

  IF p_helyszin IS NOT NULL
  THEN
    v_meccsek.helyszin := p_helyszin;
  END IF;

  IF p_mecs_ideje IS NOT NULL
  THEN
    v_meccsek.mecs_ideje := p_mecs_ideje;
  END IF;
  
   IF p_hazai_csapat_id IS NOT NULL
  THEN
    v_meccsek.hazai_csapat_id := p_hazai_csapat_id;
  END IF;
  
   IF p_hazai_pontszam IS NOT NULL
  THEN
    v_meccsek.hazai_pontszam := p_hazai_pontszam;
  END IF;
  
  IF p_ellenfel_csapat_id IS NOT NULL
  THEN
    v_meccsek.ellenfel_csapat_id := p_ellenfel_csapat_id;
  END IF;
  
  IF p_ellenfel_pontszam IS NOT NULL
  THEN
    v_meccsek.ellenfel_pontszam := p_ellenfel_pontszam;
  END IF;
  
  UPDATE meccsek m
     SET m.id = v_meccsek.id,
         m.helyszin = v_meccsek.helyszin,
         m.mecs_ideje = v_meccsek.mecs_ideje,
         m.hazai_csapat_id = v_meccsek.hazai_csapat_id,
         m.hazai_pontszam = v_meccsek.hazai_pontszam,
         m.ellenfel_csapat_id = v_meccsek.ellenfel_csapat_id,
         m.ellenfel_pontszam = v_meccsek.ellenfel_pontszam
   WHERE m.id = p_id;
  END meccsek_update;

--SELECT--
  FUNCTION meccsek_select(p_id number)
    RETURN meccsek_ty IS
    res meccsek_ty;
  BEGIN
    res := meccsek_ty();
  
    SELECT m.id,
           m.helyszin,
           m.mecs_ideje,
           m.hazai_csapat_id,
           m.hazai_pontszam,
           m.ellenfel_csapat_id,
           m.ellenfel_pontszam
      INTO res.id,
           res.helyszin,
           res.mecs_ideje,
           res.hazai_csapat_id,
           res.hazai_pontszam,
           ress.ellenfel_csapat_id,
           res.ellenfel_pontszam
      FROM meccsek m
     WHERE m.id = p_id;
   
    RETURN(res);
  END meccsek_select;

END meccsek_pkg;
/
