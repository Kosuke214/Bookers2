class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    #@post_images = @user.post_images.page(params[:page])
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user)
    end
  end

  def index
    @Users = User.all
    @user = current_user
    @book = Book.new
    #@books = @user.all
  end

  def create

  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user.id), notice: 'You have updated user successfully.'
    else
      render :edit
    end
  end

  private

  def user_params
   params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
