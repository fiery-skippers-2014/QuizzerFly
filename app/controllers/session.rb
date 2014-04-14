#----------- SESSIONS/LOGIN -----------

# SEND TO LOGIN PAGE
get '/sessions/new' do
  erb :'user/login'
end


# LOGIN ACTION FROM FORM
post '/sessions/new' do
  @user = User.find_by_email(params[:email])
  # @user.validate_password
  if @user.password_hash == BCrypt::Engine.hash_secret(params[:password], @user.password_salt)
    session[:user_id] = @user.id
    flash[:success] = "Welcome back #{@user.name}!"
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'user/login'
  end
end



# LOG OUT
get '/logout' do
  session[:user_id] = nil
  session.clear
  session.destroy
  redirect "/"
end