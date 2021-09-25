class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success

  private

  def not_authenticated
    redirect_to admin_login_path
  end
end
