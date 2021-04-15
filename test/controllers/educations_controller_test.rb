require 'test_helper'

class EducationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @education = educations(:one)
  end

  test "should get index" do
    get educations_url, as: :json
    assert_response :success
  end

  test "should create education" do
    assert_difference('Education.count') do
      post educations_url, params: { education: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show education" do
    get education_url(@education), as: :json
    assert_response :success
  end

  test "should update education" do
    patch education_url(@education), params: { education: {  } }, as: :json
    assert_response 200
  end

  test "should destroy education" do
    assert_difference('Education.count', -1) do
      delete education_url(@education), as: :json
    end

    assert_response 204
  end
end
