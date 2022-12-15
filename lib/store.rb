class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :either_mens_or_womens_apparel
  after_touch do 
    test_touch
  end
  before_destroy :has_employees, prepend: true

  def either_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "Stores must carry either mens or womens apparel or both")
    end
  end
  
private
  def test_touch
    puts "touched a store by employee"
  end

  def has_employees
    if self.employees.count >= 1
      errors.add(:has_employees, "Cannot delete a store that has more than one employee")
      throw :abort
    end
  end

end
