class Item < ApplicationRecord
  belongs_to :user
  attachment :image

  validates :title, presence: true
  validates :tag, presence: true
  validates :box, presence: true

end
