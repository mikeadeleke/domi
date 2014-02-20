class UsersController < ApplicationController
  respond_to :html

  def index
    @user = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @places = @user.places
  end
  
  def new
    @user = User.new
  end

  def create
    @user = sign_up(user_params)
    sign_in(@user) do
      respond_with(@user, location: root_path) and return
    end
    render :new
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end
end

