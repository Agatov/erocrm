class VisitProgram < ActiveRecord::Base

  belongs_to :program
  belongs_to :visit

  has_many :visit_program_workers
  has_many :workers, through: :visit_program_workers
end
