class Cashflow < ApplicationRecord
  has_many :inflows
  has_many :outflows
end
