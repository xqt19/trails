class List < ApplicationRecord
  belongs_to :trail

  has_many :list_items
end
