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
      @adres = params[:adres]
      @message = params[:message]
      ActionMailer::Base.mail(:from => @email, :to => 'angi@recognition.pl', :subject => "a new contact message from #{@name}", :body => @message).deliver_now
    end
end
