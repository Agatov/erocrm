class VisitsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @visit = Visit.new
    #@visit.guest = Guest.new
  end

  def create
    @visit = Visit.new visit_params

    if @visit.save
      redirect_to visit_path(@visit)
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

  def visit_params
    params.require(:visit).permit!
  end
end


