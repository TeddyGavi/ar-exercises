class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than: 40, less_than: 200} 
  # validates :store, presence: true, uniqueness: true
  
end

