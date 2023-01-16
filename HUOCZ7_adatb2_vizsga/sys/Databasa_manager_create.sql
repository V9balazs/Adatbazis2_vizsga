DECLARE
  b_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO b_count FROM dba_users t WHERE t.username='DATABASE_MANAGER';
  IF b_count = 1 THEN 
    EXECUTE IMMEDIATE 'DROP USER database_manager CASCADE';
  END IF;
END;
 
CREATE USER database_manager 
IDENTIFIED BY "123456789" 
DEFAULT TABLESPACE users
QUOTA UNLIMITED ON users;

GRANT CREATE TABLE TO database_manager;
GRANT CREATE SEQUENCE TO database_manager;
GRANT CREATE VIEW TO database_manager;
GRANT CREATE TYPE TO database_manager;
GRANT CREATE TRIGGER TO database_manager;
GRANT CREATE SESSION TO database_manager;
GRANT CREATE PROCEDURE TO database_manager;
