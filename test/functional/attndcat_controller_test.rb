require 'test_helper'

class AttndcatControllerTest < ActionController::TestCase
  test "should get attendee_id:integer" do
    get :attendee_id:integer
    assert_response :success
  end

  test "should get eas_type:integer" do
    get :eas_type:integer
    assert_response :success
  end

end
