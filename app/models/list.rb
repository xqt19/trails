class List < ApplicationRecord
  belongs_to :trail

  has_many :list_items
  has_many :items, through: :list_items

  validates :name, presence: true
end
