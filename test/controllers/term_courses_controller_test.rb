require 'test_helper'

class TermCoursesControllerTest < ActionController::TestCase
  setup do
    @term_course = term_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_course" do
    assert_difference('TermCourse.count') do
      post :create, term_course: { name: @term_course.name }
    end

    assert_redirected_to term_course_path(assigns(:term_course))
  end

  test "should show term_course" do
    get :show, id: @term_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_course
    assert_response :success
  end

  test "should update term_course" do
    patch :update, id: @term_course, term_course: { name: @term_course.name }
    assert_redirected_to term_course_path(assigns(:term_course))
  end

  test "should destroy term_course" do
    assert_difference('TermCourse.count', -1) do
      delete :destroy, id: @term_course
    end

    assert_redirected_to term_courses_path
  end
end
