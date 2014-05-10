class Visit < ActiveRecord::Base

  has_many :visit_programs
  belongs_to :guest
  has_one :phone


  accepts_nested_attributes_for :visit_programs, :guest

end
