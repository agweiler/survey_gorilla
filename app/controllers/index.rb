enable :sessions

get '/' do
  # session.clear
  erb :login
end

get '/logout' do
  session.clear
  redirect to '/'
end

