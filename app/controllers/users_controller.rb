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

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
   params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
