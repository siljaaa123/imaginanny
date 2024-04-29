require "test_helper"

class CharactersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get characters_index_url
    assert_response :success
  end

  test "should get new" do
    get characters_new_url
    assert_response :success
  end

  test "should get create" do
    get characters_create_url
    assert_response :success
  end
end
