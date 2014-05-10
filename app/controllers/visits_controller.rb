class VisitsController < ApplicationController
  def index
    @visits = Visit.order(:id)

    #@todo - пиздец!
    @manager = Worker.where(post_cd: 0).first
    @workers = Worker.where(post_cd: 1)
  end

  def show
    @visit = Visit.find params[:id]
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


