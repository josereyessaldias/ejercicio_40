class Category < ApplicationRecord
	has_many :activity_category
	has_many :activities, through: :activity_category
end
