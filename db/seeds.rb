# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Picture.create(
  title:  'The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  created_at: 2.years.ago
)

Picture.create(
  title:  'Sea Power',
  artist: 'Stephen Scullion',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  created_at: 18.months.ago
)

Picture.create(
  title:  'Into the Poppies',
  artist: 'John Wilhelm',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  created_at: 13.months.ago
)

Picture.create(
  title:  'Ver 2 The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  created_at: 10.months.ago
)

Picture.create(
  title:  'Ver 3 The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/girl.jpg',
  created_at: 1.month.ago
)

Picture.create(
  title:  'Ver 4 The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg',
  created_at: 1.week.ago
)

Picture.create(
  title:  'Ver 5 The old church on the coast of White sea',
  artist: 'Sergey Ershov',
  url:    'http://bitmakerlabs.s3.amazonaws.com/photogur/house.jpg',
  created_at: 1.day.ago
)
