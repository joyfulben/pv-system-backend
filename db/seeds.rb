# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username: 'Captain Planet', password: 'Green')

SiteOutput.create([
  {
    location: 'Boulder Colorado',
    sys_cap: 1000,
    ac_output: 4592.392,
    dc_output: 9383.343,
    month: 'August',
    user_id: 1
  },
  {
    location: 'Boulder Colorado',
    sys_cap: 1000,
    ac_output: 4292.392,
    dc_output: 5383.343,
    month: 'September',
    user_id: 1
  },
  {
    location: 'Boulder Colorado',
    sys_cap: 1000,
    ac_output: 3292.392,
    dc_output: 4383.343,
    month: 'October',
    user_id: 1
  }
  ])
