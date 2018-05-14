class Post < ApplicationRecord
  scope :not_by_id, -> id{where.not(id: id)}
  has_many :comments

  enum category: [:blog, :review_book, :bun_story, :love_story]
  CATEGORIES = {
    blog: "Blog",
    review_book: "Review Book",
    bun_story: "Bun's Story",
    love_story: "Love Story"
  }
end
