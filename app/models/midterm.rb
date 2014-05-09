class Midterm < ActiveRecord::Base
  validates :school, :courseCode, :year, :professor, :semester, presence: true
end
