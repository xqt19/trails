class Trail < ApplicationRecord
  belongs_to :user

  has_many :collabs
  has_many :users, through: :collabs
  has_many :activities

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
