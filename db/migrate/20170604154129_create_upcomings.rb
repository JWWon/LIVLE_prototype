class CreateUpcomings < ActiveRecord::Migration[5.1]
  def change
    create_table :upcomings do |t|
      t.string :title
      t.string :artist
      t.string :youtube_id
      t.date :d_day
      t.string :place
      t.string :ticket_link

      t.timestamps
    end
  end
end
