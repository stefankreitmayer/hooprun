class RunsController < ApplicationController
  before_action :set_run, only: [:show, :edit, :update]

  # GET /runs/1
  def show
    add_jump if @run.jumps.empty?
    @obstacle = @run.jumps.last.obstacle
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
      add_jump
      redirect_to @run
    else
      render :new
    end
  end

  # PATCH/PUT /runs/1
  # def update
  #   if @run.update(update_run_params)
  #     redirect_to @run, notice: 'Run was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  private

  def set_run
    @run = Run.find(params[:id])
  end

  # def update_run_params
  #   puts 'PARAMS -----  '+ params.inspect
  #   params.require(:run).permit(:choice)
  # end

  def add_jump
    @run.jumps.create(obstacle: Obstacle.random)
  end
end
