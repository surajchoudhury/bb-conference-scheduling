require_relative "session"

class MorningSession < Session
  attr_reader :name

  def initialize
    @name = 'Morning'
    super(total_minutes, end_time)
  end

  def start(talks)
    super(talks)
  end
 
  def start_time
    self.get_start_time(9)
  end

  def end_time
    self.get_end_time(12)
  end

  def total_minutes
    self.get_total_minutes(start_time, end_time)
  end
end