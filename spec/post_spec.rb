require 'spec_helper'

describe Post do
  let(:user1) { User.create }
  let(:post1) { Post.create(:user_id => user1.id) }
  let(:tag1) { Tag.create }
  let(:tag2) { Tag.create }

  it 'finds all tags relate to a post' do

    PostsTag.create(:post_id => post1.id, :tag_id => tag1.id)
    PostsTag.create(:post_id => post1.id, :tag_id => tag2.id)

    post1.tags.should eq [tag1, tag2]
  end

  it 'has a user_id allocated to it' do
    post1.user_id.should eq user1.id
  end
end
