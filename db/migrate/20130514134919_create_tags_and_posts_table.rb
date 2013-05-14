class CreateTagsAndPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |p|
      p.string :name
      p.text :contents
      p.datetime :time
    end

      create_table :tags do |x|
        x.string :name
      end

      create_table :posts_tags do |x|
        x.integer :post_id
        x.integer :tag_id
      end
  end
end
a