require "test_helper"

class DoctorControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get doctor_new_url
    assert_response :success
  end

  test "should get index" do
    get doctor_index_url
    assert_response :success
  end
end
