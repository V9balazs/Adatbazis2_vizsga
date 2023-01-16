CREATE OR REPLACE TYPE jatekosok_ty AS OBJECT
(id NUMBER,
 vezeteknev VARCHAR2(250),
 keresztnev VARCHAR2(250),
 mezszam VARCHAR2(5),
 magassag NUMBER,
 dobott_pontok NUMBER,
 mecsek_szama NUMBER,
 fizetes NUMBER,
 karrier_kezdet DATE,
 pozicio VARCHAR2(250),
 csapat_id NUMBER,
 
 CONSTRUCTOR FUNCTION jatekosok_ty RETURN SELF AS RESULT
)
/
CREATE OR REPLACE TYPE BODY jatekosok_ty IS
  
  CONSTRUCTOR FUNCTION jatekosok_ty RETURN SELF AS RESULT IS
  BEGIN
    RETURN;
  END;
  
END;
/
