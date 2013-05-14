require 'spec_helper'

describe User do

let(:user1) { User.create }
let(:post1) { Post.create(:user_id => user1.id) }
let(:post2) { Post.create(:user_id => user1.id) }

  it 'finds all posts relating to the user' do
    user1.posts.should eq [post1, post2]
  end
end
