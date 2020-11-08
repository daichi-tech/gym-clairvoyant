class Gym < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :image
    validates :address
    validates :playweek
    validates :playtime
    validates :map_url
  end
end
