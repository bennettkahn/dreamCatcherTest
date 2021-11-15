class HomeController < ApplicationController
  def index
  end

  def about
  end

  def explore
    @entries = Entry.all
  end
end
