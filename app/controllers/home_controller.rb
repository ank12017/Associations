class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
  	 @books = Book.search(params[:search]).order(:name).page params[:page]
	 end
  end
