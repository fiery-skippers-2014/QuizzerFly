#---------------USER PROFILE PAGE-----------------

# Show User page
get '/users/:user_id' do
  @logged_in_user = current_user
  @user = User.find(params[:user_id])
  @users_surveys = Survey.where(user_id: @user.id)
  @taken_ids = CompletedSurvey.where(user: @user.id).order("created_at DESC")
  @completed_surveys = Survey.where(user_id: @taken_ids)
  erb :'user/profile'
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
    erb :'user/register'
  end
end




# SEND LOGGED-IN USER TO UPDATE PAGE
get '/users/:user_id/update_account' do
  if current_user.id.to_i == params[:user_id].to_i
    @user = User.find(params[:user_id])
    erb :'user/update'
  else
    redirect "/"
  end
end
# ALLOW USER TO EDIT/UPDATE THEIR INFO
put '/users/:user_id/update_account' do
  @user = User.find(params[:user_id])
  password_salt = BCrypt::Engine.generate_salt
  password_hash = BCrypt::Engine.hash_secret(params[:password], password_salt)
  current_user.update_attributes(
    email: params[:email],
    name: params[:name],
    password_hash: password_hash,
    password_salt: password_salt
  )
  redirect "/users/#{@user.id}"
end






# SEND TO PAGE TO DELETE ACCOUNT
get '/users/:user_id/delete' do
  if current_user.id == params[:user_id]
    erb :'user/delete'
  else
    redirect '/'
  end
end
## DESTROY YOUR ACCOUNT
post '/users/:user_id/delete' do
  current_user.destroy
  session[:id] = nil
  redirect '/'
end

