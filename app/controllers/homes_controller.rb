class HomesController < ApplicationController
	def latest
 	  if user_signed_in? 
 	  	redirect_to my_contacts_path
 	  else
 	  	redirect_to new_user_session_path
 	  end	
	end
end
