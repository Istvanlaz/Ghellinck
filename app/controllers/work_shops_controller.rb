class WorkShopsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index, :show, :product_details ]
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:category_id])
    @products = Product.all
  end

  def product_details
    @product = Product.find(params[:id])
    @category = Category.find(params[:category_id])
  end
end
