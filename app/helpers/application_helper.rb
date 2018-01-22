module ApplicationHelper

	def not_allowed(current_user, child)
		!current_user || current_user.id != child.user_id
	end

	def many_kids
		current_user.children.count > 1
	end

end
