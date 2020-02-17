# frozen_string_literal: true

class ContactsController < ApplicationController
  before_action :set_contact, only: :show

  def index
    @contacts = Contact.all
  end

  def show; end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Contato criado!' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.json do
          render json: @contact.errors, status: :unprocessable_entity
        end
      end
    end
  end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email)
  end
end
