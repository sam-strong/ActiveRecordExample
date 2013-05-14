class User < ActiveRecord::Base

  def posts
    @posts = Post.where(:user_id => id)
  end

end
