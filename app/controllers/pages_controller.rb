class PagesController < ApplicationController
  def index
    @boats = Boat.all
  end
  def about
  end
  def us
  end
  def contact
  end
  def location
  end
  def thankyou
  end
end
