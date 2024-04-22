module SessionsHelper

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find_by_id(user_id) if user_id
  end

end
