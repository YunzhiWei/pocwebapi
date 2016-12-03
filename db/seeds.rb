# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json/pure'
Mongo::Logger.logger.level = ::Logger::INFO
Authority.collection.find.delete_many

puts "adding authorities"
JSON.parse(File.read('db/authorities.json')).each do |doc|
  Authority.collection.insert_one(doc)
end

# puts "adding movies"
# JSON.parse(File.read('db/movies.json')).each do |doc|
#   release_date=doc["release_date"]
#   if release_date && release_date["$date"]
#     mongo_date = release_date["$date"]
#     iso8601=Date.xmlschema(mongo_date)
#     doc["release_date"]=iso8601
#   end
#   Movie.collection.insert_one(doc)
# end
