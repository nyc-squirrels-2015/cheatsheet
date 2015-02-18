get '/' do
  erb :welcome
end

get '/login' do
  erb :'auth/login'
end

post '/login' do
  user = User.find_by(username: params[:username])

  if user.try(:authenticate, params[:password])
    session[:id] = user.id
    redirect "/profile/#{user.id}"
  else
  redirect "/login"
  end
end

get '/logout' do
  session.clear
  redirect ' /'
end
