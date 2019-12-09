class CollabPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def destroy?
    if record.trail.user == user || record.trail.users.include?(user)
      return true
    else
      return false
    end
  end
end
