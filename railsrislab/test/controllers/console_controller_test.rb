require 'test_helper'

class ConsoleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get console_index_url
    assert_response :success
    assert_select '#columns #side a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'R510_Server'
  end

end
