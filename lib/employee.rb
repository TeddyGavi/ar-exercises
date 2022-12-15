class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true } 
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates :store, presence: true
  after_create :gen_password
  
private
  def gen_password
    Employee.update(self.id, :password => (0...8).map { (65 + rand(26)).chr }.join) 
  end

end

