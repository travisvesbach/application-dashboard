class BulkUserApplicationsController < ApplicationController
  before_action :require_login

  def create
    user = current_user
    application_ids = params[:application_ids].reject { |x| x.to_s.empty? }

    application_ids.each do |application_id|
      # verify application with id exists and isn't already related to the current_user
      if application = Application.find(application_id)
        if !user.user_applications.include?(application)
          user.user_applications.create(application: application, position: user.user_applications.count)
        end
      end
    end
    redirect_to root_path
  end
end
