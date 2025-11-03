CREATE TABLE IF NOT EXISTS karlsruhe.t2019_kar_bridges AS
SELECT
    r.gid as railway_gid,
    w.gid as water_gid,
    ST_Intersection(r.geom, w.geom) AS geom
FROM karlsruhe.t2019_kar_railways r
JOIN karlsruhe.t2019_kar_water_lines w
  ON ST_Intersects(r.geom, w.geom)
WHERE ST_GeometryType(ST_Intersection(r.geom, w.geom)) = 'ST_Point';