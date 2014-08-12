class AddPointIndexToLocations < ActiveRecord::Migration
  def up
    execute %{
      create index idx_locations_location ON locations using gist (
        ST_GeographyFromText(
          'SRID=4326;POINT(' || locations.lng || ' ' || locations.lat || ')'
        )
      )
    }
  end

  def down
    execute %{drop index idx_locations_location}
  end
end
