# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Leave.find_or_create_by_leave_type( :leave_type  => "National Holidays/RH", :leave_entitled => 3)

Leave.find_or_create_by_leave_type( :leave_type  => "PL", :leave_entitled => 3)

Leave.find_or_create_by_leave_type( :leave_type  => "Casual Leave(CL)", :leave_entitled => 10)

Leave.find_or_create_by_leave_type( :leave_type  => "Compulsory Leave(CTL)", :leave_entitled => 6)

Leave.find_or_create_by_leave_type( :leave_type  => "Marriage Leave(ML)", :leave_entitled => 15)

Leave.find_or_create_by_leave_type( :leave_type  => "Bevearment Leave(BL)", :leave_entitled => 3)


