module ApplicationHelper
	# def login_helper style = ''
 #    if current_user.is_a?(GuestUser)
 #      (link_to "Register", new_user_registration_path, class: "#{style} #{active?(new_user_registration_path)}") +
 #      " ".html_safe +
 #      (link_to "Login", new_user_session_path, class: "#{style} #{active?(new_user_session_path)}")
 #    else
 #      link_to "Logout", destroy_user_session_path, method: :delete, class: style
 #    end
 #  end
  
	def active? path
    "active" if current_page? path
  end

  def alerts_helper
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generater alert
    end
  end

  def alert_generater msg
    js add_gritter(msg, title: "Ben's Barbershop", sticky: false)
  end

  def copyright_generator
    JohnsonCopyRight::Renderer.copyright 'Ben Fellingham', 'All rights reserved'
  end
end
