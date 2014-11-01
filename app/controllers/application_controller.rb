class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  private
    def authenticate_admin!
      redirect_to new_user_session_path and return unless current_user.admin?
    end
end
