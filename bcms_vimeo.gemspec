$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bcms_vimeo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
      s.add_dependency "browsercms", "~> 3.5.2"

  s.name        = "bcms_vimeo"
  s.version     = BcmsVimeo::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BcmsVimeo."
  s.description = "TODO: Description of BcmsVimeo."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
    s.files -= Dir['lib/tasks/module_tasks.rake']
  s.test_files = Dir["test/**/*"]

  # Depend on BrowserCMS,rather than Rails 
 # s.add_dependency "rails", "~> 3.2.5"
  # s.add_dependency "jquery-rails"
  s.add_dependency "vimeo"

  s.add_development_dependency "sqlite3"
end
