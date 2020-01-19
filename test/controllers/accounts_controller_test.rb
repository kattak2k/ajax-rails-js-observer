require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get accounts_Index_url
    assert_response :success
  end

end
