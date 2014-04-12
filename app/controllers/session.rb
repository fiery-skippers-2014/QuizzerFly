#----------- SESSIONS/LOGIN -----------

# SEND TO LOGIN PAGE
get '/sessions/new' do
  erb :'user/login'
end


# LOGIN ACTION FROM FORM
post '/sessions/new' do
  @user = User.find_by_email(params[:email])
  if @user.password_hash == BCrypt::Engine.hash_secret(params[:password_hash], @user.password_salt)
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  end
  redirect '/'
end



# LOG OUT
get '/logout' do
  session[:user_id] = nil
  session.clear
  session.destroy
  redirect "/"
end