class Employee < ActiveRecord::Base
  belongs_to :store, touch: true
  validates :first_name, presence: true 
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true } 
  validates_inclusion_of :hourly_rate, :in => 40..200
  validates :store, presence: true
  before_create :gen_password
  
private
  def gen_password
    # this is done when we use artfer_create
    self.password = (0...8).map { (65 + rand(26)).chr }.join
    # Employee.update(self.id, :password => (0...8).map { (65 + rand(26)).chr }.join) 
  end

end

