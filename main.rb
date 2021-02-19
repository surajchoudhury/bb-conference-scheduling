# frozen_string_literal: true

require_relative 'screened'
require_relative 'morning_session'
require_relative 'afternoon_session'

# conference
class Conference
  def initialize(talks)
    @talks = talks
    @track1 = []
    @track2 = []
  end

  def load_sessions
    load_morning_sessions
    load_afternoon_sessions
  end

  def load_morning_sessions
    @track1 = MorningSession.new.load_talks(@talks)
    @track2 = MorningSession.new.load_talks(@talks)
  end

  def load_afternoon_sessions
    @track1 = AfternoonSession.new.load_talks(@talks)
    @track2 = AfternoonSession.new.load_talks(@talks)
  end

  def print_status
    puts "\nTrack1"
    @track1.each { |t| t[:talk].print_status(t[:start_time]) }
    puts "\nTrack2"
    @track2.each { |t| t[:talk].print_status(t[:start_time]) }
  end
end

conference = Conference.new(Screened::TALKS)
conference.load_sessions
conference.print_status
