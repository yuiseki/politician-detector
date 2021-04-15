require 'test_helper'

class ManifestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manifest = manifests(:one)
  end

  test "should get index" do
    get manifests_url, as: :json
    assert_response :success
  end

  test "should create manifest" do
    assert_difference('Manifest.count') do
      post manifests_url, params: { manifest: { source: @manifest.source, text: @manifest.text } }, as: :json
    end

    assert_response 201
  end

  test "should show manifest" do
    get manifest_url(@manifest), as: :json
    assert_response :success
  end

  test "should update manifest" do
    patch manifest_url(@manifest), params: { manifest: { source: @manifest.source, text: @manifest.text } }, as: :json
    assert_response 200
  end

  test "should destroy manifest" do
    assert_difference('Manifest.count', -1) do
      delete manifest_url(@manifest), as: :json
    end

    assert_response 204
  end
end
