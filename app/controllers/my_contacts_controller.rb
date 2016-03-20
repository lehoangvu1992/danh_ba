class MyContactsController < ApplicationController
  def index
    @contacts = current_user.contacts
  end
end