class ProductsController < ApplicationController

  def index
    @products = Product.search(params[:term])
    render json: @products.map(&:title).uniq
  end

  def show
    @categories = Category.all
    @product = Product.find(params[:id])
  end

end
