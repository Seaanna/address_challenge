class ContactsController < ApplicationController

  def index
  end

  def create_contact
    @contact = Contact.new
    @contact.name = params[:name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.address = params[:address]
    if @contact.save
      cookies[:contact_id] = @contact.id
      render 'phonebook/show.html.erb'
    else
      render text: "Could not save Information"
    end
  end
end
