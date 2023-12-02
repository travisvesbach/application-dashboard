class ApplicationController < ActionController::Base

  protected

    def require_login
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:login])
    end
end
