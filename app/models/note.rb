class Note < ApplicationRecord
  # Связь с таблицей молдели User: (Note принадлежит одному :User) 
  belongs_to :user
end
