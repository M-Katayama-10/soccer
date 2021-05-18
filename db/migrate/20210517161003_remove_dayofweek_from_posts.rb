class RemoveDayofweekFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :dayofweek, :string
  end
end
