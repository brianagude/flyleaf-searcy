class ProductsController < ApplicationController
  def index
    if params[:q].present?
      @products = Product.where('lower(title) LIKE ?', '%' + params[:q].downcase + '%')
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
