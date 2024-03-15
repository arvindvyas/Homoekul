class CreateVideoLectures < ActiveRecord::Migration[7.1]
  def change
    create_table :video_lectures do |t|
      t.string :title
      t.string :trailer_url
      t.string :full_video_url

      t.timestamps
    end
  end
end
