class Station < ApplicationRecord
  self.primary_key = :station_code

  belongs_to :company, foreign_key: :company_code
  has_many :lines_stations, foreign_key: :station_code
  has_many :lines, through: :lines_stations
  has_many :bookmarks, dependent: :destroy, foreign_key: :station_code
  has_many :users, through: :bookmarks

  validates :station_code, presence: true, uniqueness: true
  validates :name, presence: true

  def to_param
    station_code
  end
end
