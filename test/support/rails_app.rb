require "action_controller/railtie"
require "logger"
require "delayed_job_web_mongoid"

class RailsApp < Rails::Application
  config.logger = Rails.logger = Logger.new(nil)
  config.secret_key_base = "foo"

  routes.draw do
    match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]
  end
end
