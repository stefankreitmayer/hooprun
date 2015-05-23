class RunsController < ApplicationController
  before_action :set_run_and_jump, only: [:show, :edit, :update, :jump]

  # GET /runs/1
  def show
    set_obstacle
  end

  # GET /runs/new
  def new
    @run = Run.new
  end

  # GET /runs/1/edit
  def edit
  end

  # POST /runs
  def create
    @run = Run.new
    if @run.save
      redirect_to @run
    else
      render :new
    end
  end

  # PUT/PATH /runs/update
  def update
    choice = params.require(:choice)
    @run.current_jump.update!({choice: choice})
    if choice == @run.current_jump.correct_option
      @run.next_jump
    end
    redirect_to @run
  end

  private

  def set_run_and_jump
    @run = Run.find(params[:id])
    @jump = @run.current_jump
  end

  def set_obstacle
    @obstacle = @run.current_jump.obstacle
  end

  # def update_run_params
  #   puts 'PARAMS -----  '+ params.inspect
  #   params.require(:run).permit(:choice)
  # end
end
