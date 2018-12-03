class AboutsController < ApplicationController
  def index

  end

  def show
    @about = About.all
  end
end
