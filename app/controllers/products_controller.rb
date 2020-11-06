class ProductsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_before_action :authenticate_user!, only: [ :index, :show, :new, :create, :edit, :update, :destroy ]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def new
    @product = Product.new
    set_category
  end

  def create
    @product = Product.new(product_params)
    @product.category = set_category
    if @product.save!
      redirect_to category_product_path(@category.id, @product.id), notice: "#{@product.name} was correctly saved."
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to categories_path
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to categories_path
  end

  private

  def set_category
    @category = Category.find params[:category_id]
  end

  def product_params
    params.require(:product).permit(:name, :description, :image, :category_id)
  end
end
