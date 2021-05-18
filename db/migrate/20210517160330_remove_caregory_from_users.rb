class RemoveCaregoryFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :caregory, :string
  end
end
