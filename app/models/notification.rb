require 'twilio-ruby'
require_relative '../../credentials'

class Notification
  attr_accessor :to_number

  def initialize(options = {})
    self.to_number = options[:to_number]
    account_sid = Credentials.credentials[:twilio_account_sid]
    auth_token = Credentials.credentials[:twilio_account_token]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    @client.account.messages.create(
      :from => "+12027514380",
      :to => "+12402325764",
      :body => random_compliment
    )
  end

  def random_compliment

    compliments = [
    "Your app is fantastic!",
    "High five = ^5",
    "What a phenomenal view!",
    "Your controller is on the ball!",
    "May you develop swiftly and with godspeed."
    ]

    compliment = compliments.sample  
  end

end