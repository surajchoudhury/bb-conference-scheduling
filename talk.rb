class Talk
  attr_reader :title, :duration

  def initialize(title, duration)
    @title = title
    @duration = duration
  end

  def starts_at(start_time)
    puts "#{start_time.strftime("%I:%M %p")} #{@title} #{@duration} min"
  end

  def end_time(start_time)
    start_time + (@duration * 60)
  end
end

class LightningTalk < Talk
  attr_reader :title, :duration

  def initialize(title)
    @title = title
    @duration = 5
  end

  def starts_at(start_time)
    super(start_time)
  end

  def end_time(start_time)
    super(start_time)
  end
end 