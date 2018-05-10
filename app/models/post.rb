class Post < ApplicationRecord
  scope :not_by_id, -> id{where.not(id: id)}
end
