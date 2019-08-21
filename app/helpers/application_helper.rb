module ApplicationHelper
  ##regular ruby methods, the purpose is to whenever you need some conditional logic
  def login_helper style = ""
    if current_user.is_a?(GuestUser)
      (link_to "Login", new_user_session_path, class: style) + " ".html_safe +
      (link_to "Register", new_user_registration_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end

  def sample_helper
    content_tag(:div, "My Content", class: "mine")
  end

  def nav_link_to(title, path)
    link_to title, path, class: "nav-link #{'active' if current_page? path}"
  end



  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end


  def copyright_generator
    DevcampViewToolFa::Renderer.copyright 'Francisca Astengo', 'All rights reserved'
  end
end

def sample_method
  x = 1
  if x ==1
    "yay"
  else
    "no"
  end
end
