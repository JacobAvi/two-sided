class ContactMailer < ApplicationMailer

    # def send_contact_email(user_info)
    #     email = user_info[:email]
    #     @user = user_info[:user]
    #     @name = user_info[:full_name]
    #     @message = "Thank you for signing up to Spare Seat Fleet!\n
    #     This is a confirmation email to verify your sign-up has completed successfully."
    #     date = Time.now.strftime("%B %d %Y %H:%M")
    #     subject = "Spare Seat Fleet Registration Confirmation #{date}"
    #     mail(to: email, subject: subject)
    # end

    def send_contact_email(user_info)
        date = Time.now.strftime("%B %d %Y %H:%M")
        RestClient.post "https://api:#{ENV.fetch('MAILGUN_API')}"\
        "@api.mailgun.net/v3/#{ENV.fetch('MAILGUN_DOMAIN')}/messages",
        :from => "Excited User <mailgun@#{ENV.fetch('MAILGUN_DOMAIN')}>",
        :to => user_info[:full_name]
        
        :subject => "Spare Seat Fleet Registration Confirmation #{date}",
        :text => "Testing some Mailgun awesomness!"
    end
end