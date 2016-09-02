class PhonebookController < ApplicationController

  def show
    @contact = cookies[:contact_id]
  end
end
