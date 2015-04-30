class SiteController < ApplicationController

 before_filter :require_user

  def index
     @cone_for_cups = ConeForCup.all
     @ice_cream = IceCream.new
  end

end