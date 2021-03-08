class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books
  has_friendship

  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :first_name, :last_name ],
    using: {
      tsearch: { prefix: true }
    }

  def friends?
    friends
  end

  def friend_requests?
    requested_friends.any?
  end

  def requested_friends?
    pending_friends.any?
  end

  def invite_friend(user)
    friend_request(user)
  end

  def not_friends
    strangers = []
    User.all.each do |user|
      if friends_with?(user) != true && self != user && friends.include?(user) != true &&
         pending_friends.include?(user) != true && requested_friends.include?(user) != true
        strangers << user
      end
    end
    strangers
  end
end
