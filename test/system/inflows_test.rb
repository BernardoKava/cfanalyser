require "application_system_test_case"

class InflowsTest < ApplicationSystemTestCase
  setup do
    @inflow = inflows(:one)
  end

  test "visiting the index" do
    visit inflows_url
    assert_selector "h1", text: "Inflows"
  end

  test "creating a Inflow" do
    visit inflows_url
    click_on "New Inflow"

    fill_in "Amount", with: @inflow.amount
    fill_in "Bankaccount", with: @inflow.bankaccount_id
    fill_in "Cashflow", with: @inflow.cashflow_id
    fill_in "Date posted", with: @inflow.date_posted
    fill_in "Details", with: @inflow.details
    fill_in "Follow up", with: @inflow.follow_up
    fill_in "Inflowtype", with: @inflow.inflowtype_id
    fill_in "Month", with: @inflow.month
    fill_in "Person", with: @inflow.person_id
    fill_in "Rationale", with: @inflow.rationale
    fill_in "User", with: @inflow.user_id
    fill_in "Year", with: @inflow.year
    click_on "Create Inflow"

    assert_text "Inflow was successfully created"
    click_on "Back"
  end

  test "updating a Inflow" do
    visit inflows_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @inflow.amount
    fill_in "Bankaccount", with: @inflow.bankaccount_id
    fill_in "Cashflow", with: @inflow.cashflow_id
    fill_in "Date posted", with: @inflow.date_posted
    fill_in "Details", with: @inflow.details
    fill_in "Follow up", with: @inflow.follow_up
    fill_in "Inflowtype", with: @inflow.inflowtype_id
    fill_in "Month", with: @inflow.month
    fill_in "Person", with: @inflow.person_id
    fill_in "Rationale", with: @inflow.rationale
    fill_in "User", with: @inflow.user_id
    fill_in "Year", with: @inflow.year
    click_on "Update Inflow"

    assert_text "Inflow was successfully updated"
    click_on "Back"
  end

  test "destroying a Inflow" do
    visit inflows_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inflow was successfully destroyed"
  end
end
