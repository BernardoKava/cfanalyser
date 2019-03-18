require 'test_helper'

class InflowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inflow = inflows(:one)
  end

  test "should get index" do
    get inflows_url
    assert_response :success
  end

  test "should get new" do
    get new_inflow_url
    assert_response :success
  end

  test "should create inflow" do
    assert_difference('Inflow.count') do
      post inflows_url, params: { inflow: { amount: @inflow.amount, bankaccount_id: @inflow.bankaccount_id, cashflow_id: @inflow.cashflow_id, date_posted: @inflow.date_posted, details: @inflow.details, follow_up: @inflow.follow_up, inflowtype_id: @inflow.inflowtype_id, month: @inflow.month, person_id: @inflow.person_id, rationale: @inflow.rationale, user_id: @inflow.user_id, year: @inflow.year } }
    end

    assert_redirected_to inflow_url(Inflow.last)
  end

  test "should show inflow" do
    get inflow_url(@inflow)
    assert_response :success
  end

  test "should get edit" do
    get edit_inflow_url(@inflow)
    assert_response :success
  end

  test "should update inflow" do
    patch inflow_url(@inflow), params: { inflow: { amount: @inflow.amount, bankaccount_id: @inflow.bankaccount_id, cashflow_id: @inflow.cashflow_id, date_posted: @inflow.date_posted, details: @inflow.details, follow_up: @inflow.follow_up, inflowtype_id: @inflow.inflowtype_id, month: @inflow.month, person_id: @inflow.person_id, rationale: @inflow.rationale, user_id: @inflow.user_id, year: @inflow.year } }
    assert_redirected_to inflow_url(@inflow)
  end

  test "should destroy inflow" do
    assert_difference('Inflow.count', -1) do
      delete inflow_url(@inflow)
    end

    assert_redirected_to inflows_url
  end
end
