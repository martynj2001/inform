class SendInformMailer < ApplicationMailer

  default from: 'informtxd@gmail.com'

  def send_inform(user, inform)
    @user = user
    @in_form = inform
    mail(to: @user.email, subject: 'You submitted an InForm')
    mail(to: 'informrxd@gmail.com', subject: "New InForm submitted by #{@user.username}")
  end

end
