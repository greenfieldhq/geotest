# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Location.delete_all

Location.create(street: 'Test St. 1', city: 'Boston', state: 'MA', lat: 42.3501505026161, lng: -71.0884282027276)
Location.create(street: 'Test St. 2', city: 'Boston', state: 'MA', lat: 42.3502093492703, lng: -71.0881837705541) 
Location.create(street: 'Test St. 3', city: 'Boston', state: 'MA', lat: 42.3502846181621, lng: -71.08781156688) 
Location.create(street: 'Test St. 4', city: 'Boston', state: 'MA', lat: 42.3504050481934, lng: -71.0873541823035) 
Location.create(street: 'Test St. 5', city: 'Boston', state: 'MA', lat: 42.3505117928523, lng: -71.0869819787) 
Location.create(street: 'Test St. 6', city: 'Boston', state: 'MA', lat: 42.3503617013047, lng: -71.0848417922989) 
Location.create(street: 'Test St. 7', city: 'Boston', state: 'MA', lat: 42.3503369586302, lng: -71.0849103844536) 
Location.create(street: 'Test St. 8', city: 'Boston', state: 'MA', lat: 42.3492991883969, lng: -71.0899921289961) 
Location.create(street: 'Test St. 9', city: 'Boston', state: 'MA', lat: 42.3492970821135, lng: -71.0900469913458) 
Location.create(street: 'Test St. 10', city: 'Texas', state: 'TX', lat: 32.918593, lng: -96.958444) 
Location.create(street: 'Test St. 11', city: 'Texas', state: 'TX', lat: 32.895155, lng: -96.958444) 
