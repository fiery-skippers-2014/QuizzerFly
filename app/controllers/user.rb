#---------------USER PROFILE PAGE-----------------

# Show User page
get '/users/:user_id' do
  @logged_in_user = current_user
  @user = User.find(params[:user_id])
  @users_surveys = Survey.where(user_id: @user.id).order("created_at DESC")
  @taken_ids = CompletedSurvey.where(user: @user.id)
  @completed_surveys = Survey.where(id: @taken_ids).order("created_at DESC")
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
    flash[:success] = "Welcome to QuizzerFly!"
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
    name: params[:name],
    company: params[:company]
  )
  if @user.save
    flash[:success] = "Profile updated"
    redirect "/users/#{@user.id}"
  else
    @errors = @user.errors.full_messages
    erb :'user/update'
  end
end






# SEND TO PAGE TO DELETE ACCOUNT
get '/users/:user_id/delete' do
  if current_user
    if current_user.id == params[:user_id].to_i
      current_user.destroy
      session[:user_id] = nil
      flash[:success] = "You just destroyed yourself! ='("
      redirect "/"
    end
  else
    flash[:error] = "You cannot delete an account which is not yours!"
    redirect "/"
  end
end
## DESTROY YOUR SESSION
# post '/users/:user_id/delete' do
#   current_user.destroy
#   session[:id] = nil
#   flash[:success] = "You just destroyed yourself! ='("
#   redirect '/'
# end

