class User < ApplicationRecord
    has_secure_password
     devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :posts
  
    has_many :likes
    
   
end
