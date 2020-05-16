class Label < ApplicationRecord
  # Связь с таблицей молдели User: (Label принадлежит одному :User) 
  belongs_to :user     
 
end
