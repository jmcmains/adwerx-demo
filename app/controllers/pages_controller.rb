class PagesController < ApplicationController
  def home
    @title = "Ad Generator"
    @ad = Ad.new(design: 1)
    @ads = Ad.all.paginate(:page => params[:page])
  end
  
end
