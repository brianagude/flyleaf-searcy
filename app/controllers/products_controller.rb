class ProductsController < ApplicationController
  def index
    if params[:q].present?
      @items = Product.where('lower(title) LIKE ?', '%' + params[:q].downcase + '%')
    else
      @products = Product.all
    end
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
  end

end
