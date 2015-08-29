# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: "cming.xu@gmail.com", password: "cming.xu@gmail.com", roles: ["admin"])
owner = User.create!(email: "siteowner@siteowner.com", password: "siteowner@siteowner", roles: ["siteowner", "user"])

User.create!(email: "user@user.com", password: "user@user", roles: ["user", "admin"])

