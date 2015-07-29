require 'rubygems'
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account

 
def facts (number)
    account_sid = 'ACed3ed813257f8acedfce46a695216257' 
    auth_token = 'cb1dd832eda91ea39319fe6827f1650b' 
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => "Testing 123",
    :to => number,     # Replace with your phone number
    :from => "+14342605034")   # Replace with your Twilio number
puts message.sid
end
