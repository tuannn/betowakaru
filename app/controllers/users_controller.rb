class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if(@user.save)
      flash[:success] = 'Account was created successfully'
      redirect_to signin_path
    else
      render 'new'
    end
  end
end
