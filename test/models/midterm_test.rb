require 'test_helper'

class MidtermTest < ActiveSupport::TestCase
    test "midterm attributes must not be empty" do
    midterm = Midterm.new
    assert midterm.invalid?
    assert midterm.errors[:school].any?
    assert midterm.errors[:courseCode].any?
    assert midterm.errors[:year].any?
    assert midterm.errors[:professor].any?
    assert midterm.errors[:semester].any?
  end
  
    test "midterm year must be greater than 1990 and less than 2014" do
    midterm = Midterm.new(school:      "University of Ottawa",
                          courseCode:  "xyz",
                          professor:   "McGonnigle",
                          semester:    "Fall")
    midterm.year = -1
    assert midterm.invalid?
    assert_equal ["year must be between 1990 and 2014"]
      midterm.errors[:year]

    midterm.year = 0
    assert midterm.invalid?
    assert_equal ["year must be between 1990 and 2014"], 
      midterm.errors[:year]
      
    midterm.year = 1989
    assert midterm.invalid?
    assert_equal ["year must be between 1990 and 2014"], 
     midterm.errors[:year]
     
    midterm.year = 2014
    assert midterm.invalid?
    assert_equal ["year must be between 1990 and 2014"], 
      midterm.errors[:year]

    midterm.year = 2000
    assert midterm.valid?
  end
end
