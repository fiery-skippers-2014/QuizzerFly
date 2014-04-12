helpers do
  
  def loggedin?
    !!session[:user_id]
  end

  def current_user
    @logged_in_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def all_users
    @users ||= User.all
  end

  def all_surveys
    @surveys ||= Survey.all
  end
end