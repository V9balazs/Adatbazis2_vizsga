CREATE OR REPLACE TYPE csapatok_ty AS OBJECT
(id NUMBER,
 csapat_neve VARCHAR2(250),
 letrehozas_ideje DATE,
 gyoztes_meccsek NUMBER,
 vesztes_meccsek NUMBER,
 bajnokok NUMBER,
 edzo_id NUMBER,
 
 CONSTRUCTOR FUNCTION csapatok_ty RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY csapatok_ty IS
  
  CONSTRUCTOR FUNCTION csapatok_ty RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
  
END;
/
