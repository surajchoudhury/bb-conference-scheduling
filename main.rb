require_relative 'screened'
require_relative 'morning_session'
require_relative 'afternoon_session'

class Conference
  def initialize(talks)
    @talks = talks
    @track1 = []
    @track2 = []
  end

  def load_sessions
    morning_session
    afternoon_session
  end

  def morning_session
    @track1 = MorningSession.new.start(@talks)
    @track2 = MorningSession.new.start(@talks)
  end

  def afternoon_session
    @track1 = AfternoonSession.new.start(@talks)
    @track2 = AfternoonSession.new.start(@talks)
  end

  def print_status
    puts "\nTrack1"
    @track1.each {|t| t[:talk].starts_at(t[:start_time])}
    puts "\nTrack2"
    @track2.each {|t| t[:talk].starts_at(t[:start_time])}
  end
end


conference = Conference.new(Screened::TALKS)
conference.load_sessions
conference.print_status