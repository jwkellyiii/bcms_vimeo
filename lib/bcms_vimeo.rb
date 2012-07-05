require "bcms_vimeo/engine"

#module BcmsVimeo
module Cms::Routes
  def routes_for_bcms_vimeo
    namespace(:cms) do |cms|
      cms.content_blocks :vimeo_videos
    end
  end
end
