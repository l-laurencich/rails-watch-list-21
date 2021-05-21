class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_one_attached :photo

  validates :movie, :list, presence: true
  validates :comment, length: { minimum:6 }
  validates :list, uniqueness: { scope: :movie }
end
