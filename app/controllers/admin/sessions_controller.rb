class Admin::SessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to  new_admin_board_path
    else
      render :new
    end
  end

  def destroy
    logout
    redirect_to admin_login_path
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
