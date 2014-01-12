class Spree::CallBackMailer < ActionMailer::Base
  default :from => Spree::Config[:mails_from] || ''

  def notificate(object)
    @object = object
    mail to: Spree::User.admin.first.email if Spree::Config.enable_mail_delivery
  end
end
