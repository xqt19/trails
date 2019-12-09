class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :trails
  has_many :collabs
  validates :name, presence: true

  mount_uploader :photo, PhotoUploader

  include PgSearch::Model
  pg_search_scope :search_by_name_and_email,
    against: [ :name, :email ],
    using: {
      tsearch: { prefix: true }
    }

  def friends
    ids_list = Friendship.where(confirmed: true).where("sender_id = :self_id OR receiver_id = :self_id", self_id: id).pluck(:sender_id, :receiver_id).flatten
    return User.where(id: ids_list).where.not(id: id)
  end

  def pending_friendships
    Friendship.where(confirmed: false).where("sender_id = :self_id OR receiver_id = :self_id", self_id: id)
  end

  def friendships
    Friendship.where("sender_id = :self_id OR receiver_id = :self_id", self_id: id)
  end
end
