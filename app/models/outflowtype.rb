class Outflowtype < ApplicationRecord
  has_many :inflows
  has_many :outflows
end
