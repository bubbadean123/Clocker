require 'time_extension'
require 'dir_checker'
require 'week_sheet'
require 'work_day'

breaker = false

puts "What would you like to do?"

until breaker do
  puts "Awaiting Input"
  input = gets.chomp
  case input

    when "new sheet"
      puts "Please enter a valid directory path to save files"
      DirChecker.new(gets.chomp).path_exists?
      
      sheet = WeekSheet.monday_now?
    when "exit", "quit"
      breaker = true
    when "start" : day = WorkDay.new(sheet); day.log_start_time
    when "end" : day.log_end_time; day.log_time_worked
    when "complete" : sheet.create_sheet
    else
    puts "Invalid Input"
  end
end
