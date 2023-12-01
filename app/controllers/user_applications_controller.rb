class UserApplicationsController < ApplicationController
  before_action :require_login

  def index
    @user = current_user
    @user_applications = @user.user_applications
  end

  private

    def require_login
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end
end
