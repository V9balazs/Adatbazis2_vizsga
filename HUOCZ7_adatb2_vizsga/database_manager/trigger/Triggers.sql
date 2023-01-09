CREATE OR REPLACE TRIGGER tr_ITDB
  BEFORE INSERT ON IT_alkalmazott
  FOR EACH ROW
  WHEN (new.id IS NULL)
BEGIN
  :new.id := ITDB_id_seq.nextval;
END;

CREATE OR REPLACE TRIGGER tr_HRDB
  BEFORE INSERT ON HR_alkalmazott
  FOR EACH ROW
  WHEN (new.id IS NULL)
BEGIN
  :new.id := HRDB_id_seq.nextval;
END;

CREATE OR REPLACE TRIGGER tr_ACDB
  BEFORE INSERT ON AC_alkalmazott
  FOR EACH ROW
  WHEN (new.id IS NULL)
BEGIN
  :new.id := ACDB_id_seq.nextval;
END;

CREATE OR REPLACE TRIGGER tr_GEDB
  BEFORE INSERT ON GE_alkalmazott
  FOR EACH ROW
  WHEN (new.utolso_modositas_ideje IS NULL)
BEGIN
  :new.utolso_modositas_ideje := SYSDATE;
END;
