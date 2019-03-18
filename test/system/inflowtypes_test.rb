require "application_system_test_case"

class InflowtypesTest < ApplicationSystemTestCase
  setup do
    @inflowtype = inflowtypes(:one)
  end

  test "visiting the index" do
    visit inflowtypes_url
    assert_selector "h1", text: "Inflowtypes"
  end

  test "creating a Inflowtype" do
    visit inflowtypes_url
    click_on "New Inflowtype"

    fill_in "Active", with: @inflowtype.active
    fill_in "Description", with: @inflowtype.description
    fill_in "Name", with: @inflowtype.name
    fill_in "System item", with: @inflowtype.system_item
    click_on "Create Inflowtype"

    assert_text "Inflowtype was successfully created"
    click_on "Back"
  end

  test "updating a Inflowtype" do
    visit inflowtypes_url
    click_on "Edit", match: :first

    fill_in "Active", with: @inflowtype.active
    fill_in "Description", with: @inflowtype.description
    fill_in "Name", with: @inflowtype.name
    fill_in "System item", with: @inflowtype.system_item
    click_on "Update Inflowtype"

    assert_text "Inflowtype was successfully updated"
    click_on "Back"
  end

  test "destroying a Inflowtype" do
    visit inflowtypes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inflowtype was successfully destroyed"
  end
end
