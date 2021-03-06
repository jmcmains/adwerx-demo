class PagesController < ApplicationController
  def home
    @title = "Ad Generator"
    @ad = Ad.new(
      design: 1,
      name: "Enter your name here", 
      company: "Enter your company here",
      phone_number: "111-222-3333",
      zipcode: "12345",
      text_1: "Enter text here",
      text_2: "Enter more text here")
    @ads = Ad.order('created_at desc').paginate(:page => params[:page], per_page: 10)
  end
  
  def email_form
    @name = params[:name]
    @email = params[:email]
    @question = params[:question]
    HelpMailer.help_form(@name,@email,@question).deliver_now
    flash[:info] = "Please check your email to activate your account."
    respond_to do |format|
      format.html {redirect_to root_url}
      format.js
    end
  end
  
end
