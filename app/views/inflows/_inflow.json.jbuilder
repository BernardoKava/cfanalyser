json.extract! inflow, :id, :amount, :details, :user_id, :cashflow_id, :year, :month, :person_id, :inflowtype_id, :date_posted, :rationale, :bankaccount_id, :follow_up, :created_at, :updated_at
json.url inflow_url(inflow, format: :json)
