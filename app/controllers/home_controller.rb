class HomeController < ApplicationController
  def index
  end

  def about
  end

  def explore
    @entries = Entry.all
    @public_entries = Entry.where(is_private: false)
    @pag_entries = Entry.where(is_private: false).paginate(page: params[:page], per_page: 3)
  end
end
