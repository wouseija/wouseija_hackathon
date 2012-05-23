# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# base_dir = "#{Rails.root}/db/sql"

# bulk_load = ["teste"]

# bulk_load.each do |table|
#   #if table.first.nil? # only bulk load into empty tables
#     f = File.new "#{base_dir}/#{table}.sql"

#     while statements = f.gets("") do
#       ActiveRecord::Base.connection.execute(statements)
#     end  
#   #end
# end