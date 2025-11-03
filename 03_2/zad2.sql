SELECT 
    p.type,
    COUNT(*) AS poi_count
FROM karlsruhe.t2019_kar_poi_table p
JOIN karlsruhe.buildings_2019_new_or_changed b
    ON ST_DWithin(p.geom, b.geom, 500)
GROUP BY p.type
ORDER BY poi_count DESC;