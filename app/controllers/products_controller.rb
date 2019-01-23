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
    @prev = Product.where("id < ?", params[:id]).order(:id).first
    @next = Product.where("id > ?", params[:id]).order(:id).first
  end
end
