CREATE TABLE IF NOT EXISTS karlsruhe.streets_reprojected AS
SELECT
    *,
    ST_Transform(geom, 3068) AS geom_transformed
FROM karlsruhe.t2019_kar_streets;