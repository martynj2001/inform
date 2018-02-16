class SendInformMailer < ApplicationMailer

  default from: 'informtxd@gmail.com'

  def send_inform(user, inform)
    @user = user
    @in_form = inform
    if @in_form.comments.last != nil
      mail(to: [@in_form.email], subject: "#{@in_form.comments.last.author_name} has responded to your InForm")
    else
      mail(to: ['informrxd@gmail.com', @in_form.email], subject: "New InForm submitted by #{@in_form.email}")
    end
  end

end
