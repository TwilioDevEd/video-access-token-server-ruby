require 'twilio-ruby'
require 'sinatra'
require 'sinatra/json'
require 'dotenv'
require 'faker'

# Load environment configuration
Dotenv.load

# Render home page
get '/' do
  File.read(File.join('public', 'index.html'))
end

# Generate a token for use in our IP Messaging application
get '/token' do
  
  # Create a random username for the client
  identity = Faker::Internet.user_name

  # Create an Access Token for IP messaging usage
  token = Twilio::Util::AccessToken.new 'ACe3c1d548801318109de50936544bee86',
    'SK6eff334a5dc0629cf8943fb54e0771cb', 'EUmJVNQna8PHbN9e7VQZ0EDAzSl8WOff', 3600, identity

  # Grant access to Conversations
  grant = Twilio::Util::AccessToken::ConversationsGrant.new
  grant.configuration_profile_sid = 'VS30dd0fbecf6725f558373c452dad52a8'
  token.add_grant grant

  # Generate the token and send to client
  json :identity => identity, :token => token.to_jwt
end