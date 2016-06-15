# Get twilio-ruby from twilio.com/docs/ruby/install
require 'rubygems'          # This line not needed for ruby > 1.8
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
@client = Twilio::REST::Client.new account_sid, auth_token


# Loop over medias and print out a property for each one
@client.account.media.list({
    :parent_sid => "MMdc5f132a3c49700934481addd5ce1659"}).each do |media|
    puts media.content_type
end