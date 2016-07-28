require 'test_helper'

class YardsalesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
