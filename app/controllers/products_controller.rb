class ProductsController < ApplicationController
  def index
    if params[:q].present?
      @products = Product.where('lower(title) LIKE ?', '%' + params[:q].downcase + '%')
    else
      @products = Product.all.order(:id)
    end
  end

  def show
    @product = Product.find(params[:id])
    @prev = @product.previous
    @next = @product.next
    # @prev = Product.where("id < ?", params[:id]).order(:id).last
    # @next = Product.where("id > ?", params[:id]).order(:id).first
  end
end
