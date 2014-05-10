class Worker < ActiveRecord::Base
  as_enum :post, manager: 0, masseuse: 1

  validates :name, presence: true
  validates :post_cd, presence: true
end
