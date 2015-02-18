get "/category/:id" do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

get "/profile/:id/new_category" do
  @user = User.find(params[:id])
  erb :category_form, layout: false
end

post "/profile/:id/new_category" do
  @category = Category.create(name: params[:name], user_id: params[:id])
  @user=User.find(params[:id])
  # redirect "/profile/#{@user.id}"
  content_type :json
  return{name: @category.name}.to_json
end

get "/category/:id/delete" do
  @category = Category.find(params[:id])
  erb :delete_category
end

delete "/category/:id/delete" do
  @category = Category.find(params[:id])
  @category.destroy
  redirect "profile/#{session[:id]}"
end
