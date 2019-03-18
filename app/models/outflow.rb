class Outflow < ApplicationRecord
  belongs_to :bankaccount
  belongs_to :cashflow
  belongs_to :outflowtype
  belongs_to :person
end
