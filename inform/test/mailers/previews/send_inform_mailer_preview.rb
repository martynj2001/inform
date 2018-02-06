# Preview all emails at http://localhost:3000/rails/mailers/send_inform_mailer
class SendInformMailerPreview < ActionMailer::Preview
  def inform_email_preview
    SendInformMailer.send_inform(User.first, InForm.first)
  end
end
