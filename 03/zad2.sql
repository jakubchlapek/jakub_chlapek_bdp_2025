WITH shortest_line AS (
    SELECT ST_ShortestLine(o3.geometria, o4.geometria) AS geom
    FROM cw3.obiekty o3, cw3.obiekty o4
    WHERE o3.nazwa = 'obiekt3' AND o4.nazwa = 'obiekt4'
)
SELECT ST_Area(ST_Buffer(geom, 5)) AS buffer_area
FROM shortest_line;