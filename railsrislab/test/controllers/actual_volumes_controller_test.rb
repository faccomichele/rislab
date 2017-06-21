require 'test_helper'

class ActualVolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @actual_volume = actual_volumes(:one)
  end

  test "should get index" do
    get actual_volumes_url
    assert_response :success
  end

  test "should get new" do
    get new_actual_volume_url
    assert_response :success
  end

  test "should create actual_volume" do
    assert_difference('ActualVolume.count') do
      post actual_volumes_url, params: { actual_volume: { iscsiname: @actual_volume.iscsiname, template_volume_id: @actual_volume.template_volume_id } }
    end

    assert_redirected_to actual_volume_url(ActualVolume.last)
  end

  test "should show actual_volume" do
    get actual_volume_url(@actual_volume)
    assert_response :success
  end

  test "should get edit" do
    get edit_actual_volume_url(@actual_volume)
    assert_response :success
  end

  test "should update actual_volume" do
    patch actual_volume_url(@actual_volume), params: { actual_volume: { iscsiname: @actual_volume.iscsiname, template_volume_id: @actual_volume.template_volume_id } }
    assert_redirected_to actual_volume_url(@actual_volume)
  end

  test "should destroy actual_volume" do
    assert_difference('ActualVolume.count', -1) do
      delete actual_volume_url(@actual_volume)
    end

    assert_redirected_to actual_volumes_url
  end
end
