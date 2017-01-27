#OmronBot

OmronBot is an automated tool to create Omron data for several endpoints. Just install the gem, configure your Omron credentials, and create data.

##Installation

```sh
$ gem install omron_bot
```

OmronBot uses the [capybara-webkit driver](https://github.com/thoughtbot/capybara-webkit), so you'll need to install Qt as well.

```sh
$ brew install qt55
```

##Configuration

You need to configure OmronBot with your Omron credentials before creating data. You can do that with

```sh
$ omron_bot config --email your.email@example.com --password pASsW0Rd
```

or create it directly in `~/.omron_bot`

```javascript
  {
    "credentials": {
      "email": "your.email@example.com",
      "password": "pASsW0Rd"
    }
  }
```

##Usage

Currently OmronBot supports creating data for the following endpoints

*   Blood Pressure
*   Steps

To create data

```sh
$ omron_bot create
```

At the moment, data creation is only enabled for bulk creates meaning you can't create data for a specific endpoint. I'm hoping to enable single endpoint creation in the future.
