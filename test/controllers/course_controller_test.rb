require 'test_helper'

class CourseControllerTest < ActionController::TestCase
  test "should get Course_Notes" do
    get :Course_Notes
    assert_response :success
  end

  test "should get Assignments" do
    get :Assignments
    assert_response :success
  end

  test "should get Midterms" do
    get :Midterms
    assert_response :success
  end

  test "should get Finals" do
    get :Finals
    assert_response :success
  end

  test "should get Video_Tutorials" do
    get :Video_Tutorials
    assert_response :success
  end

  test "should get Forums" do
    get :Forums
    assert_response :success
  end

end
