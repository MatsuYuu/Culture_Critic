class Comment < ApplicationRecord
  
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :genre_id
    validates :artwork
    validates :evaluation_id
    validates :text

  end
     
end
