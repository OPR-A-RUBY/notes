# == Schema Information
#
# Tables nane: labels
#
#   id          :integer
#   name        :string
#   user_id     :integer
#   description :text
#   created_at  :datetime   precision: 6, null: false
#   updated_at  :datetime   precision: 6, null: false
# 

class Label < ApplicationRecord
    
  validates :name, presence: true  # Валидация на непустое поле
     
  # Связь с таблицей молдели User: (Label принадлежит одному :User) 
  belongs_to :user

  # Связь с таблицей молдели Notes: (Label имеет много :Notes) 
  has_many :notes  
end
