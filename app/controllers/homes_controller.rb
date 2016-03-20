class HomesController < ApplicationController
	def latest
 	  if user_signed_in? 
 	  	redirect_to my_contacts_path
 	  end	
	end
end