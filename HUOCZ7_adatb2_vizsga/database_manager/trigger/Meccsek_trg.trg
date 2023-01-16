CREATE OR REPLACE TRIGGER meccsek_trg
  BEFORE INSERT OR UPDATE ON meccsek
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.id IS NULL
    THEN
      :new.id := jatekosok_seq.nextval;
    END IF;
    :new.modositas_ideje := SYSDATE;
  END IF;
  
  IF updating
  THEN
    :new.modositas_ideje := SYSDATE;
  END IF;
END meccsek_trg;
/
