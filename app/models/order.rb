class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :employee, optional: true
  has_many :order_details
end
