class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
   

    def after_sign_in_path_for(resource)
        if current_user.admin?
            students_path
        else
            root_path
        end
    end

    def authenticate_admin!
        unless current_user.present? && current_user.admin == true
          flash[:alert] = "No estas autorizado para esta seccion"
          redirect_to root_path
        end
      end
end
