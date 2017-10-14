class HomeController < ApplicationController
  def index
  	 @books = Book.search(params[:search]).order(:name).page params[:page]
	 end
  end
