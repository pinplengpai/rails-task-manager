class TasksController < ApplicationController
  # It's the convention that name of the file should be plural.
  before_action :set_params, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
    # because the user will type a new task and it will be in our database
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path

  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
    # we need to private params.require to permit those parmas save in model.
  end

  def set_params
    @task = Task.find(params[:id])
  end

end
