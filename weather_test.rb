require "minitest/autorun"
require "minitest/pride"
require "./weather"
require "webmock/minitest"


class ForecastTest < Minitest::Test
  def test_can_get_weather
    response = File.read("./weather_10_day_data.json")
    
