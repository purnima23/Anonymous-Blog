require_relative '../app/models/post'
require_relative '../app/models/tag'
require_relative '../app/models/post_tag'

post = Post.create(title: "Nasi Lemak", description: "Malaysian Food")

tag = Tag.create(name: "Food")
# automate create the middle table
#post.tags.create(name: "Food")



post.tags << tag

# manually create midle table
# post_tag = PostTag.create(post_id: post.tags, tag_id: tag.posts)