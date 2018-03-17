class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/users/sign_in'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end


  def configure_permitted_parameters

    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :avatar_url])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:avatar_url])

  end
    
end
