class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :users do |x|
      x.string :name
      x.datetime :time
    end

    change_table :posts do |p|
      p.integer :user_id
    end

  end
end
