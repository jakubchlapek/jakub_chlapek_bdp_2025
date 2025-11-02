SELECT SUM(ST_Area(ST_Buffer(geometria, 5))) AS total_buffer_area
FROM cw3.obiekty
WHERE ST_GeometryType(geometria) NOT IN ('ST_CurvePolygon', 'ST_CompoundCurve', 'ST_CircularString');