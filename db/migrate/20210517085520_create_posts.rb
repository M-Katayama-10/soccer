class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.date        :days,         null: false
      t.string      :dayofweek,    null: false
      t.string      :starttime
      t.string      :endtime
      t.string      :place
      t.text        :supplement
      t.references  :user,         null: false, foreign_key: true
      t.timestamps
    end
  end
end
