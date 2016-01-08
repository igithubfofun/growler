require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
  session[:growls] ||= []
  session[:names] ||= []
end

# Routes
get '/' do
  @all_growls = session[:growls]
  @all_names = session[:names]
	erb :index
end

get '/add' do
  erb :add
end

post '/add' do

  growl = params[:user_growl]
  name = params[:user_name]
  growlset = {0 => name, 1 => growl}

  if growl.length > 142
    @error = true
    @error_msg = "Too many characters! Max: 142"
    @name_before_error = name
    @growl_before_error = growl
    erb :add
  else

  session[:growls].push growlset


  redirect '/'
  end
end

get '/logout' do

    session.clear
    session[:@all_growls] = []
    session[:@all_names] = []
    erb :logout

end

get '/users/:name' do
  @name = params[:name]
  erb :profile
end






