class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      @email = "#{@contact.email}"
      @body = "#{@contact.body}"
      DartboiMailer.send_message(@email, @body, @contact).deliver
      flash[:notice] = "Your message has been sent."
      redirect_to root_path
    else
      flash[:alert] = "Something went wrong. Please contact Dartboi directly at 'dartboimusic@gmail.com'."
      redirect_to root_path
    end
  end

  private
  def contact_params
    params.require(:contact).permit(:email, :body)
  end

end
