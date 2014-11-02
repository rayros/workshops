class ApplicationController < ActionController::Base

  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end

  protect_from_forgery with: :exception

  private
    def authenticate_admin!
      if not current_user.try(:admin?)
        redirect_to new_user_session_path and return
      end
    end
end
