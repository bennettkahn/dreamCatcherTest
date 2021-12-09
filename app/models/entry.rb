class Entry < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :user

  def get_name
    return User.id_to_name self[:user_id]
  end

  def get_explore_name signed_in
    if signed_in and self.is_anon == false
      return self.get_name.split(/@/, 2).first
    end
  end
end
