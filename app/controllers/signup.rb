get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  @user = User.create(username: params[:username], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  if @user.save
    session[:id] = @user.id
    redirect '/profile/#{user.id}'
  else
    redirect '/login'
  end
end
