module ApplicationHelper
	def star_jones(rating = 0)
		stars = ''
		rating.to_i.times do 
			stars += content_tag(:i, '', class: 'icon-star')
			end
			stars.html_safe
			# if rating > rating_floor
			# stars += content_tag(:i, '',	class: 'icon-star-half')
			# end
			# stfars.html_safe

	end
		def logged_in?
				current_user.present?
		end
end
