class ContactsController < ApplicationController
  def new
    @contact = Contact.new
    render :action => 'new'
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      render :action => 'create'
    else
      render :new
    end
  end

  def thanks
    @contact = Contact.new(contact_params)
    ContactMailer.contact_mail(@contact).deliver
    render :action => 'thanks'
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
