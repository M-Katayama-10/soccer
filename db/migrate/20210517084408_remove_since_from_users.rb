class RemoveSinceFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :since, :date
  end
end
