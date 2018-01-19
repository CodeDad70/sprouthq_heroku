module ApplicationHelper

	def not_allowed(current_user, child)
		if !current_user
			"" 
		elsif current_user.id != child.user_id
			""
		end
		
	end

	def many_kids
		current_user.children.count > 1
	end

end
