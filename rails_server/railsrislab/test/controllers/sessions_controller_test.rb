require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should prompt for login" do
    get login_url
    assert_response :success
  end

  test "should login" do
    tora = users(:two)
    post login_url, params: { name: tora.name, password: 'secret' }
    assert_redirected_to admin_url
    assert_equal tora.id, session[:user_id]
  end

  test "should fail login" do
    tora = users(:one)
    post login_url, params: { name: tora.name, password: 'wrong' }
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url
    assert_redirected_to console_index_url
  end
end
