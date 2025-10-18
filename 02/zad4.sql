CREATE TABLE cw2_pg.buildings (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(POLYGON) NOT NULL,
    name VARCHAR(100) NOT NULL
);
COMMENT ON TABLE cw2_pg.buildings IS 'Table containing building geometries.';

CREATE TABLE cw2_pg.roads (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(LINESTRING) NOT NULL,
    name VARCHAR(100) NOT NULL
);
COMMENT ON TABLE cw2_pg.roads IS 'Table containing road geometries.';

CREATE TABLE cw2_pg.poi (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(POINT) NOT NULL,
    name VARCHAR(100) NOT NULL
);
COMMENT ON TABLE cw2_pg.poi IS 'Table containing point of interest geometries.';