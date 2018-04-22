require('minitest/autorun')
require('minitest/rg')
require_relative('../airport')
require_relative('../passenger')
require_relative('../plane')

class TestAirport < MiniTest::Test

  def setup
    @airport = Airport.new("Edinburgh", 2, [])

    @passenger1 = Passenger.new("Bob")
    @passenger2 = Passenger.new("Gaz")
    @passenger3 = Passenger.new("Terry")

    @plane = Plane.new("Cathay Pacific", "Hong Kong")
    @plane1 = Plane.new("Emirates", "Dubai")
  end

  def test_name
    assert_equal("Edinburgh", @airport.name)
  end

  def test_max_planes
    assert_equal(2, @airport.max_planes)
  end

  def test_checked_in_count
    assert_equal([], @airport.checked_in_count)
  end

  def test_can_check_in
    @airport.checked_in(@passenger1.name)
    assert_equal(["Bob"], @airport.checked_in_count)
  end

  def test_can_check_out
    @airport.checked_in(@passenger1.name)
    @airport.checked_in(@passenger2.name)
    @airport.check_out(@passenger1.name)
    assert_equal(["Gaz"], @airport.checked_in_count)
  end

  def test_planes_landed
    assert_equal([], @airport.planes_landed)
  end

  def test_land_plane_in_airport
    @airport.land_plane_in_airport(@plane.name)
    assert_equal(["Cathay Pacific"], @airport.planes_landed)
  end

  def test_plane_takes_off
    @airport.land_plane_in_airport(@plane.name)
    @airport.land_plane_in_airport(@plane1.name)
    @airport.plane_takes_off(@plane.name)
    assert_equal(["Emirates"], @airport.planes_landed)
  end

end
