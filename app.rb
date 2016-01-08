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

  if growl.length > 142
    @error = true
    @error_msg = "Nope"
    @name_before_error = name
    @growl_before_error = growl
    erb :add
  else
  session[:growls].push growl

  redirect '/'
  end
end

