class HomeController < ApplicationController
  def index
  end

  def about
  end

  def explore
    @entries = Entry.all
    @public_entries = Entry.where(is_private: false)
  end
end
