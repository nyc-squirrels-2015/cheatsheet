get "/category/:id" do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

get "/profile/:id/new_category" do
  # content_type :json
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
