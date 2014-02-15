class Spree::CallBackMailer < ActionMailer::Base
  default :from => Spree::Config[:mails_from] || ''

  def notificate(object)
    @object = object
    mail to: Spree::Config.preferred_mail_bcc
  end
end
