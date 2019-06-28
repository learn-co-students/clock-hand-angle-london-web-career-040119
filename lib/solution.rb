class Clock
  def initialize(time)
    @hour, @minute = time.split(':').map(&:to_i)
  end

  def hour_hand_angle
    @hour % 12 * 30 + @minute * 0.5
  end

  def minute_hand_angle
    @minute * 6.to_f
  end

  def angle_between_hands
    gap1 = (hour_hand_angle - minute_hand_angle).abs
    gap2 = (360 - gap1).abs
    [gap1, gap2].min
  end
end

def clock_angle(time)
  # code your solution here
  Clock.new(time).angle_between_hands
end
