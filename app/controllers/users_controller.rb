class UsersController < ApplicationController

  def index
    @users = User.all.sort_by {|x| x.certifications_score}.reverse
  end

  def new
    @users = User.new
  end

  def edit;end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was created."
      session[:user_id] = @user.id 
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :bio, :certifications)
  end

end
