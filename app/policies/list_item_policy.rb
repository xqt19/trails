class ListItemPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    if record.list.trail.user == user || record.list.trail.users.include?(user)
      return true
    else
      return false
    end
  end

  def destroy?
    update?
  end
end
