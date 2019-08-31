class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length:{maximum:255}
  
  has_many :reverses_of_fav, class_name: "Fav", foreign_key: "micropost_id"
  has_many :fav_users, through: :reverses_of_fav, source: :user
end
