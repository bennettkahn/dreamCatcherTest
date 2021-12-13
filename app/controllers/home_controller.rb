class HomeController < ApplicationController
  def index
  end

  def about
  end

  def explore
    @public_entries = Entry.where(is_private: false).where.not(user: current_user).paginate(page: params[:page], per_page: 6)
  end
end
