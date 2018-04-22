require('minitest/autorun')
require('minitest/rg')
require_relative('../passenger')
require_relative('../airport')

class TestPassenger < MiniTest::Test

  def setup
    @passenger1 = Passenger.new("Bob")
    @passenger2 = Passenger.new("Gaz")
    @passenger3 = Passenger.new("Terry")

    @passenger = Passenger.new([@passenger1,@passenger2,@passenger3])
  end

  def test_passenger1_name
    assert_equal("Bob", @passenger1.name)
  end

  def test_amount_of_passengers
    assert_equal(0, @passenger.amount_of_passengers)
  end

end
