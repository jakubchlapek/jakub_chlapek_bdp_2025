SELECT 
    name,
    ST_Area(geometry) AS area
FROM cw2_pg.buildings
ORDER BY name ASC;
