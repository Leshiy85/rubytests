class Question < ActiveRecord::Base
	has_many :answers
	belongs_to :user
	validates :user_id, presence: true
	validates :title, presence: true, length: { minimum: 5, maximum: 20 }
	validates :description, presence: true, length: {minimum: 5, maximum: 30 }
end
