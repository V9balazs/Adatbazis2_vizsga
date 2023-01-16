CREATE TABLE csapatok(
    id NUMBER PRIMARY KEY,
    csapat_neve VARCHAR2(250 CHAR) NOT NULL,
    letrehozas_ideje DATE,
    gyoztes_meccsek NUMBER,
    vesztes_meccsek NUMBER,
    bajnokok NUMBER,
    edzo_id NUMBER NOT NULL,
    modositas_ideje TIMESTAMP
)


ALTER TABLE csapatok ADD CONSTRAINT fk_csapatok_edzok
    FOREIGN KEY(edzo_id) REFERENCES edzok(id);


INSERT INTO csapatok (id, csapat_neve, letrehozas_ideje, gyoztes_meccsek, vesztes_meccsek, bajnokok, edzo_id, modositas_ideje)
values (1, 'Boston Celtics', to_date('1946', 'yyyy'), 534, 221, 17, 1, to_date('2023-01-13 18:01:32', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO csapatok (id, csapat_neve, letrehozas_ideje, gyoztes_meccsek, vesztes_meccsek, bajnokok, edzo_id, modositas_ideje)
values (2, 'Charlotte Hornets', to_date('1988', 'yyyy'), 411, 189, 0, 2, to_date('2023-01-13 18:01:32', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO csapatok (id, csapat_neve, letrehozas_ideje, gyoztes_meccsek, vesztes_meccsek, bajnokok, edzo_id, modositas_ideje)
values (3, 'Indiana Pacers', to_date('1967', 'yyyy'), 467, 201, 3, 3, to_date('2023-01-13 18:01:32', 'yyyy-mm-dd hh24:mi:ss'));
INSERT INTO csapatok (id, csapat_neve, letrehozas_ideje, gyoztes_meccsek, vesztes_meccsek, bajnokok, edzo_id, modositas_ideje)
values (4, 'Memphis Grizzlies', to_date('1995', 'yyyy'), 367, 138, 0, 4, to_date('2023-01-13 18:01:32', 'yyyy-mm-dd hh24:mi:ss'));
