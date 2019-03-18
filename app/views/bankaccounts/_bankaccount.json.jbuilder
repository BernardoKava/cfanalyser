json.extract! bankaccount, :id, :financialinstitution_id, :account_number, :sort_code, :iban, :bic, :person_id, :account_code, :account_name, :active, :created_at, :updated_at
json.url bankaccount_url(bankaccount, format: :json)
