# == Schema Information
#
# Tables nane: notes
#
#   id          :integer
#   title       :string
#   user_id     :integer
#   label_id    :integer
#   public      :boolean
#   level       :integer
#   stars       :integer
#   description :text
#   body        :text
#   url         :text
#   created_at  :datetime   precision: 6, null: false
#   updated_at  :datetime   precision: 6, null: false
#

class Note < ApplicationRecord

  validates :title, presence: true  # Валидация на непустое поле
  validates :body, presence: true  # Валидация на непустое поле
  
  # Связь с таблицей молдели User: (Note принадлежит одному :User) 
  belongs_to :user

  # Связь с таблицей молдели Label: (Note принадлежит одной :Label) 
  belongs_to :label
end
