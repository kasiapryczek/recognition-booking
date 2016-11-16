class StaticPagesController < ApplicationController
  def index
  end
  
  
    def thank_you
      @name = params[:name]
      @adres = params[:adres]
      @tel = params[:tel]
      @email = params[:email]
      @adreswww = params[:adreswww]
      @date = params[:date]
      @set = params[:set]
      @durtion = params[:duration]
      @amount = params[:amount]
      @partyname = params[:partyname]
      @partylocation = params[:partylocation]
      @partykind = params[:partykind]
      @people = params[:people]
      @sponsors = params[:sponsors]
      @artists = params[:artists]
      @message = params[:message]
      UserMailer.formular(@name, @adres, @tel, @email, @adreswww, @date, @set, @duration, @amount, @partyname, @partylocation, @partykind, @people, @sponsors, @artists, @message).deliver_now
    end
end
