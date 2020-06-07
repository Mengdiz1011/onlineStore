class Product < ApplicationRecord
     # fields required
     validates :name, :description, :image, presence: true
     # numericality
     validates :price, 
         numericality: {greater_than_or_equal_to: 0.01}
     # name unique
     validates :name, uniqueness: true
     # image format
     validates :image, 
         allow_blank: true, 
         format: {
             with: %r{\.(gif|jpg|png)\Z}i, 
             message: 'must be GIF, JPG, PNG images'
         }
end
