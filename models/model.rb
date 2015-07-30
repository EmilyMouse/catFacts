require 'rubygems'
require 'twilio-ruby'
require 'fileutils'
require 'tempfile'
#database file thing
def addNum(num)
 # File.open('numbers.txt', 'w') {|file| file.truncate(0) }
#  check = /[0-9]{10}/.match(num)
#  puts check
  puts num
  if num =~ /\A[0-9]{10}\Z/
    num= "+1"+num
  open('numbers.txt', 'a') { |f|
    f.puts num
    }
  else
    puts"invalid"
  end

end#write file

=begin
def readFile
  File.open("numbers.txt", "r") do |f|
  f.each_line do |line|
    puts line
  end
end
end #read file
=end

# Get your Account Sid and Auth Token from twilio.com/user/account 
def facts 
    account_sid = 'ACed3ed813257f8acedfce46a695216257' 
    auth_token = 'cb1dd832eda91ea39319fe6827f1650b' 
    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => "Testing 123",
    :to => number,     # Replace with your phone number
    :from => "+14342605034")   # Replace with your Twilio number
puts message.sid
end



def massText
    account_sid = 'ACed3ed813257f8acedfce46a695216257' 
    auth_token = 'cb1dd832eda91ea39319fe6827f1650b' 
    @client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+14342605034" # Your Twilio number
  
  f = File.open("numbers.txt")
  contentArray=[]  # start with an empty array
  f.each_line {|line|
  contentArray.push line
    puts line
  }
  
    contentArray.each { |x| @client.account.messages.create(
    :from => from,
    :to => x,
    :body => "Ignore this. This is testing. Mass group testing."
  )
  puts "Sent message" }
end



