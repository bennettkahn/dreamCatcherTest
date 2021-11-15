class Entry < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user

  def get_name
    return User.id_to_name self[:user_id]
  end
end
