class CreateStages < ActiveRecord::Migration[5.1]
  def change
    create_table :stages do |t|
      t.string :stage_token
      t.string :title
      t.string :artist
      t.string :user_id
      t.boolean :is_youtube
      t.string :video_url
      t.integer :count_like
      t.integer :count_view
      t.integer :count_share

      t.timestamps
    end
    add_index :stages, :stage_token, unique: true
  end
end
