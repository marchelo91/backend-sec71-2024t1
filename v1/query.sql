-- mysql
CREATE DATABASE ciisa_backend_v1_71;
CREATE USER 'ciisa_backend_v1_71'@'localhost' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON ciisa_backend_v1_71.* TO 'ciisa_backend_v1_71'@'localhost';
FLUSH PRIVILEGES; 

CREATE TABLE mantenedor(
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    activo BOOLEAN NOT NULL DEFAULT FALSE
)

--GET /ALL
SELECT id, nomnre, activo FROM mantenedor;
--GET / BY ID
SELECT id, nombre, activo FROM mantenedor WHERE id = 3;
--POST
INSERT INTO mantenedor (id, nombre) VALUES

(1, 'ejemplo 1'),
(2, 'ejemplo 2'),
(3, 'ejemplo 3');

--PATCH / ENABLE
UPDATE mantenedor SET activo = true WHERE id = 3;
--PATCH / DISABLE
UPDATE mantenedor SET activo = false WHERE id = 3;
--PUT
UPDATE mantenedor SET nombre = 'example 3' WHERE id = 3;
--DELETE
DELETE FROM mantenedor WHERE id = 3;