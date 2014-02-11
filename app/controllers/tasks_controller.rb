class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params)
    respond_to do |format|
      if @task.save
        format.html { redirect_to task_url, notice: "Analyst #{@task} was successfully created." }
        format.json { render action: 'show', status: :created, location: @task }
      else
        format.html { render action: 'new' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  def dataset_params
    params.require(:task).permit(:title, :location, :reward, :due_date)
  end
end
