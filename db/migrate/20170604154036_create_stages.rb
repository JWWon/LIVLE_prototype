class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :title
      t.string :artist
      t.string :user_id
      t.string :youtube_id
      t.integer :count_like
      t.integer :count_view
      t.integer :count_share

      t.timestamps
    end
  end
end
