class HomeController < ApplicationController
  def index
  end

  def about
  end

  def explore
    @entries = Entry.all
    #@public_entries = Entry.find_by(test: "True") # could also be where, find, etc.
  end
end
