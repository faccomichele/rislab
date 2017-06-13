require 'test_helper'

class TemplateVolumesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @template_volume = template_volumes(:one)
  end

  test "should get index" do
    get template_volumes_url
    assert_response :success
  end

  test "should get new" do
    get new_template_volume_url
    assert_response :success
  end

  test "should create template_volume" do
    assert_difference('TemplateVolume.count') do
      post template_volumes_url, params: { template_volume: { description: @template_volume.description, iscsiname: @template_volume.iscsiname, name: @template_volume.name, os_type_id: @template_volume.os_type_id } }
    end

    assert_redirected_to template_volume_url(TemplateVolume.last)
  end

  test "should show template_volume" do
    get template_volume_url(@template_volume)
    assert_response :success
  end

  test "should get edit" do
    get edit_template_volume_url(@template_volume)
    assert_response :success
  end

  test "should update template_volume" do
    patch template_volume_url(@template_volume), params: { template_volume: { description: @template_volume.description, iscsiname: @template_volume.iscsiname, name: @template_volume.name, os_type_id: @template_volume.os_type_id } }
    assert_redirected_to template_volume_url(@template_volume)
  end

  test "should destroy template_volume" do
    assert_difference('TemplateVolume.count', -1) do
      delete template_volume_url(@template_volume)
    end

    assert_redirected_to template_volumes_url
  end
end
