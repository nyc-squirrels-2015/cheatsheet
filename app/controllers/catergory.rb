get "/category/:id" do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

get "/profile/<%= @user.id%>/new_category" do
  erb :category_form
end
