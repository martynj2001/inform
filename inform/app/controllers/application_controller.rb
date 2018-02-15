class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    if logged_in?
      redirect_to root_path, :alert => exception.message
    else
      redirect_to root_path, :alert => 'Login required to access page'
    end
  end

end
