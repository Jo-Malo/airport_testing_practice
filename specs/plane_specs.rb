require('minitest/autorun')
require('minitest/rg')
require_relative('../plane')
require_relative('../airport')

class TestPlane < MiniTest::Test

  def setup
    @plane = Plane.new("Cathay Pacific", "Hong Kong")
    @plane1 = Plane.new("Emirates", "Dubai")
  end

  def test_plane_name
    assert_equal("Cathay Pacific", @plane.name)
  end

  def test_plane_destination
    assert_equal("Hong Kong", @plane.plane_destination)
  end


end
