require 'test_helper'

class InflowtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inflowtype = inflowtypes(:one)
  end

  test "should get index" do
    get inflowtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_inflowtype_url
    assert_response :success
  end

  test "should create inflowtype" do
    assert_difference('Inflowtype.count') do
      post inflowtypes_url, params: { inflowtype: { active: @inflowtype.active, description: @inflowtype.description, name: @inflowtype.name, system_item: @inflowtype.system_item } }
    end

    assert_redirected_to inflowtype_url(Inflowtype.last)
  end

  test "should show inflowtype" do
    get inflowtype_url(@inflowtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_inflowtype_url(@inflowtype)
    assert_response :success
  end

  test "should update inflowtype" do
    patch inflowtype_url(@inflowtype), params: { inflowtype: { active: @inflowtype.active, description: @inflowtype.description, name: @inflowtype.name, system_item: @inflowtype.system_item } }
    assert_redirected_to inflowtype_url(@inflowtype)
  end

  test "should destroy inflowtype" do
    assert_difference('Inflowtype.count', -1) do
      delete inflowtype_url(@inflowtype)
    end

    assert_redirected_to inflowtypes_url
  end
end
