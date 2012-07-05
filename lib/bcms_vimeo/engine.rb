require 'browsercms'
module BcmsVimeo
  class Engine < ::Rails::Engine
    isolate_namespace BcmsVimeo
		include Cms::Module
  end
end
