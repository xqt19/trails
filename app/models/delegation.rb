class Delegation < ApplicationRecord
  belongs_to :user
  belongs_to :list_item

  validates :user, uniqueness: { scope: :list_item }
end
