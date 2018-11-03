class UsersController < ApplicationController

  def show
  end
  def index
    @users = User.where.not(id: current_user.id)
  end
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
end
	