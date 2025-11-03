SELECT COUNT(*)
FROM karlsruhe.t2019_kar_poi_table
JOIN karlsruhe.t2019_kar_land_use_a
  ON ST_DWithin(karlsruhe.t2019_kar_poi_table.geom, karlsruhe.t2019_kar_land_use_a.geom, 300)
WHERE karlsruhe.t2019_kar_poi_table.type = 'Sporting Goods Store'
  AND karlsruhe.t2019_kar_land_use_a.type = 'Park (City/County)';