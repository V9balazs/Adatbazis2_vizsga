CREATE TABLE meccsek(
    id NUMBER PRIMARY KEY,
    helyszin VARCHAR2(250 CHAR) NOT NULL,
    mecs_ideje DATE,
    hazai_csapat_id NUMBER NOT NULL UNIQUE,
    hazai_pontszam NUMBER,
    ellenfel_csapat_id NUMBER NOT NULL UNIQUE,
    ellenfel_pontszam NUMBER,
    modositas_ideje TIMESTAMP
)


ALTER TABLE meccsek ADD CONSTRAINT fk_meccsek_csapatok
    FOREIGN KEY(hazai_csapat_id) REFERENCES csapatok(id);
ALTER TABLE meccsek ADD CONSTRAINT fk_meccsek_csapatok
    FOREIGN KEY(ellenfel_csapat_id) REFERENCES csapatok(id);
    

INSERT INTO meccsek (id, helyszin, mecs_ideje, hazai_csapat_id, hazai_pontszam, ellenfel_csapat_id, ellenfel_pontszam, modositas_ideje)
values (1, 'Charlotte', to_date('2023-01-14', 'yyyy-mm-dd'), 1, 122, 2, 106, to_date('2023-01-13 17:58:41', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO meccsek (id, helyszin, mecs_ideje, hazai_csapat_id, hazai_pontszam, ellenfel_csapat_id, ellenfel_pontszam, modositas_ideje)
values (2, 'Memphis', to_date('2023-01-14', 'yyyy-mm-dd'), 4, 130, 3, 112, to_date('2023-01-13 17:58:41', 'yyyy-mm-dd hh24:mi:ss'));
