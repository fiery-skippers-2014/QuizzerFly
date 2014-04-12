#---------------USER PROFILE PAGE-----------------

# Show User page
get '/users/:user_id' do
  if current_user
    @user = User.find(params[:user_id])
    @surveys = Survey.where(user_id: current_user.id).order("created_at DESC")
    erb :'user/profile'
  else
    redirect "/"
  end
end


# SEND TO REGISTRATION PAGE
get '/register' do
  erb :'user/register'
end
# SAVE USER INFO AS A NEW SESSION
post '/register' do
  password_salt = BCrypt::Engine.generate_salt
  password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)
  @user = User.new(
    email: params[:email],
    name: params[:name],
    password_hash: password_hash,
    password_salt: password_salt
  )
  if @user.save
    session[:user_id] = @user.id
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    redirect "/"
  end
end




# SEND LOGGED-IN USER TO UPDATE PAGE
get 'users/:user_id/update' do
  if current_user
    erb :'user/update'
  else
    redirect '/'
  end
end
# ALLOW USER TO EDIT/UPDATE THEIR INFO
post 'users/:user_id/update' do
  redirect '/'
end








## DESTROY YOUR ACCOUNT
get '/users/:user_id/delete' do
  if current_user.id == params[:user_id]
    erb :'user/delete'
  else
    redirect '/'
  end
end

post '/users/:user_id/delete' do
  current_user.destroy
  session[:id] = nil
  redirect '/'
end

