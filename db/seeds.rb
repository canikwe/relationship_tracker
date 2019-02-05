# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

k = Kid.create(name: "Billy Bod", age: 16, hobby: "Ballet", adult: false)
k1 = Kid.create(name: "Mary anne", age: 5, hobby: "Cars", adult: false)
k2 = Kid.create(name: "Heloise", age: 23, hobby: "Coding", adult: true)

c = CareTaker.create(name: "Joseph", age: 120, job: "Old guy")
c1 = CareTaker.create(name: "Ted", age: 30, job: "Psychopath")
c2 = CareTaker.create(name: "Jim", age: 40, job: "Commedian")
c3 = CareTaker.create(name: "Arnold", age: 40, job: "Actor")

Relationship.create(care_taker: c, kid: k, status: 6)
Relationship.create(care_taker: c2, kid: k1, status: 4)
Relationship.create(care_taker: c2, kid: k2, status: 10)
