# arya reji
class User < ApplicationRecord
  def self.create_record(params) 
  	age	= age_find(params[:date_of_birth])
  	if age > 14
  		User.create(params)
  	end
  end

    def self.age_find(date_of_birth)
		new_date = Date.today
			dob = Date.parse(date_of_birth)
			days = (dob- new_date).to_i
			days / 365
    end
end
				