class DartboiMailer < ApplicationMailer
  default from: 'dartboimusic@gmail.com'

  def send_message(email, body, object)
    render layout: false
    @email = email
    @body = body
    mail(to: 'dartboimusic@gmail.com', subject: "New message from #{@email}")
    object.update_attributes(:sent =>  true)
  end
end
