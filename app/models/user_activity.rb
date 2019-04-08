class UserActivity < ApplicationRecord
  belongs_to :user
  belongs_to :activity

  attribute :start, :datetime, default: "2000-01-01"
end
