class Note < ApplicationRecord
	validates :title, length: {minimum: 3}
	validates :content, presence: true
end
