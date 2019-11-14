class ContactMailer < ApplicationMailer
 
  def contact_mail(contact)
  @contact = contact

  mail to: "bilfinga@gmail.com", subject: "confirmation e-mail of inquiry"
  end
end
