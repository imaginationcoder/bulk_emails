require 'mandrill'

class InvitationMailer < MandrillMailer::TemplateMailer
  default from: ENV["default_email"]

  def invite(emails, subject, template)
    mandrill_mail(
        template: template,
        subject: subject,
        to: emails,
        important: true,
        inline_css: true,
    )

  end
end