class LandingPolicy < ApplicationPolicy
  def index?
    true
  end

  def permitted_attributes

  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
