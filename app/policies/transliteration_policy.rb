class TransliterationPolicy < ApplicationPolicy
  def permitted_attributes
    { translit: %I[phrase mode] }
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
