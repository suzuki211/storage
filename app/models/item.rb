class Item < ApplicationRecord
  belongs_to :user
  attachment :image
#バリテーション
  validates :title, presence: true
  validates :tag, presence: true
  validates :box, presence: true

end
