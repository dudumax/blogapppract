class UserMailer < ApplicationMailer
     default from: 'from@example.com'
      layout 'mailer'
      
   def welcome_email(user)
    @user = user
    mail(to: "bilfinga@gmail.com", subject: 'Welcome to My Awesome Site')
   end 
    
end
