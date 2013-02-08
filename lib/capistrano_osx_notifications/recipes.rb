require "capistrano"

module CapistranoOSXNotifications
  module Recipes
    def self.load_into(configuration)
      configuration.load do
      end
    end
  end
end

if Capistrano::Configuration.instance
  CapistranoOSXNotifications::Recipes.load_into(Capistrano::Configuration.instance)
end
