class Note < ApplicationRecord
  belongs_to :plant
  belongs_to :user

  validates :content, :user_id, :plant_id, presence: true
end
