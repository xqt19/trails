class Activity < ApplicationRecord
  belongs_to :trail

  validates :name, presence: true
end
