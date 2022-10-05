class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :station, foreign_key: :station_code

  validates :user_id, uniqueness: { scope: :station_code }
end
