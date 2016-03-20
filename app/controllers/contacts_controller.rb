class ContactsController < ApplicationController

  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
    @contact.user = current_user
  	if @contact.save
  		redirect_to root_path
  	else
  		render :new
  	end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(contact_params)
      redirect_to root_path
    else
      render :edit
    end 
  end

  def contact_params
    params.require(:contact).permit(:name, :number, :address, :note, :image)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def delete
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

end