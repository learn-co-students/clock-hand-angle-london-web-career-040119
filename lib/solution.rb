def clock_angle(time)
    time_elements = time.split(":")
    time_elements.map! { |string| string.to_f }

    min_hand = time_elements[1] * 6
    hour_hand_one = time_elements[0] * 30
      if hour_hand_one == 360
        hour_hand_one = 0
      end
    hour_hand_two = time_elements[1] * 0.5
    hour_hand = hour_hand_one + hour_hand_two

    degree_1 = (hour_hand - min_hand).abs
    degree_2 = 360 - degree_1
    [degree_1, degree_2].min
end
