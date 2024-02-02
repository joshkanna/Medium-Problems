def min_rooms(intervals)
  return 0 if  intervals.nil? || intervals.empty?

  events = []

  intervals.each do |start, end_time|
    events << [start, 1] # 1 represents start time
    events << [end_time, -1] # -1 represents end time
  end

  events.sort!

  current_rooms = 0
  max_rooms = 0

  events.each do |event_time, event_type|
    current_rooms += event_type
    max_rooms = [current_rooms, max_rooms].max
  end

  max_rooms
end