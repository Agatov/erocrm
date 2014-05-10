class Guest < ActiveRecord::Base
  has_many :visits
end
