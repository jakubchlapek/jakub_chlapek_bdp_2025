SELECT 
    ST_Distance(b.geometry, p.geometry) AS distance
FROM cw2_pg.buildings b
JOIN cw2_pg.poi p ON p.name = 'K'
WHERE b.name = 'BuildingC';
