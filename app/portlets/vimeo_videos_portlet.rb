class VimeoVideosPortlet < Cms::Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor false

  def render
    raise ArgumentError, "No Vimeo Username was given" if self.username.blank?

    @videos = VimeoVideo.find_or_create_by_username(self.username).get_user_videos(@portlet.limit)

    instance_eval(self.code) unless self.code.blank?
  end

end