class RoadTripFacade
  def self.trip_details(start, final)
    service = GeoService.get_directions(start, final)
    RoadTrip.new(service, start, final)
  end
end 