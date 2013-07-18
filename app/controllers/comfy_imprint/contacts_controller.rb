require_dependency "comfy_imprint/application_controller"

module ComfyImprint
  class ContactsController < ApplicationController
    before_filter :set_contact, only: [:show, :destroy]

    def index
      redirect_to root_path
    end

    # GET /contacts/new
    def new
      @contact = Contact.new
    end

    # POST /contacts
    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        # Contact Attempt passed validation so it's safe to mail it.
        # In the future I may want to impleme nt some kind of delayed_job or redis hook here
        ContactMailer.contact_email(@contact).deliver
        redirect_to :thank_you #, notice: 'Contact was successfully created.'
      else
        render action: :new
      end
    end

    # DELETE /contacts/1
    def destroy
      @contact.destroy
      redirect_to contacts_url#, notice: 'Contact was successfully destroyed.'
    end

    def thank_you
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_contact
        @contact = Contact.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def contact_params
        params[:contact]
      end
  end
end
