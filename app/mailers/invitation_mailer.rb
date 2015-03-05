require 'mandrill'

class InvitationMailer < MandrillMailer::TemplateMailer
  default from: 'info@maisasolutions.com'

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