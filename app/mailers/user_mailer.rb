class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://sankalpsimple-rails-begineer.com/'
    attachments['exercise.png'] = File.read('app/assets/images/exercise.png')
    mail(to: email_address_with_name(@user.email, @user.name),
         cc: "sankalpverma4489@gmail.com", 
         subject: 'Welcome to My Awesome Site')
  end
end
