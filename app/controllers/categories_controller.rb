class CategoriesController < ApplicationController
  before_action :set_blog, only: %i[ show edit update destroy ]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)
    # @category.name = params[:name]
    # @category.details = params[:details]
    
    if @category.save
      redirect_to categories_url
    else
      render :new
    end
  end

  def update
    if @category.update(category_params)
      redirect_to category_url
    else
      render :edit
    end
  end

  def destroy
    @category.destroy

    redirect_to categories_url
  end
  
  private

    def set_blog
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :details)
    end
end
