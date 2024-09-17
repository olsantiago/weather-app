# frozen_string_literal: true

# API controller
class ApiController < ApplicationController
  rescue_from StandardError, with: :standard_error
  def index
    @name = 'Oliver'
  end

  def current_weather
    location = params[:location]
    lon = params[:lon]
    lat = params[:lat]
    @response = if lon.present? && lat.present?
                  OpenWeather::Api.current_weather_by_coordinate(longitude: lon, latitude: lat)
                else
                  OpenWeather::Api.current_weather(location)
                end

    render json: @response.body
  end

  def current_air_quality
    lon = params[:lon]
    lat = params[:lat]
    @response = OpenWeather::Api.current_air_quality(longitude: lon, latitude: lat)

    render json: @response.body
  end

  private

  def standard_error(exception)
    render json: { error: exception }, status: :internal_server_error
  end
end
