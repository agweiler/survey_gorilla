set :protection, except: :session_hijacking

get '/signup' do
erb :signup
end

get '/login' do
erb :login
end

get '/main/:user_id' do
 @user = User.find_by_id(session[:user_id])

 erb :main
end

post '/signup' do
  User.create(name: params[:user_id], password: params[:user_pass])

  redirect to ('/login')
end

post '/login' do
  user = User.authenticate(params[:user_id], params[:user_pass])

  if user
    session[:user_id] = user.id
    session[:user_name] = user.name
    redirect to('/main/' + user.id.to_s)
  else
    redirect to ("/login")
  end

end

