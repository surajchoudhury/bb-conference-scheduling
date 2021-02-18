require_relative 'time_calculator'

class Session 
  include TimeCalculator

  def initialize(total_minutes, start_time)
    @total_minutes = total_minutes
    @start_time = start_time
    @track = []
  end

  def start(talks)
    talks.map do |talk| @total_minutes -= talk.duration
      break if out_of_minutes?
        @track << Hash[talk: talk, start_time: @start_time, end_time: talk.end_time(@start_time)]
        @start_time = talk.end_time(@start_time)
    end
    @track
  end

  def out_of_minutes? 
    @total_minutes < 0
  end
end
