class WeekSheet

attr_reader :month, :week_of
attr_accessor :workdays, :file_path

  def initialize(month, day)
    @month = month
    @week_of = day
    @workdays = {}
  end

  def set_file_path(path)
    @file_path = path
  end

  def self.monday_now?
    t = Time.now
    
    #We'll use Monday as our starting day of the week
    if t.monday?
      WeekSheet.new(Time.now.month, Time.now.day)
    else
      WeekSheet.new(t.find_monday.month, t.find_monday.day)
    end

  end

  def complete_sheet
    @file = File.open("#{@file_path}/#{@month}_week_of_#{@week_of}.txt", "a")
    @workdays.each { |k, v| @file << "Time worked for #{k}: #{v}" }
  end

end
