class TasksController < ApplicationController
  before_action :get_task, only: %i[ show edit update destroy ]
  before_action :get_category, only: %i[ index new create]

  def index
    @tasks = @category.tasks
  end

  def new
    @task = @category.tasks.new
  end

  def show
  end

  def create
    @task = @category.tasks.new(task_params)
    # @task.name = params[:name]
    # @task.details = params[:details]
    
    if @task.save
      redirect_to category_url(@category)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to category_url(@category)
    else
      render :edit
    end
  end

  def destroy
    @task.destroy

    redirect_to categories_url(@category)
  end

  private
  
  def get_category
    @category = Category.find(params[:category_id])
  end

  def get_task
    get_category
    @task = @category.tasks.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :details, :completion, :day)
  end

end
