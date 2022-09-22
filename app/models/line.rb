class Line < ApplicationRecord
  self.primary_key = :line_code

  belongs_to :company, primary_key: :company_code
  has_many :lines_stations
  has_many :stations, through: :lines_stations

  validates :line_code, presence: true, uniqueness: true
  validates :name, presence: true
end
