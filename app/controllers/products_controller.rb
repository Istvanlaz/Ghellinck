class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

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
      redirect_to my_admin_product_show_path(@category, @product), notice: "Le produit '#{@product.name}' a bien été créé."
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
      redirect_to my_admin_product_show_path(@product.category, @product), notice: "Les détails du produit '#{@product.name}' ont été modifiés correctement."
    else
      render :new
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to my_admin_show_path(@product.category), notice: "Le produit '#{@product.name}' a bien été supprimé."
  end

  private

  def set_category
    @category = Category.find params[:category_id]
  end

  def product_params
    params.require(:product).permit(:name, :description, :image, :category_id)
  end
end
