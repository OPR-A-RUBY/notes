class User < ApplicationRecord
  # Связь с молделью Label: (User имеет много :Labels) 
  has_many :labels       

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
