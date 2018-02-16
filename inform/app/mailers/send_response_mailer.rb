class SendResponseMailer < ApplicationMailer

  default from: 'informtxd@gmail.com'

  def send_response(user, inform)
    @user = user
    @in_form = inform
    #mail(to: @in_form.email, subject: 'You submitted an InForm')
    mail(to: ['informrxd@gmail.com', @in_form.email], subject: "New InForm response from #{@in_form.comments.last.name}")
  end

end
