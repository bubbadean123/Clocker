class WorkDay < WeekSheet

attr_accessor :start_time, :end_time, :day_of_week, :time_worked

  def initialize(week_sheet)
    @week_sheet = week_sheet
    @day_of_week = Time.now.strftime("%A")
  end

  def log_start_time
    @start_time = Time.now
  end

  def log_end_time
    @end_time = Time.now
    # process hour/minute calc
    @time_worked = "Hours: #{@end_time.hour - @start_time.hour}, Minutes: #{@end_time.min - @start_time.min}"
  end
  
  def log_time_worked
    @week_sheet.workdays[@day_of_week.to_sym] = @time_worked
  end

end
