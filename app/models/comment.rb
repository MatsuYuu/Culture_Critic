class Comment < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :evaluation
  
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :genre_id
    validates :artwork
    validates :text

  end
     
  validates :genre_id, numericality: { other_than: 1 } 
  
  def self.search(search)
    if search != ""
      Comment.where('text LIKE(?)', "%#{search}%")
    else
      Comment.all
    end
  end
end
