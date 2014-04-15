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
  # there's no reason to do this! you should just do where and like statements.
  # you should generally try to use simple where statements, as opposed to a like search.
  name = "%" + params[:name] + "%"
  @searched_users = User.where('name like ?', name )
  erb :search
end