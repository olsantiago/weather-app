# frozen_string_literal: true

# OpenWeather service to make the api calls
module OpenWeather
  # api calls
  module Api
    extend Connection
    def self.current_weather(location)
      get_weather(location)
    end

    def self.current_weather_by_coordinate(longitude:, latitude:)
      get_weather_by_coordinates(longitude: longitude, latitude: latitude)
    end

    def self.current_air_quality(longitude:, latitude:)
      get_air_quality(longitude: longitude, latitude: latitude)
    end
  end
end
