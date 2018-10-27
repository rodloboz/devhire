module ApplicationHelper
  def avatar_url(dev)
    if dev.avatar_url.present?
      url = image_path(dev.avatar_url)
    else
      url = "geek.jpg"
    end
  end
end
