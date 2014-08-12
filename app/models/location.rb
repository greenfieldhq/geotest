class Location < ActiveRecord::Base
#  acts_as_mappable :default_units => :kms,
#                   :default_formula => :sphere,
#                   :distance_field_name => :distance,
#                   :lat_column_name => :lat,
#                   :lng_column_name => :lng

  scope :close_to, -> (lat, lng, distance_in_meters = 2000) {
    where(%{
    ST_DWithin(
      ST_GeographyFromText(
        'SRID=4326;POINT(' || locations.lng || ' ' || locations.lat || ')'
      ),
      ST_GeographyFromText('SRID=4326;POINT(%f %f)'),
      %d
    )
  } % [lng, lat, distance_in_meters])
  }
end
