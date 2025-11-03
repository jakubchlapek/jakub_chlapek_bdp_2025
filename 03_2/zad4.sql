CREATE TABLE IF NOT EXISTS karlsruhe.input_points AS
SELECT * FROM (
    VALUES
        (1, ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326)),
        (2, ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326))
) AS t(id, geom);
