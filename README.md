# Video Quickstart for Ruby

This application should give you a ready-made starting point for writing your
own video chatting apps with Twilio IP Messaging. Before we begin, we need to collect
all the credentials we need to run the application:

Credential | Description
---------- | -----------
Twilio Account SID | Your main Twilio account identifier - [find it on your dashboard](https://www.twilio.com/user/account/video).
Twilio Video Configuration SID | Adds video capability to the access token - [generate one here](https://www.twilio.com/user/account/video/profiles)
API Key | Used to authenticate - [generate one here](https://www.twilio.com/user/account/messaging/dev-tools/api-keys).
API Secret | Used to authenticate - [just like the above, you'll get one here](https://www.twilio.com/user/account/messaging/dev-tools/api-keys).

## A Note on API Keys

When you generate an API key pair at the URLs above, your API Secret will only
be shown once - make sure to save this in a secure location, 
or possibly your `~/.bash_profile`.

## Setting Up The Ruby (Sinatra) Application

Create a configuration file for your application:

```bash
cp .env.example .env
```

Edit `.env` with the four configuration parameters we gathered from above.

Next, we need to install our depenedencies:

```bash
bundle install
```

Now we should be all set! Run the application using the `ruby` command.

```bash
bundle exec ruby app.rb
```

Your application should now be running at [http://localhost:4567](http://localhost:4567). 
Send an invite to another user in another browser tab/window and start video chatting!

![screenshot of chat app](https://camo.githubusercontent.com/57dddb5e27dba5ac9ba64049f0cacc654cb78036/687474703a2f2f692e696d6775722e636f6d2f6e5652373046512e706e67)

## License

MIT
