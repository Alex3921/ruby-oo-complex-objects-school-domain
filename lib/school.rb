# code here!

class School
    attr_accessor :school_name, :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = Hash.new
    end

    def add_student(name,grade)
        if roster[grade]
          roster[grade] << name
        else
          roster[grade] = []
          roster[grade] << name
        end
    end

    def grade(grade)
        @roster.fetch(grade)
    end

    def sort
        sorted_hash = {}
        @roster.sort.each do |grade, name_array|
          sorted_hash[grade] = (name_array.sort)
        end
        sorted_hash
    end

end
