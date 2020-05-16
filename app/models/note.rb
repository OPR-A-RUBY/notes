class Note < ApplicationRecord
  # Связь с таблицей молдели User: (Note принадлежит одному :User) 
  belongs_to :user

  # Связь с таблицей молдели Label: (Note принадлежит одной :Label) 
  belongs_to :label
end
