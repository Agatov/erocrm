class WorkersController < ApplicationController
  def index
    @workers = Worker.order(:id)
  end

  def show
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.new worker_params

    if @worker.save
      redirect_to workers_path
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

  def worker_params
    params.require(:worker).permit!
  end
end


