# talk
class Talk
  attr_reader :title, :duration

  def initialize(title, duration)
    @title = title
    @duration = duration
  end

  def print_status(start_time)
    puts "#{start_time.strftime('%I:%M %p')} #{@title} #{@duration} min"
  end

  def end_time(start_time)
    start_time + (@duration * 60)
  end
end

# subclass of talk
class LightningTalk < Talk
  def initialize(title)
    super(title, 5)
  end
end
