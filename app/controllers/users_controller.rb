class UsersController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @user = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
