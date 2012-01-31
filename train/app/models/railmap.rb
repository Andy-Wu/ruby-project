class RailMap

  attr_reader :railroads

  def initialize (routes)
    @railroads = []
    parse routes
  end

  def distance (path)
    roads = path.split('-')
    distance = 0
    0.upto(roads.size-2) do |index|
      dis = get_distance(roads[index], roads[index+1])
      if (dis ==  -1)
        distance = 'No such route'
	break
      else
        distance += dis
      end
    end
    distance
  end

  def shortest_route(from, to)
    distance = 100000
    shortest_route = ""
    all_routes(from, to).each do |route|
      dis = distance(route)
      if dis < distance
        distance = dis
	shortest_route = route
      end
    end
    shortest_route
  end

  def shortest_route_length(from, to)
    distance(shortest_route(from, to))
  end

  
private

  def path(from, to, path, paths)
    path += '-' if path.length>0
    path += from
    if from == to
      paths << path
    else
      0.upto(@railroads.size-1) do |index|
        if @railroads[index].from == from && !path.include?(@railroads[index].to)
	  path(@railroads[index].to, to, path, paths)
	end
      end
    end
  end

  def all_routes(from, to)
    paths = []
    path = ""
    path(from, to, path, paths)
    paths
  end

  def get_distance(from, to)
    distance = -1
    @railroads.each do |road|
      if road.from.eql?(from) && road.to.eql?(to)
        distance = road.distance
	break
      end
    end
    distance
  end

  def parse routes
    from, to, distance = "", "", 0
    routes.split(",").each do |rail_road|
      chs = rail_road.chars
      chs.next if rail_road.start_with? ' '
      from = chs.next
      to = chs.next
      distance = chs.next.to_i
      @railroads << Railroad.new(from, to, distance)
    end
  end

end
