class Post < ActiveRecord::Base

attr_accessible :user_id

def tags
  @poststags = PostsTag.where(:post_id => id)
  @tag_ids = @poststags.map { |x| x.tag_id }
  Tag.where(:id => @tag_ids)
end

end