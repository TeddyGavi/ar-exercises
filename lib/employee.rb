class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true } 
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates :store, presence: true
  
end

