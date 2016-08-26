class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
 

	has_many :restaurants
	has_many :reviews
	has_many :been_heres
	has_many :wishlists



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



def is_admin?
	return true if self.role == "admin"
end


end
