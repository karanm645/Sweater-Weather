class RoadTrip 
  attr_reader :id,
              :trip_info

  def initialize(specifications, start, final)
    @id = nil 
    @trip_info = trip_details(specifications, start, final)
  end 

  def trip_details(specifications, start, final)
    {
      start_city: start,
      end_city: final, 
      travel_time:  specifications[:route][:realTime]
    }
  end
end 