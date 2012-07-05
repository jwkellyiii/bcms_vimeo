require 'vimeo'

class VimeoVideo < ActiveRecord::Base
  TIMEOUT = 10
  TTL = 30.minutes

  validates_presence_of :username

  def get_user_videos(video_amount = 1)
    # Remove the cached timeline if its expired
    if self.expires_at.nil? || self.expires_at < Time.now.utc
      Rails.cache.delete('Vimeo.Videos')
    end

    # Make sure to invalidate the cache if the amount chanages
    Rails.cache.fetch('Vimeo.Videos' + video_amount.to_s) { get_videos_from_vimeo(video_amount) }
  end

  private

  def get_videos_from_vimeo(video_amount = 1)
    begin
      # New expires time for this timeline
      update_attribute(:expires_at, Time.now.utc + TTL)

      Timeout.timeout(TIMEOUT) {
        content = Vimeo::Simple::User.videos(self.username)[0..(video_amount.to_i - 1)]
      }
    rescue SocketError, Timeout::Error, Exception => exception
      logger.error("Loading videos for user #{self.username} failed with the following error #{exception.inspect}")
    end
  end

end