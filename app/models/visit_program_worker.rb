class VisitProgramWorker < ActiveRecord::Base

  belongs_to :visit
  belongs_to :visit_program
  belongs_to :worker

end
