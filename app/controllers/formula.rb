get '/category/:id/new_formula' do
  @category = Category.find(params[:id])
  erb :formula_form
end

post '/category/:id/new_formula' do
  @category = Category.find(params[:id])
  @formula = Formula.create(name: params[:name], content: params[:content], category_id: params[:id], user_id: session[:id])

  redirect "category/#{@category.id}"
end
