train_list = [
  {train: "72C", frequency_in_minutes: 15, direction: "north"},
  {train: "72D", frequency_in_minutes: 15, direction: "south"},
  {train: "610", frequency_in_minutes: 5, direction: "north"},
  {train: "611", frequency_in_minutes: 5, direction: "south"},
  {train: "80A", frequency_in_minutes: 30, direction: "east"},
  {train: "80B", frequency_in_minutes: 30, direction: "west"},
  {train: "110", frequency_in_minutes: 15, direction: "north"},
  {train: "111", frequency_in_minutes: 15, direction: "south"}
]

# part 1
train_111_direction = train_list[-1][:direction]

# part 2
train_80B_frequency = train_list[5][:frequency_in_minutes]

# part 3
train_610_direction = train_list[2][:direction]

# # part 4
# north_trains = train_list.select do |current_train|
#   current_train[:direction] == "north"
# end
#
# puts "Here are the trains travelling north: #{north_trains}"
#
# # part 5
# east_trains = train_list.select do |current_train|
#   current_train[:direction] == "east"
# end
#
# puts "Here are the trains travelling east: #{east_trains}"

# part 6
def trains_by_direction(list_of_trains, selected_direction)
  list_of_trains.select do |current_train|
    current_train[:direction] == selected_direction
  end
end

north_trains = trains_by_direction(train_list, "north")
east_trains = trains_by_direction(train_list, "east")

puts "Here are the trains travelling north: #{north_trains}"
puts "Here are the trains travelling east: #{east_trains}"

# part 7
train_list[3]["first_departure_time"] = 3
