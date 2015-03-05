class HomeController < ApplicationController

  def index

  end

  def new; end

  def send_mail
    template = params["template_name"]
    subject = params["subject"]
    emails = params["emails"].split(',').map(&:strip)
    InvitationMailer.invite(emails, subject, template).deliver
    flash[:notice] = 'Successfully sent emails'
    render 'new'
  end
end
