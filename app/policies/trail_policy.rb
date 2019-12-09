class TrailPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    if record.user == user || record.users.include?(user)
      return true
    else
      return false
    end
  end

  def new?
    return true
  end

  def create?
    return true
  end

  def edit?
    show?
  end

  def update?
    edit?
  end

  def destroy?
    if record.user == user
      return true
    else
      return false
    end
  end

  def list_activity?
    show?
  end
end
