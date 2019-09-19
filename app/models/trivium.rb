class Trivium < ApplicationRecord
  validates :question, presence: true, length: { maximum: 250, minimum: 3 }
  validates :answer, presence: true, length: { maximum: 100, minimum: 1 }
end
