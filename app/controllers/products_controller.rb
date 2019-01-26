class ProductsController < ApplicationController
  def index
    if params[:q].present?
      @products = Product.where('lower(title) LIKE ?', '%' + params[:q].downcase + '%')
    else
      @products = Product.all.order(:title)
    end
  end

  def show
    @product = Product.find(params[:id])
    @prev = Product.where("title < ?", params[:title]).order(:title).last
    @next = Product.where("title > ?", params[:title]).order(:title).first
  end
end
