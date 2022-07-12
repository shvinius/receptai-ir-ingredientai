--1. Grąžinkite pirmo recepto visų ingredientų id ir pavadinimus.
SELECT
    i.id, i.pavadinimas
FROM
    `receptas` r
JOIN
    sujungimas_receptai_ingredientai s ON r.id = s.receptas_id
JOIN
    ingredientas i ON i.id = s.ingredientas_id
WHERE
    r.id = 1

--2. Grąžinkite antro recepto ingredientų kainas ir kalorijas per 100 g.
SELECT
    i.kaina, i.kalorijos_per100g
FROM
    `receptas` r
JOIN    
	sujungimas_receptai_ingredientai s ON r.id = s.receptas_id
JOIN
	ingredientas i ON i.id = s.ingredientas_id
WHERE
    r.id = 2

--3. Grąžinkite trečio recepto ingredientų kainų sumą (nenaudojant kaina stulpelio recepto lentelėje, o sumuojant ingredientų kainas)
SELECT
    SUM(i.kaina)
FROM
    `receptas` r
JOIN 
    sujungimas_receptai_ingredientai s ON r.id = s.receptas_id
JOIN
    ingredientas i ON i.id = s.ingredientas_id
WHERE 
    r.id = 3    

--4. Grąžinkite ketvirto recepto visas alergijas ir jų id.
SELECT
    *
FROM
    `receptas` r
JOIN 
    sujungimas_receptai_alergijos s ON r.id = s.receptas_id
JOIN
    visos_alergijos a ON a.id = s.visos_alergijos_id
WHERE 
    r.id = 4    

--5. Grąžinkite visas alergijas receptų, kurių kaina yra mažiau nei 7.20.    
SELECT
    a.*
FROM
    `receptas` r
JOIN 
    sujungimas_receptai_alergijos s ON r.id = s.receptas_id
JOIN
    visos_alergijos a ON a.id = s.visos_alergijos_id
WHERE 
    r.kaina < 7.20

--6. Grąžinkite kokie ingredientai yra naudojami pirmame, antrame ir trečiame recepte, tačiau pasikartojančių ingredientų neišveskite antrą kartą (tam naudojamas SELECT DISTINCT)
SELECT DISTINCT
    i.pavadinimas
FROM
    `receptas` r
JOIN    
	sujungimas_receptai_ingredientai s ON r.id = s.receptas_id
JOIN
	ingredientas i ON i.id = s.ingredientas_id
WHERE
    r.id >= 1 AND r.id <= 3;

--7. Grąžinkite receptų id, pavadinimą ir nurodymus, kurie yra “Universali” virtuvės receptai.
SELECT 
    r.id, r.pavadinimas, r.nurodymai
FROM
    `receptas` r
JOIN    
	sujungimas_receptai_virtuve s ON r.id = s.receptas_id
JOIN
	virtuves_salys v ON v.id = s.virtuve_salis_id
WHERE
    v.id = 3

--8. Grąžinkite visas devinto (id) ingrediento alergijas (id ir pavadinimas stulpelius) surikiuotus abėcėlės didėjančia tvarka pagal pavadinimo stulpelį.    
SELECT 
    v.id, v.pavadinimas
FROM
    `ingredientas` i
JOIN    
	sujungimas_ingredientai_ir_alergijos s ON i.id = s.id_ingredientas
JOIN
	visos_alergijos v ON v.id = s.id_visos_alergijos
WHERE
    i.id = 9