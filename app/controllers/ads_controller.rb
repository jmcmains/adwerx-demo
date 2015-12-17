class AdsController < ApplicationController
  def create
    @ad = Ad.new(ad_params)
    respond_to do |format|
      if @ad.save
        format.html { redirect_to root_url }
        format.js {
          @ad =Ad.new(design: 1)
          @ads = Ad.all.paginate(:page => params[:page])
          render :update_page
        }
      else
        format.html { render root_url }
        format.js { render :update_page }
      end
    end
  end
  
  def edit
    @ad = Ad.find(params[:id])
    @ads = Ad.all.paginate(:page => params[:page])
    
    respond_to do |format|
      format.html { render "/pages/home"}
      format.js
    end
  end
  
  def update
    @ad = Ad.find(params[:id])
    respond_to do |format|
      if @ad.update_attributes(ad_params)
        format.html { redirect_to root_url }
        format.js { 
          @ad =Ad.new(design: 1)
          @ads = Ad.all.paginate(:page => params[:page])
          render :update_page
          
        }
      else
        format.html { render root_url }
        format.js { render :update_page }
      end
    end
  end
  
  
  def destroy
    @ad = Ad.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to root_url}
      format.js
    end
  end
  
  private
     # Never trust parameters from the scary internet, only allow the white list through.
    def ad_params
      params.require(:ad).permit(:name, :company,:phone_number,:zipcode,:profile_image,:house_image,:text_1,:text_2,:background_color_1,:text_color_1,:background_color_2,:text_color_2,:design)
    end
end
