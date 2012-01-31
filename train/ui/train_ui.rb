require 'require_all'
require_rel '../app'

p "Please input the map of railroads, such as AB5, BC4, AC6, ..."
railroads = gets
railmap = RailMap.new(railroads)

p "Please input your chioce: "
p "1 : get distance of route"
p "2 : get the length of the shortest route between two stations"
p "3 : get path between two station"

function_num = gets.to_i

case function_num
  when 1 
    p "Please input the route, which you want to get distance. "
    p "The format should be like: A-B-C"
    routes = gets.chomp
    distance = railmap.distance(routes)
    p "The distance of route #{routes} is #{distance}."
  when 2
    p "Please input the two stations "
    p "The format should be like: A,C"
    stations = gets.chomp
    from = stations.split(",")[0]
    to = stations.split(",")[1]
    length = railmap.shortest_route_length(from,to)
    p "the length of the shortest route between two stations #{stations} is #{length}."
  when 3
    p "3----"
  else
    p "There is no this choice"
end
