class PagesController < ApplicationController
  def home
    @ad = Ad.new
    @ads = Ad.all.paginate(:page => params[:page])
  end
  
end
