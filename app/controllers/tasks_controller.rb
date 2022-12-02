class TasksController < ApplicationController
  before_action :get_category

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
  end

  def destroy
  end

  private
  
  def get_category
    @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:name, :details)
  end

end
