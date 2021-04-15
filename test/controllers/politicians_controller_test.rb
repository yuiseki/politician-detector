require 'test_helper'

class PoliticiansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politician = politicians(:one)
  end

  test "should get index" do
    get politicians_url, as: :json
    assert_response :success
  end

  test "should create politician" do
    assert_difference('Politician.count') do
      post politicians_url, params: { politician: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show politician" do
    get politician_url(@politician), as: :json
    assert_response :success
  end

  test "should update politician" do
    patch politician_url(@politician), params: { politician: {  } }, as: :json
    assert_response 200
  end

  test "should destroy politician" do
    assert_difference('Politician.count', -1) do
      delete politician_url(@politician), as: :json
    end

    assert_response 204
  end
end
