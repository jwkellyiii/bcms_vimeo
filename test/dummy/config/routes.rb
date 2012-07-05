Rails.application.routes.draw do

  mount BcmsVimeo::Engine => "/bcms_vimeo"

  mount_browsercms
end
