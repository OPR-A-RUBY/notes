class Note < ApplicationRecord

  validates :title, presence: true  # Валидация на непустое поле
  validates :body, presence: true  # Валидация на непустое поле
  
  # Связь с таблицей молдели User: (Note принадлежит одному :User) 
  belongs_to :user

  # Связь с таблицей молдели Label: (Note принадлежит одной :Label) 
  belongs_to :label
end
