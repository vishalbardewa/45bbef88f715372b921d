# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channels = Channel.create([
  { name: 'Star Plus', location: 'India' }, 
  { name: 'Star World', location: 'UK' }, 
  { name: 'Zee News', location: 'India' }, 
  { name: 'HistoryTV', location: 'USA' }, 
  { name: 'Travel XP', location: 'India' }
])

TvShow.create([
  {title: 'Serial A', channel: channels.first, airtime: Time.now, favourite: false, description: 'A series in channel'},
  {title: 'Big Bang', channel: channels.second, airtime: Time.now, favourite: false, description: 'SciFi Series'},
  {title: 'Valley', channel: channels.last, airtime: Time.now, favourite: false, description: 'Thriller Series'},
  {title: 'The Mirage', channel: channels.third, airtime: Time.now, favourite: false, description: 'SciFi Series'},
  {title: 'Vancouver', channel: channels.first, airtime: Time.now, favourite: false, description: 'Drama'},
  {title: 'Roadside', channel: channels.second, airtime: Time.now, favourite: false, description: 'Action'},
  {title: 'Breaking Good', channel: channels.fourth, airtime: Time.now, favourite: false, description: 'Action'}

])