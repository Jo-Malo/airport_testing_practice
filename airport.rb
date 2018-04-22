class Airport

  attr_reader :name, :max_planes, :checked_in, :planes_landed

  def initialize(name, max_planes, checked_in)
    @name = name
    @max_planes = max_planes
    @checked_in = []
    @planes_landed = []
  end

  def checked_in_count
    return @checked_in
  end

  def checked_in(passenger)
    @checked_in.push(passenger)
  end

  def check_out(passenger)
    @checked_in.delete(passenger)
  end

  def land_plane_in_airport(plane)
    @planes_landed.push(plane)
  end

  def plane_takes_off(plane)
    @planes_landed.delete(plane)
  end

end
