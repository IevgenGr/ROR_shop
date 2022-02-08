class PagesController < ApplicationController

  def home
    @categories = Category.all
    @pagy, @products = pagy(Product.all, items: 9)
    @products = sort @products
    @products = @products.where('price >= ?', params[:MIN]) if params[:MIN].present?
    @products = @products.where('price <= ?', params[:MAX]) if params[:MAX].present?
  end

  def category
    @categories = Category.all
    @pagy, @products = pagy(Product.where(category_id: Category.find_by_id(params[:id]).id), items: 9)
    @products = sort @products
  end

  def search
    @categories = Category.all
    @pagy, @products = pagy(Product.where('title ILIKE?', '%' + params[:qwery] + '%' ), items: 9)
    @products = sort @products
  end

  private

  def sort products
    if params[:sort] == "High"
      products.order(price: :desc)
    else
      products.order(price: :ASC)
    end
  end
end