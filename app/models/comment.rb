class Comment < ApplicationRecord
  validates :text, presence: true,
                   length: { minimum: 2 }
end
