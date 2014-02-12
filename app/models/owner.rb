class Owner < ActiveRecord::Base

	has_secure_password
	


  #simple interpolation with first and last name to a string on a name call.
  def name
    "#{first_name} #{last_name}".to_s   
  end  
  	
end
