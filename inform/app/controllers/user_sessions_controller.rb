class UserSessionsController < ApplicationController

  def new
    @user_login = User.new
  end

  def create
    if @user_login = login(params[:email].downcase, params[:password])
      redirect_back_or_to(in_forms_path, notice: 'Logged in successfully.')
    else
      @user_login = User.new
      flash[alert] = "Login failed."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(new_user_session_path, notice: 'Logged out!')
  end

end
