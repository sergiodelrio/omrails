class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         #:recoverable, 
         :rememberable, :trackable,  :token_authenticatable #,
         :validatable
  #

  attr_accessible :title, :body, :first_name, :last_name, :email,
   :password, :password_confirmation, :name
end
