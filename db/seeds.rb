# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EXCUSES = [
  'I thought you signed off on that.',
  'Where were you when the program blew up?',
  'That feature was slated for phase two.',
  'That feature would be outside the scope.',
  'It must be a hardware problem.',
].freeze

EXCUSES.each { |excuse| Excuse.create(text: excuse) }
