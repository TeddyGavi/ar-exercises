class Store < ActiveRecord::Base
  has_many :employees
  # validates :name, length: {mininum: 3}
  # validates :annual_revenue, numericality: { only_integer: true }


end
