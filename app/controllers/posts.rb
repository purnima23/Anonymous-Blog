require 'byebug'
get '/posts' do
  # Look in app/views/index.erb
  @all = Post.all
  erb :post_all
end

get '/posts/create' do
  @tag = Tag.all
erb :create_post
end

post '/posts/create' do
  title = params[:title_input]
  desc = params[:desc_input]
  tag = Tag.find(params[:tag_input])
  post = Post.create(title: title, description: desc)
  post.tags << tag

redirect to '/posts'
end


get '/posts/:id' do
  id = params[:id]
  @data = Post.find(id)
  erb :post_specific
end

get '/posts/edit/:id' do
  id = params[:id]
  @data = Post.find(id)

  erb :post_edit
end

put '/posts/edit/:id' do
  id = params[:id]
  title = params[:title_input]
  desc = params[:description_input]

  post = Post.find(id)
  post.title = title
  post.description = desc
  post.save

  redirect to '/posts'
end

get '/posts/delete/:id' do
  id = params[:id]
  @data = Post.find(id)
  erb :post_delete
end

delete'/posts/delete/:id' do
  id = params[:id]
 data = Post.find(id)
 data.destroy
  redirect to '/posts'
end