class Article < ActiveRecord::Base
	has_many :comments
	has_many :reviews
	belongs_to :author

	validates :story, presence: true
	validates :heading, presence: true, uniqueness: true
end

