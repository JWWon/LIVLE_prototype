class CreateUpcomings < ActiveRecord::Migration[5.1]
  def change
    create_table :upcomings do |t|
      t.string :upcoming_token
      t.string :title
      t.string :artist
      t.boolean :is_youtube
      t.string :video_url
      t.date :d_day
      t.string :place
      t.string :ticket_link

      t.timestamps
    end

    add_index :upcomings, :upcoming_token, unique: true
  end
end
