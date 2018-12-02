class AboutsController < ApplicationController
  def index

  end

  def show
    @about = About.find(params[:id])
  end
end
