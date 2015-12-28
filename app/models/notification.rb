class Notification < ActiveRecord::Base

	validates :user_id, :subject, :body, 
        :presence => true

	belongs_to :user

	scope :newest, -> {
  		order("created_at desc")
  	}
end
