module ApplicationHelper

	def not_allowed(current_user, child)
		if !current_user
			"" 
		elsif current_user.id != child.user_id
			""
		end
		
	end



end
