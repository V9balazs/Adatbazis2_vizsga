CREATE OR REPLACE TYPE meccsek_ty AS OBJECT
(id NUMBER,
 helyszin VARCHAR2(250),
 mecs_ideje DATE,
 hazai_csapat_id NUMBER,
 hazai_pontszam NUMBER,
 ellenfel_csapat_id NUMBER,
 ellenfel_pontszam NUMBER,
 csapat_id NUMBER,
 
 CONSTRUCTOR FUNCTION meccsek_ty RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY meccsek_ty IS
  
  CONSTRUCTOR FUNCTION meccsek_ty RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
  
END;
/
