require 'minitest/autorun' #Import unit test framework
require 'mountain_bike' #Import file to be tested
#ruby -I . -w mountain_bike_test.rb


class MountainBikeTest < Minitest::Test
  def test_mountain_bike_price
    #assert which is used to say that the following statment will be true
    #assert equal 4,2+2, expected value, test expression
    assert_in_delta 116, mountain_bike_price(100, :rigid)
    assert_in_delta 146, mountain_bike_price(100, :front_suspension)
    assert_in_delta 206, mountain_bike_price(100, :full_suspension)
  end

end
