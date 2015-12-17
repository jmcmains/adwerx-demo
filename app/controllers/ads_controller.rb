class AdsController < ApplicationController
  def create
    @ad = Ad.new(ad_params)
    respond_to do |format|
      if @ad.save
        format.html { redirect_to root_url }
        format.json { render :show, status: :created, location: @ad }
      else
        format.html { render root_url }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end
  
  private
     # Never trust parameters from the scary internet, only allow the white list through.
    def ad_params
      params.require(:ad).permit(:name, :company,:phone_number,:zipcode,:profile_image,:house_image,:text_1,:text_2,:background_color_1,:text_color_1,:background_color_2,:text_color_2,:design)
    end
end
