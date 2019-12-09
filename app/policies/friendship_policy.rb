class FriendshipPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    record.sender == user
  end

  def create?
    sender = record.sender
    receiver = record.receiver
    Friendship.where(sender: sender, receiver: receiver).empty? && Friendship.where(sender: receiver, receiver:sender).empty?
  end

  def update?
    record.receiver == user
  end

  def destroy?
    record.receiver == user || record.sender == user
  end
end
