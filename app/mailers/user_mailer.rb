class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def formular(name, adres, tel, email, adreswww, date, set, duration, amount, partytime, partylocation, partykind, people, sponsors, artists, message)
    @name = name
    @adres = adres 
    @tel = tel
    @email = email
    @adreswww = adreswww
    @date = date
    @set = set
    @durtion = duration
    @amount = amount
    @partyname = partyname
    @partylocation = partylocation
    @partykind = partykind
    @people = people
    @sponsors = sponsors
    @artists = artists
    @message = message
    mail(:from => email,
        :to => 'angi@recognition.pl',
        :subject => "A new booking request from #{name}")
  end
end
end
