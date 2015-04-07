require 'test_helper'

class RpsControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get winner" do
    get :winner
    assert_response :success
  end

end
