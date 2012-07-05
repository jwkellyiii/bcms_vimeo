class CreateVimeoVideos < ActiveRecord::Migration
  def self.up
    create_table :vimeo_videos do |t|
      t.string :username
      t.datetime :expires_at

      t.timestamps
    end
  end

  def self.down
    drop_table :vimeo_videos
  end
end