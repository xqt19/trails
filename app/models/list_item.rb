class ListItem < ApplicationRecord
  belongs_to :list
  belongs_to :item

  has_many :delegations, dependent: :destroy
  has_many :users, through: :delegations
  validates :list, uniqueness: { scope: :item }
end
