require 'test_helper'

class SiteOutputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_output = site_outputs(:one)
  end

  test "should get index" do
    get site_outputs_url, as: :json
    assert_response :success
  end

  test "should create site_output" do
    assert_difference('SiteOutput.count') do
      post site_outputs_url, params: { site_output: { ac_output: @site_output.ac_output, dc_output: @site_output.dc_output, location: @site_output.location, month: @site_output.month, sys_cap: @site_output.sys_cap } }, as: :json
    end

    assert_response 201
  end

  test "should show site_output" do
    get site_output_url(@site_output), as: :json
    assert_response :success
  end

  test "should update site_output" do
    patch site_output_url(@site_output), params: { site_output: { ac_output: @site_output.ac_output, dc_output: @site_output.dc_output, location: @site_output.location, month: @site_output.month, sys_cap: @site_output.sys_cap } }, as: :json
    assert_response 200
  end

  test "should destroy site_output" do
    assert_difference('SiteOutput.count', -1) do
      delete site_output_url(@site_output), as: :json
    end

    assert_response 204
  end
end
