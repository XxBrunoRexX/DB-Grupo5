/*Cristopher Rondon Añaños*/
/*Query 1*/
CREATE FUNCTION f_max_inmueble_per_arr() returns TABLE
AS RETURN
  SELECT TOP 1 nombre, Quantity FROM
  (SELECT nombre, COUNT(Inmueble.arrendatario_id) Quantity FROM Arrendatario 
      JOIN Inmueble ON Inmueble.arrendatario_id = Arrendatario.id 
      GROUP BY nombre)  
  as Result ORDER BY Quantity DESC
SELECT * FROM f_max_inmueble_per_arr()
/*Query 2*/
CREATE PROCEDURE sp_find_by_district
  @district_id int 
AS
BEGIN
  SELECT d.id, nombre, provincia, arrendatario_id, precio, cbaños, area, direccion
  FROM Distrito D, Inmueble I
  WHERE I.distrito_id = @district_id AND D.id = @district_id
END;
