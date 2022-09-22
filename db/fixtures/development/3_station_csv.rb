require 'csv'

csv = CSV.read('db/fixtures/csv/stations.csv')

csv.each do |line|
  station_code = line[0]
  company_code = line[1]
  name = line[2]
  longitude = line[3]
  latitude = line[4]

  Station.seed(:station_code) do |s|
    s.station_code = station_code
    s.company_code = company_code
    s.name = name
    s.longitude = longitude
    s.latitude = latitude
  end
end
