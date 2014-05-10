class Program < ActiveRecord::Base

  validates :name, presence: true
  validates :duration, presence: true, numericality: {greater_than_or_equal_to: 60}
  validates :price, presence: true
  validates :manager_salary, presence: true
  validates :masseuse_salary, presence: true
  validates :cash, presence: true
  validates :number_of_masseuses, presence: true, numericality: {less_than_or_equal_to: 2}

end
