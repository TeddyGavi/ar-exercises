class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :either_mens_or_womens_apparel

  def either_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:apparel, "Stores must carry either mens or womens apparel or both")
    end
  end
  
end
