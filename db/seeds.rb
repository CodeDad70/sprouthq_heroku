# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

		walked = Milestone.new(title:'walked for the first time!')
		walked.age= '1 years 2 months' 
		walked.years=1 
		walked.months=2
		walked.save

		talked = Milestone.new(title:'talked for the first time!')
		talked.age= '1 years 8 months' 
		talked.years=1 
		talked.months=8
		talked.save

		potty = Milestone.new(title:'used the potty!')
		potty.age= '2 years 7 months' 
		potty.years=2 
		potty.months=7
		potty.save