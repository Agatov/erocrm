class Visit < ActiveRecord::Base

  has_many :visit_programs
  belongs_to :guest
  has_one :phone


  accepts_nested_attributes_for :visit_programs, :guest


  def get_workers

    workers = []

    visit_programs.each do |vp|
      vp.workers.each do |worker|
        workers << worker
      end
    end

    workers
  end


  def sum
   cash + salary
  end

  def cash
    (visit_programs.map {|vp| vp.cash }).sum
  end

  def salary
    (visit_programs.map {|vp| vp.salary }).sum
  end

end
