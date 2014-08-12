SELECT *
FROM locations
WHERE ST_Distance_Sphere(the_geom, ST_MakePoint(your_lon,your_lat)) <= radius_mi * 1609.34


insert into locations (street, lat, lng) (
  select 'POI ' || i as street, 39 + x.lat as lat, -76 - x.lon as lng
  from (
    select i, random() * 10 as lat, random() * 10 as lon
    from generate_series(1,1000000) as i
  )                                                            
as x );

SELECT "locations".* FROM "locations" WHERE (
 ST_DWithin(
 ST_GeographyFromText(
 'SRID=4326;POINT(' || locations.lng || ' ' || locations.lat || ')'
 ),
 ST_GeographyFromText('SRID=4326;POINT(-76.000000 39.000000)'),
 2000
 )
 )
