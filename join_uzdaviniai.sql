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
    *
FROM
    `receptas` r
JOIN 
    sujungimas_receptai_alergijos s ON r.id = s.receptas_id
JOIN
    visos_alergijos a ON a.id = s.visos_alergijos_id
WHERE 
    kaina < 7.20

--6. Grąžinkite kokie ingredientai yra naudojami pirmame, antrame ir trečiame recepte, tačiau pasikartojančių ingredientų neišveskite antrą kartą (tam naudojamas SELECT DISTINCT)
SELECT
    DISTINCT
FROM
    `receptas` r
JOIN    
	sujungimas_receptai_ingredientai s ON r.id = s.receptas_id
JOIN
	ingredientas i ON i.id = s.ingredientas_id
WHERE
    r.id = 1, r.id = 2, r.id = 3,

