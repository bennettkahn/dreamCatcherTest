class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :entries 
  def self.id_to_name id
    user = User.where(id: id)
    if user.length() == 0
      return "Anonymous"
    end
    return user[0].email # replace when first/last names are added
  end

end
