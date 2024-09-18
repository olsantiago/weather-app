# frozen_string_literal: true

# OpenWeather
module OpenWeather
  # OpenWeather connection to faraday
  module Connection
    API_KEY = ENV['OPENWEATHER_API_KEY']
    BASE_URL = ENV['OPENWEATHER_URL']

    def connection
      @connection ||= Faraday.new(
        url: BASE_URL,
        params: { 'APPID': API_KEY },
        headers: { 'Content-Type' => 'application/json' }
      )
    end

    def get_weather(location)
      connection.get('/data/2.5/weather') do |req|
        req.params['q'] = location
        req.params['units'] = 'imperial'
      end
    end

    def get_weather_by_coordinates(longitude:, latitude:)
      connection.get('/data/2.5/weather') do |req|
        req.params['lon'] = longitude
        req.params['lat'] = latitude
        req.params['units'] = 'imperial'
      end
    end

    def get_air_quality(longitude:, latitude:)
      connection.get('data/2.5/air_pollution') do |req|
        req.params['lon'] = longitude
        req.params['lat'] = latitude
      end
    end
  end
end
