get "/category/:id" do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

get "/profile/:id/new_category" do
  @user = User.find(params[:id])
  erb :category_form
end

post "/profile/:id/new_category" do
  Category.create(name: params[:name], user_id: params[:id])
  @user=User.find(params[:id])
  redirect "/profile/#{@user.id}"
end
