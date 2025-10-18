SELECT 
    name,
    ST_Perimeter(geometry) AS perimeter,
    ST_Area(geometry) AS area
FROM cw2_pg.buildings
ORDER BY area DESC
LIMIT 2;
