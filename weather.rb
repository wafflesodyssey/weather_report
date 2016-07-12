#weather api
require 'httparty'
require 'pry'
require 'json'
require 'webmock/minitest'


class Weathersummary
  include HTTParty
  base_uri "https://api.wunderground.com/api"
  def initialize(zipcode, key)
    @zipcode = zipcode
    @key = key
  end


  def current_weather_10_day
    self.class.get("/#{@key}/forecast10day/q/#{@zipcode}")
  end


  def sunrise_sunset
  end

  def condition
  end

  def hurricanes
  end




  def perform_request
#http://api.wunderground.com/api/06d952a02fe95bb3/conditions/q/CA/San_Francisco.json
