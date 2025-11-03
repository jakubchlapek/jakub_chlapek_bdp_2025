ALTER TABLE karlsruhe.input_points ALTER COLUMN geom TYPE geometry(Point, 3068);
UPDATE karlsruhe.input_points SET geom = ST_Transform(geom, 3068);