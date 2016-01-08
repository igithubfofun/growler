require 'sinatra'
require 'sinatra/reloader'

enable :sessions

before do
  session[:growls] ||= []
end

# Routes
get '/' do
  @growls = session[:growls]
	erb :index
end

get '/add' do
  erb :add
end

post '/add' do
  growl = params[:user_growl]
  session[:growls].push growl

  redirect '/'
end

