class Post < ApplicationRecord
  scope :not_by_id, -> id{where.not(id: id)}
  has_many :comments

  enum category: [:blog, :review_book, :bun_story, :love_story]
end
