get "/category/:id" do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

get "/profile/:id/new_category" do
  @user = User.find(params[:id])
  erb :category_form, layout: false
end

get "/category/:id/delete" do
  @category = Category.find(params[:id])
  erb :delete_category
end

post "/profile/:id/new_category" do
  @category = Category.create(name: params[:name], user_id: params[:id])
  @user=User.find(params[:id])
  content_type :json
  return @category.to_json
end

delete "/category/:id/delete" do
  @category = Category.find(params[:id])
  @category.destroy
  redirect "profile/#{session[:id]}"
end
