class UserApplicationsController < ApplicationController
  before_action :require_login

  def index
    user = current_user
    @user_applications = user.user_applications
    @available_applications = Application.where.not(id: UserApplication.where(user_id: user.id).pluck(:application_id))
  end

  def update
    user_application = UserApplication.find(params[:id])
    user_application.update(user_application_params)
    head :ok
  end

  def destroy
    user_application = UserApplication.find(params[:id])
    user_application.destroy
    redirect_to root_path
  end

  private
    def user_application_params
      params.require(:user_application).permit(:position)
    end
end
