class SendInformMailer < ApplicationMailer

  default from: 'informtxd@gmail.com'

  def send_inform(user, inform)
    @user = user
    @in_form = inform
    #mail(to: @in_form.email, subject: 'You submitted an InForm')
    mail(to: ['informrxd@gmail.com', @in_form.email], subject: "New InForm submitted by #{@in_form.email}")
  end

  def send_response(user, inform)
    @user = user
    @in_form = inform
    #mail(to: @in_form.email, subject: 'You submitted an InForm')
    mail(to: @in_form.email, subject: "#{@user.username} has responded to your InForm")
  end

end
