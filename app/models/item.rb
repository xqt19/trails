class Item < ApplicationRecord
  has_many :item_categories, dependent: :destroy
  has_many :categories, through: :item_categories
  has_many :list_items, dependent: :destroy

  validates :name, presence: true

  def custom?
    custom
  end
end
