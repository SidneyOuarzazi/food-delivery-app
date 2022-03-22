class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  has_many :order_details
end
