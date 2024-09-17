# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/api', to: 'api#index'
  get '/api/current_weather' => 'api#current_weather'
  get '/api/current_air_quality' => 'api#current_air_quality'
end
