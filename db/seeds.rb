# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cat1 = Cat.create!(birth_date: "2000-01-01" , color: "red", name: "Markov", sex: "M", description: "A cat")
cat2 = Cat.create!(birth_date: "2005-01-01",
  color: "white",
  name: "Sennacy",
  sex: "F",
  description: "Another cat"
)

cat3 = Cat.create!(birth_date: "2005-03-17",
  color: "tan",
  name: "Eddy",
  sex: "M",
  description: "yet another cat"
)

request1 = CatRentalRequest.create!(start_date: '2015-10-20', end_date: '2015-10-25', cat_id: 1, status: "APPROVED")
request2 = CatRentalRequest.create!(start_date: '2015-10-22', end_date: '2015-10-28', cat_id: 1)

request3 = CatRentalRequest.create!(start_date: '2015-09-22', end_date: '2015-09-28', cat_id: 1)
