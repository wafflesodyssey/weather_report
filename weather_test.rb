require "minitest/autorun"
require "minitest/pride"
require "./weather"
require "webmock/minitest"


class ForecastTest < Minitest::Test
  def test_can_get_weather
    response = File.read("./weather_10_day_data.json")
    stub_request(:get,
    "http://api.wunderground.com/api/06d952a02fe95bb3/forecast10day/q/20330.json")
    .to_return(body: response, headers: { content_type: "application/json"})

    f = Forecast.new 
