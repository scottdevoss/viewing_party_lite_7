class User < ApplicationRecord
  has_many :user_viewing_parties
  has_many :viewing_parties, through: :user_viewing_parties
  validates_presence_of :name,
                        :email
  validates :email, uniqueness: { case_sensitive: false }
end
