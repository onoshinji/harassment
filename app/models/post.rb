class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 255 }
  validates :kind, presence: true
end
