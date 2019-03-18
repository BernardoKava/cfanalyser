class Inflow < ApplicationRecord
  belongs_to :bankaccount
  belongs_to :cashflow
  belongs_to :inflowtype
  belongs_to :person


end
