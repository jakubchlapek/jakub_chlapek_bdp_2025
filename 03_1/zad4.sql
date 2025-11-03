INSERT INTO cw3.obiekty (nazwa, geometria)
SELECT 'obiekt7', ST_Collect(o3.geometria, o4.geometria)
FROM cw3.obiekty o3, cw3.obiekty o4
WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4';