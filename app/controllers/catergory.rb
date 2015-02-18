get '/category/:id' do
  @category = Category.find(params[:id])
  @formula=@category.formulas.all
  erb :category
end

