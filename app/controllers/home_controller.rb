class HomeController < ApplicationController

  def index
    @entries = Entry.all.order(:id).reverse
  end

end
