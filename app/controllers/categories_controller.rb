class CategoriesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save!
      redirect_to category_path(@category.id), notice: "#{@category.name} was correctly saved."
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end
end
