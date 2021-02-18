require_relative "session"

class AfternoonSession < Session
  attr_reader :name

  def initialize
    @name = 'Afternoon'
    super(start_time, end_time)
  end

  def start(talks)
    super(talks)
  end

  def start_time
    self.get_start_time(13)
  end

  def end_time
    self.get_end_time(17)
  end

  def total_minutes
    self.get_total_minutes(start_time, end_time)
  end
end