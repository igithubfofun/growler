require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
  session[:growls] ||= []
end

# Routes
get '/' do
  @all_growls = session[:growls]
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

get '/clear' do

    session.clear
    session[:@all_growls] = []
    erb :clear

end

get '/profile/:name' do
  @name = params[:name]
  erb :profile

end






