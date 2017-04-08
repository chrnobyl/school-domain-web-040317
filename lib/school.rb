require 'pry'

class School

	attr_accessor :name, :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster.keys.include?(grade) == false
		  @roster[grade] = []
		  @roster[grade] << name
		else
			@roster[grade] << name
		end
	end

	def grade(grade)
		@roster.each do |k, v|
			if k == grade
				return v
			end
		end
	end

	def sort
		@roster.sort_by {|k, v| k}.to_h
		@roster.each do |key, val|
			val.sort!
		end

		
	end


end