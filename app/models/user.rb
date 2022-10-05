class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :bookmarks, dependent: :destroy
  has_many :stations, through: :bookmarks

  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 4 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  enum role: { general: 0, guest: 1 }

  def already_bookmark?(line_station)
    self.bookmarks.exists?(station_code: line_station.station_code)
  end
end
