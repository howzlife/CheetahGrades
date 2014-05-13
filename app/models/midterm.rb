class Midterm < ActiveRecord::Base
  validates :school, :courseCode, :year, :professor, :semester, presence: true
  validates :year, :numericality => { :greater_than_or_equal_to => 1990, :less_than_or_equal_to => 2014 }
 
end
