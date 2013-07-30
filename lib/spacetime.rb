require "spacetime/version"

class SpaceTime
  
  def initialize(start_time, end_time)
    @start_time = start_time
    @end_time = end_time

    if @start_time > @end_time
      temp = @end_time
      @end_time = @start_time
      @start_time = temp
    end
  end
  
  def self.for_day(date=Date.today)
    new(date.midnight, date.tomorrow.midnight)
  end
  def self.for_week(date = Date.today)
    new(date.beginning_of_week.midnight, date.end_of_week.tomorrow.midnight)
  end
  def self.for_month(date = Date.today)
    date = date.to_date
    new(date.beginning_of_month.midnight, date.at_end_of_month.tomorrow.midnight)
  end
  def self.for_current_month
    for_month
  end
  def self.recent_days_upto_datetime_or_now(datetime, num_days)
    datetime_for_end = [Time.now, datetime].min
    new(datetime_for_end - num_days.days, datetime_for_end)
  end

  # Instance methods
  def start
    @start_time
  end
  
  def end
    @end_time
  end
  
  def cover?(time)
    (@start_time..@end_time).cover?(time)
  end

end

