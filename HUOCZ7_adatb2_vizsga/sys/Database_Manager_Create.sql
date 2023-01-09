CREATE USER database_manager
  IDENTIFIED BY 13456789
  DEFAULT TABLESPACE USERS
  QUOTA UNLIMITED ON users
;

GRANT CREATE SESSION TO dog_manager;
GRANT CREATE TABLE TO dog_manager;
GRANT CREATE VIEW TO dog_manager;
GRANT CREATE SEQUENCE TO dog_manager;
GRANT CREATE PROCEDURE TO dog_manager;
GRANT CREATE TYPE TO dog_manager;
GRANT EXECUTE ON dbms_lock TO dog_manager;
GRANT CREATE TRIGGER TO dog_manager;
GRANT EXECUTE ON dbms_scheduler TO dog_manager;
GRANT CREATE JOB TO dog_manager;
