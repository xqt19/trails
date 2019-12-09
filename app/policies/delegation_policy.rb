class DelegationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    if record.list_item.list.trail.user == user || record.list_item.list.trail.users.include?(user)
      return true
    else
      return false
    end
  end

  def update?
    create?
  end

  def destroy?
    create?
  end
end
