class Activity < ApplicationRecord
	has_many :user_activity
	has_many :users, through: :user_activity

	has_many :activity_category
	has_many :categories, through: :activity_category
end
