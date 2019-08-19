module ApplicationHelper
  ##regular ruby methods, the purpose is to whenever you need some conditional logic
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Login", new_user_session_path) + "<br>".html_safe +
      (link_to "Register", new_user_registration_path)
    end
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
