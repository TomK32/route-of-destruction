# Include hook code here
require 'route_of_destruction'

ActionController::Resources::Resource.send(:include, RouteOfDestruction)
