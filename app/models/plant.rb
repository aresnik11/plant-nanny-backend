class Plant < ApplicationRecord
  belongs_to :user
  has_many :notes, dependent: :destroy

  validates :name, :species, :image, :light, :water, :color, :user_id, presence: true

end
