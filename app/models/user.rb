class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	validates :username, presence: true, length: { minimum: 6, maximum: 16 }
	VALID_EMAIL_REGEX = /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
	validates :email, presence: true, length: { minimum: 7, maximum: 24 }, 
									  uniqueness: { case_sensitive: false },
									  format: { with: VALID_EMAIL_REGEX }
	has_many :answers
	has_many :questions
end
