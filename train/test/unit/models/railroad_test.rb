require "test/unit"
require "../unit_helper"

class RailRoadTest < Test::Unit::TestCase

  def test_create_railroad
    from = "A"
    to = "B"
    railroad = RailRoad(from, to, 5)

    assert_equal(from, railroad.from)
    assert_equal(to, railroad.to)
    assert_equal(5, railroad.distance)
  end
end
