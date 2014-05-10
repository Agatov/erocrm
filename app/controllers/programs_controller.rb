class ProgramsController < ApplicationController
  def index
    @programs = Program.order(:price)
  end

  def show
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new program_params

    if @program.save
      redirect_to programs_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private


  def program_params
    params.require(:program).permit!
  end
end