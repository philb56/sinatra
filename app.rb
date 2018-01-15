require 'sinatra'
#shotgun app.rb -p 4567
set :session_secret, 'super secret'
get '/phil' do
  '<H1>Hello Phil</H1>'
end
get '/alex' do
  '<H1>Hello Alex</H1>'
end
get '/named-cat' do
  p params
  @name=params[:name]
  erb(:index)
end
get '/random-cat' do
  @name=["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
get '/' do
  '<H1>Hello World!</H1>'
end
