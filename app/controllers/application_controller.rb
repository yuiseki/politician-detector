class ApplicationController < ActionController::API
  include ActionController::Cookies

  def require_login
    if session[:user_id].present?
      @current_user = User.find_by(id: session[:user_id])
      return if @current_user
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end
end
