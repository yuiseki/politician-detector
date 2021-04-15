require 'test_helper'

class PoliticalPartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @political_party = political_parties(:one)
  end

  test "should get index" do
    get political_parties_url, as: :json
    assert_response :success
  end

  test "should create political_party" do
    assert_difference('PoliticalParty.count') do
      post political_parties_url, params: { political_party: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show political_party" do
    get political_party_url(@political_party), as: :json
    assert_response :success
  end

  test "should update political_party" do
    patch political_party_url(@political_party), params: { political_party: {  } }, as: :json
    assert_response 200
  end

  test "should destroy political_party" do
    assert_difference('PoliticalParty.count', -1) do
      delete political_party_url(@political_party), as: :json
    end

    assert_response 204
  end
end
