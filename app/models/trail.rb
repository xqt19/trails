class Trail < ApplicationRecord
  belongs_to :user

  has_many :lists, dependent: :destroy
  has_many :collabs, dependent: :destroy
  has_many :activities, dependent: :destroy
  has_many :users, through: :collabs

  validates :name, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
