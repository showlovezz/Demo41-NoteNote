class Note < ApplicationRecord
	validates :title, length: {minimum: 3}
	validates :content, presence: true
	belongs_to :user
end
