# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

csv_text = File.read(Rails.root.join('public', 'cards_csv.csv'))
# csv_text = csv_text.squish
csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
  Card.create!(row.to_hash)
end

# csv.each do |row|
#   Card.create({
#   shape: row[0],
#   color: row[1],
#   number: row[2],
#   shading: row[3],
#   img: row[4]
#   })
# end
puts csv_text
puts csv
#
# puts "There are now #{Card.count} rows in the cards table"

# csv.each do |row|
#   Card.create(Hash[row])
#
# end
