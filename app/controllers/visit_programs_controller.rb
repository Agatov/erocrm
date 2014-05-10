class VisitProgramsController < ApplicationController


  def create
    @visit = Visit.find params[:visit_id]
    @visit_program = @visit.visit_programs.build visit_program_params
    @visit_program.save


    redirect_to :back
  end

  private

  def visit_program_params
    params.require(:visit_program).permit!
  end

end