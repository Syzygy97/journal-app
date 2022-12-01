class CategoriesController < ApplicationController
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
  end

  def destroy
  end
  
  private

    def category_params
      params.require(:category).permit(:name, :details)
    end
end
