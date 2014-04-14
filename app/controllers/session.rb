#----------- SESSIONS/LOGIN -----------

# SEND TO LOGIN PAGE
get '/sessions/new' do
  erb :'user/login'
end


# LOGIN ACTION FROM FORM
post '/sessions/new' do
  if !User.where(email: params[:email]).empty?
    @user = User.find_by_email(params[:email])
    if @user.password_hash == BCrypt::Engine.hash_secret(params[:password], @user.password_salt)
      session[:user_id] = @user.id
      flash[:success] = "Welcome back #{@user.name}!"
      redirect "/users/#{@user.id}"
    else
      flash[:error] = "We do not recognize that password."
      erb :'user/login'
    end
  else
    flash[:error] = "We don't know anyone by that email"
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