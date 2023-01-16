CREATE OR REPLACE PACKAGE exception_pkg IS

  no_jatekosok_exc EXCEPTION;
  no_pilota_exc_code CONSTANT NUMBER := -20111;
  PRAGMA EXCEPTION_INIT(no_jatekosok_exc, -20111);
  
  no_csapatok_exc EXCEPTION;
  no_csapatok_exc_code CONSTANT NUMBER := -20222;
  PRAGMA EXCEPTION_INIT(no_csapatok_exc, -20222);
  
  no_edzok_exc EXCEPTION;
  no_edzok_exc_code CONSTANT NUMBER := -20333;
  PRAGMA EXCEPTION_INIT(no_edzok_exc, -20333);
  
  no_meccsek_exc EXCEPTION;
  no_meccsek_exc_code CONSTANT NUMBER := -20444;
  PRAGMA EXCEPTION_INIT(no_meccsek_exc, -20444);

END exception_pkg;
/
