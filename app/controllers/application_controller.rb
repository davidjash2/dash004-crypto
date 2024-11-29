class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authenticated
    @authenticated = User.authenticated
  end

  def authenticate(user_params)
    user_name = user_params[:user_name]
    password = user_params[:password]
    @authenticated = User.authenticate(user_name, password)
  end
end
