class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :tweet
	validates :content, presence: true, length: { maximum: 200 }
end
