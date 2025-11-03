CREATE TABLE IF NOT EXISTS karlsruhe.buildings_2019_new_or_changed AS
WITH
changed_buildings AS (
    SELECT
        a.*,
        'odnowiony'::text AS status
    FROM karlsruhe.t2019_kar_buildings a
    JOIN karlsruhe.t2018_kar_buildings b
      ON ST_Intersects(a.geom, b.geom)
),
new_buildings AS (
    SELECT
        a.*,
        'nowy'::text AS status
    FROM karlsruhe.t2019_kar_buildings a
    WHERE NOT EXISTS (
        SELECT 1
        FROM karlsruhe.t2018_kar_buildings b
        WHERE ST_Intersects(a.geom, b.geom)
    )
)
SELECT * 
FROM changed_buildings
UNION ALL
SELECT * 
FROM new_buildings;