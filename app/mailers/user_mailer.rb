class UserMailer < ApplicationMailer
  default from: "mail@patrickkrell.de"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'mail@patrickkrell.de',
         subject: "A new contact form message from #{name}")
  end
end
