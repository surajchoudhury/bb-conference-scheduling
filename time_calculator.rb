module TimeCalculator

  def time  () Time.now   end
  def hour  () time.hour  end
  def day   () time.day   end
  def month () time.month end
  def year  () time.year  end

  def get_start_time(start_hour)
    Time.local(year, month, day, start_hour)
  end

  def get_end_time(end_hour)
    Time.local(year, month, day, end_hour)
  end

  def get_total_minutes(start_time, end_time)
    ((end_time - start_time) / 60).to_i
  end
end