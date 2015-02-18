get '/profile/:id' do
  @user = User.find(params[:id])
  erb :profile
end

get '/category/:id' do
  @category = Category.find(params[:id])
end
