class SendInformMailer < ApplicationMailer

  default from: 'informtxd@gmail.com'

  def send_inform(user, inform)
    print "In send_inform"
    @user = user
    @in_form = inform
    #mail(to: @in_form.email, subject: 'You submitted an InForm')
    mail(to: 'informrxd@gmail.com', subject: "New InForm submitted by #{@in_form.email}")
  end

end
