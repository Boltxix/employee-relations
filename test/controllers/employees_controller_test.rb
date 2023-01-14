require "test_helper"

class EmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get employees_url
    assert_response :success
  end

  test "should get new" do
    get new_employee_url
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end


  test "should show employee" do
    get employee_url(@employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_employee_url(@employee)
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should update employee" do
    patch employee_url(@employee), params: { employee: { email: @employee.email, first_name: @employee.first_name, last_name: @employee.last_name, phone: @employee.phone, position: @employee.position } }
    assert_redirected_to new_user_session_path
  end



end
