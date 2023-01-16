CREATE OR REPLACE TYPE edzok_ty AS OBJECT
(id NUMBER,
 vezeteknev VARCHAR2(250),
 keresztnev VARCHAR2(250),
 tapasztalat_ev NUMBER,
 csapat_ezdo_ota DATE,
 fizetes NUMBER,
 
 CONSTRUCTOR FUNCTION edzok_ty RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY edzok_ty IS
  
  CONSTRUCTOR FUNCTION edzok_ty RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
  
END;
/
