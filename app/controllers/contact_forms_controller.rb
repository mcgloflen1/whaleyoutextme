class ContactFormsController < ApplicationController

    def new
      @contact_form = ContactForm.new
    end

    def create
      begin
        @contact_form = ContactForm.new(params[:contact_form])
        @contact_form.request = request
        if @contact_form.deliver
        	redirect_to :back
          flash[:success] = 'Thank you for your message!'
        else
          redirect_to :back
          flash[:error] = 'Your message was not sent! Be sure to fill out all fields!'
        end
      rescue ScriptError
        flash[:error] = 'Sorry, this message appears to be spam and was not delivered.'
      end
    end
end