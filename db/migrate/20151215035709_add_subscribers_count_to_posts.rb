class AddSubscribersCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :subscribers_count, :integer, :default => 0
  end
end
