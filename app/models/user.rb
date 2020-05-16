class User < ApplicationRecord
  # Связь с таблицей молдели Label: (User имеет много :Labels) 
  has_many :labels  

  # Связь с таблицей молдели Notes: (User имеет много :Notes) 
  has_many :notes      

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
