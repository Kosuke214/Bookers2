class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
    #@post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @Users = User.all
    @user = current_user
    @book = Book.new
  end

  def create
  end
end
