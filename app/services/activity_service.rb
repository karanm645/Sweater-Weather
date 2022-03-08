class ActivityService
  def self.get_activity(genre)
    conn = Faraday.new(url: "https://www.boredapi.com") do |faraday|
      faraday.params[:units] = "imperial"
    end 
    response = conn.get("/api/activity?type=#{genre}")
    JSON.parse(response.body, symbolize_names: true)
  end 
end 