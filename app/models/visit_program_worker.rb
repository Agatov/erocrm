class VisitProgramWorker < ActiveRecord::Base

  belongs_to :visit
  belongs_to :visit_program
  belongs_to :worker

  before_save :calculate_salary

  def calculate_salary

    self.salary = visit_program.program.masseuse_salary if worker.masseuse?
    self.salary = visit_program.program.manager_salary if worker.manager?

  end

end
