class UserMailer < ApplicationMailer
  default from: 'lib90.ncsu@gmail.com'

  def send_mail(current_member,roomhistory)
    @user = current_member
    @roomhistory = roomhistory
    @url = "http://www.google.com"
    mail(to: @user.email+','+roomhistory.partnersemails, subject: 'Library room booked')
  end
end
