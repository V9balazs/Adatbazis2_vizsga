CREATE OR REPLACE PACKAGE csapatok_pkg IS

  PROCEDURE csapatok_delete(p_id NUMBER);
  
  PROCEDURE csapatok_insert(p_id NUMBER,
                            p_csapat_neve VARCHAR2,
                            p_letrehozas_ideje DATE,
                            p_gyoztes_meccsek NUMBER,
                            p_vesztes_meccsek NUMBER,
                            p_bajnokok NUMBER,
                            p_edzo_id NUMBER);
                          
  PROCEDURE csapatok_update(p_id NUMBER,
                            p_csapat_neve VARCHAR2,
                            p_letrehozas_ideje DATE,
                            p_gyoztes_meccsek NUMBER,
                            p_vesztes_meccsek NUMBER,
                            p_bajnokok NUMBER,
                            p_edzo_id NUMBER);
                               
  FUNCTION csapatok_select(p_id NUMBER) RETURN csapatok_ty;
  
END csapatok_pkg;
/
CREATE OR REPLACE PACKAGE BODY csapatok_pkg IS

--DELETE--
  PROCEDURE csapatok_delete(p_id NUMBER) IS
  BEGIN
    DELETE FROM csapatok cs WHERE cs.id = p_id;
  END csapatok_delete;
  
--INSERT--  
  PROCEDURE csapatok_insert(id NUMBER,
                            csapat_neve VARCHAR2,
                            letrehozas_ideje DATE,
                            gyoztes_meccsek NUMBER,
                            vesztes_meccsek NUMBER,
                            bajnokok NUMBER,
                            edzo_id NUMBER) IS                       
  BEGIN
    INSERT INTO jatekosok
      (id,
       csapat_neve,
       letrehozas_ideje,
       gyoztes_meccsek,
       vesztes_meccsek,
       bajnokok,
       edzo_id)
     VALUES
       (p_id,
        p_csapat_neve,
        p_letrehozas_ideje,
        p_gyoztes_meccsek,
        p_vesztes_meccsek,
        p_bajnokok,
        p_edzo_id);
  END csapatok_insert;
  
--UPDATE--  
  PROCEDURE csapatok_update (p_id NUMBER,
                             p_csapat_neve VARCHAR2,
                             p_letrehozas_ideje DATE,
                             p_gyoztes_meccsek NUMBER,
                             p_vesztes_meccsek NUMBER,
                             p_bajnokok NUMBER,
                             p_edzo_id NUMBER) IS 
                              
  v_csapatok csapatok%ROWTYPE;
  BEGIN
    
    BEGIN
      SELECT *
        INTO v_csapatok
        FROM csapatok cs
      WHERE cs.id = p_id;
    EXCEPTION
      WHEN no_data_found THEN
      raise_application_error(exception_pkg.no_cspatok_exc_code, 'Nincs ilyen sor');
    END;

  IF p_id IS NOT NULL
  THEN
    v_csapatok.id := p_id;
  END IF;

  IF p_csapat_neve IS NOT NULL
  THEN
    v_csapatok.csapat_neve := p_csapat_neve;
  END IF;

  IF p_letrehozas_ideje IS NOT NULL
  THEN
    v_csapatok.letrehozas_ideje := p_letrehozas_ideje;
  END IF;
  
   IF p_gyoztes_meccsek IS NOT NULL
  THEN
    v_csapatok.gyoztes_meccsek := p_gyoztes_meccsek;
  END IF;
  
   IF p_vesztes_meccsek IS NOT NULL
  THEN
    v_csapatok.vesztes_meccsek := p_vesztes_meccsek;
  END IF;
  
  IF p_bajnokok IS NOT NULL
  THEN
    v_csapatok.bajnokok := p_bajnokok;
  END IF;
  
  IF p_edzo_id IS NOT NULL
  THEN
    v_csapatok.edzo_id := p_edzo_id;
  END IF;
  
  UPDATE csapatok cs
     SET cs.id = v_csapatok.id,
         cs.csapat_neve = v_csapatok.csapat_neve,
         cs.letrehozas_ideje = v_csapatok.letrehozas_ideje,
         cs.gyoztes_meccsek = v_csapatok.gyoztes_meccsek,
         cs.vesztes_meccsek = v_csapatok.vesztes_meccsek,
         cs.bajnokok = v_csapatok.bajnokok,
         cs.edzo_id = v_csapatok.edzo_id
   WHERE cs.id = p_id;
  END csapatok_update;

--SELECT--
  FUNCTION csapatok_select(p_id number)
    RETURN csapatok_ty IS
    res csapatok_ty;
  BEGIN
    res := csapatok_ty();
  
    SELECT cs.id,
           cs.csapat_neve,
           cs.letrehozas_ideje,
           cs.gyoztes_meccsek,
           cs.vesztes_meccsek,
           cs.bajnokok,
           cs.edzo_id
      INTO res.id,
           res.csapat_neve,
           res.letrehozas_ideje,
           res.gyoztes_meccsek,
           res.vesztes_meccsek,
           res.bajnokok,
           res.edzo_id
      FROM csapatok cs
     WHERE cs.id = p_id;
   
    RETURN(res);
  END csapatok_select;

END csapatok_pkg;
/
