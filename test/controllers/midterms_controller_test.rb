require 'test_helper'

class MidtermsControllerTest < ActionController::TestCase
  setup do
    @midterm = midterms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:midterms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create midterm" do
    assert_difference('Midterm.count') do
      post :create, midterm: { corrected: @midterm.corrected, courseCode: @midterm.courseCode, professor: @midterm.professor, school: @midterm.school, semester: @midterm.semester, year: @midterm.year }
    end

    assert_redirected_to midterm_path(assigns(:midterm))
  end

  test "should show midterm" do
    get :show, id: @midterm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @midterm
    assert_response :success
  end

  test "should update midterm" do
    patch :update, id: @midterm, midterm: { corrected: @midterm.corrected, courseCode: @midterm.courseCode, professor: @midterm.professor, school: @midterm.school, semester: @midterm.semester, year: @midterm.year }
    assert_redirected_to midterm_path(assigns(:midterm))
  end

  test "should destroy midterm" do
    assert_difference('Midterm.count', -1) do
      delete :destroy, id: @midterm
    end

    assert_redirected_to midterms_path
  end
end
