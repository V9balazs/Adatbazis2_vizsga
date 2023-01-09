ALTER TABLE IT_alkalmazott
ADD (napi_pihenoido NUMBER,
     napi_googlekereses NUMBER);
     
ALTER TABLE GE_alkalmazott
RENAME COLUMN utolso_modositas_ideje TO utolso_modositas;

ALTER TABLE HR_alkalmazott
DROP COLUMN rendezvenyen_reszvetel;

ALTER TABLE GE_alkalmazott
MODIFY(szerzodes_lejar NOT NULL);
