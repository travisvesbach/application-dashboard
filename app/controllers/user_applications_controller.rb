class UserApplicationsController < ApplicationController
  before_action :require_login

  def index
    user = current_user
    @user_applications = user.user_applications
    @available_applications = Application.where.not(id: UserApplication.where(user_id: user.id).pluck(:application_id))
  end
end
