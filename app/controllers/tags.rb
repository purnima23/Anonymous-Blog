get '/tags' do
  # Look in app/views/index.erb
  @tagsall = Tag.all
  erb :tag_all
end

get '/tags/:id' do
  id = params[:id]
  @data = Tag.find(id)
  erb :tag_specific
end