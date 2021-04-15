require 'test_helper'

class ElectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @election = elections(:one)
  end

  test "should get index" do
    get elections_url, as: :json
    assert_response :success
  end

  test "should create election" do
    assert_difference('Election.count') do
      post elections_url, params: { election: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show election" do
    get election_url(@election), as: :json
    assert_response :success
  end

  test "should update election" do
    patch election_url(@election), params: { election: {  } }, as: :json
    assert_response 200
  end

  test "should destroy election" do
    assert_difference('Election.count', -1) do
      delete election_url(@election), as: :json
    end

    assert_response 204
  end
end
