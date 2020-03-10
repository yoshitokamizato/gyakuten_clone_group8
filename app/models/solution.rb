class Solution < ApplicationRecord
  belongs_to :question
  validates :solution_content, presence: true
end
