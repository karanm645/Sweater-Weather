class ActivityFacade
  def self.activity_search(activity)
    ActivityService.get_activity(activity)
  end 
end 