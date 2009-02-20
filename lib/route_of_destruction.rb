# WARNING: You are using a dangerous and completly nuts plugin.
# Please read the README!!1
module RouteOfDestruction
  def self.included(base)
    base.alias_method_chain :add_default_actions, :destroy_route
  end

  def add_default_actions_with_destroy_route
    add_default_action(member_methods, :get, :destroy)
    add_default_actions_without_destroy_route
  end
end