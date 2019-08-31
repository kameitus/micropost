class Fav < ApplicationRecord
  belongs_to :user
  belongs_to :micropost, class_name: "Micropost"
end
