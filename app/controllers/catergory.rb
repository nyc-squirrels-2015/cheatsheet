get '/category/:id' do
  @category = Category.find(params[:id])
  erb :category
end
