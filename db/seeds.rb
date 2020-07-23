Mission.destroy_all
Planet.destroy_all
Scientist.destroy_all

10.times do
    Scientist.create(name: Faker::Science.scientist, field: Faker::Space.company)
end


10.times do
    Planet.create(name: Faker::Space.planet, distance_from_earth: Faker::Space.distance_measurement, nearest_star: Faker::Space.star)
end


20.times do
    Mission.create(name: Faker::Space.launch_vehicle, scientist_id: Scientist.all.sample.id, planet_id: Planet.all.sample.id)
end