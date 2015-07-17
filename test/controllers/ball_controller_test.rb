require 'test_helper'

class BallControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get shake" do
    get :shake
    assert_response :success
  end

end
