class Label < ApplicationRecord
  # Связь с молделью Article: (Label принадлежит одному :User) 
  belongs_to :user     
 
end
