module ApplicationHelper

	def login_helper(style)
		if current_user.is_a?(GuestUser)
         (link_to "Sign_Up", new_user_registration_path, class: style) +
         " ".html_safe +
         (link_to "Login", new_user_session_path, class: style)
        else
          link_to "Logout", destroy_user_session_path, method: :delete, class: style
        end
    end

    def copyright_generator
      DevcampViewTool::Renderer.copyright 'Adam Nemeth', 'All rights reserved'
    end
end
