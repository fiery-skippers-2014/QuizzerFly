#----------- HOMEPAGE -----------

get '/' do
  @surveys = Survey.all
  erb :index
end

get '/search/' do
  erb :search
end

get '/search/*' do
  @search_term = params[:name]
  name = "%" + params[:name] + "%"
  @searched_users = User.where('name like ?', name )
  erb :search
end