WITH
line AS (
    SELECT ST_MakeLine(geom) AS geom
    FROM karlsruhe.input_points
),
street_nodes AS (
    SELECT gid, ST_Transform(geom, 3068) AS geom FROM karlsruhe.t2019_kar_street_node 
),
near_nodes AS (
    SELECT n.*
    FROM street_nodes n
    JOIN line l ON ST_DWithin(n.geom, l.geom, 200)
)
SELECT * FROM near_nodes;