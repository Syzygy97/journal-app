class CategoriesController < ApplicationController
  before_action :set_category, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:show]
  before_action :correct_user, only: [:edit, :show, :destroy]

  def index
    @categories = current_user.categories
    # @categories = Category.where(user_id: current_user.id) 
  end

  def show
  end

  def collections
    @categories = Category.all
  end

  def new
    # @category = Category.new
    @category = current_user.categories.new
  end

  def edit
  end

  def create
    @category = current_user.categories.new(category_params)
    # @category = Category.new(category_params)
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
  
  def correct_user
    @category = current_user.categories.find_by(id: params[:id])
    redirect_to categories_path, notice: "Not An Authorized User" if @category.nil?
  end

  private

    def set_category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name, :details, :user_id)
    end
end
