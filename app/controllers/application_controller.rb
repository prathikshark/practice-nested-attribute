class ApplicationController < ActionController::Base
    before_action :configure_sanitized_params, if: :devise_controller?
  
    def configure_sanitized_params
      devise_parameter_sanitizer.permit(:sign_up) do |user_params|
        user_params.permit(:name, :phone, :address,:email, :password, :password_confirmation, worker_attributes: [:SSnumber, :age, :gender, :profile_picture])
end

end
end