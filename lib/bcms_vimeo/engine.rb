require 'browsercms'
module BcmsVimeo
  class Engine < ::Rails::Engine
    isolate_namespace BcmsVimeo
		include Cms::Module

    config.action_view.javascript_expansions[:bcms_vimeo] = %w(/bcms/bcms_vimeo/modal_video.js)
  end
end
