class Comment < ActiveRecord::Base
  belongs_to :article
 	validates :text_box, presence: true
end