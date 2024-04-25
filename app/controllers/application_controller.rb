class ApplicationController < ActionController::Base
    before_action :authenticate_user

    def authenticate_user
        redirect_to login_path unless session.include?(:user_id)
    end
end
