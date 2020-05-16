class Label < ApplicationRecord
  # Связь с таблицей молдели User: (Label принадлежит одному :User) 
  belongs_to :user

  # Связь с таблицей молдели Notes: (Label имеет много :Notes) 
  has_many :notes  
end
