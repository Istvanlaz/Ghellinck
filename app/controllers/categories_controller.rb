class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

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
      redirect_to my_admin_show_path(@category), notice: "La catégorie '#{@category.name}' a bien été créée."
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
      redirect_to my_admin_space_path, notice: "Les détails de la catégorie '#{@category.name}' ont été modifiés correctement."
    else
      render :new
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to my_admin_space_path, notice: "La catégorie '#{@category.name}' a bien été supprimée."
  end

  private

  def category_params
    params.require(:category).permit(:name, :image)
  end
end
