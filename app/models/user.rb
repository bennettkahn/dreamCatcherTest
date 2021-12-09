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
    return user[0].email.split(/@/, 2).first # replace when first/last names are added
  end

  def user_to_name
    return self.email.split(/@/, 2).first
  end

end
