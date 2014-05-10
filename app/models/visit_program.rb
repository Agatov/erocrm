class VisitProgram < ActiveRecord::Base

  belongs_to :program
  belongs_to :visit

  has_many :visit_program_workers
  has_many :workers, through: :visit_program_workers

  before_create :calculate_money
  after_create :add_manager

  validates :visit_program_workers, presence: true


  def calculate_money

    self.salary = program.sum_salary

    if sale.nil?
      self.cash = program.cash
    else
      self.cash = (program.price * ((100 - sale) / 100)) - salary
    end
  end

  def add_manager
    #@todo - Ну понятное дело, что такой код никуда не годится. Переписать!
    manager = Worker.where(post_cd: 0).first
    visit_manager = VisitProgramWorker.new(worker: manager, salary: program.manager_salary)

    self.visit_program_workers << visit_manager
  end


end
