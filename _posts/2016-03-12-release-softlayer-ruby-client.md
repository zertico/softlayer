---
layout: post
title: "SoftLayer Ruby Client"
description: Release note about the SoftLayer Ruby Client
headline:
modified: 2016-03-12
category: ruby
tags: [ruby, clients]
imagefeature: 
mathjax: 
chart: 
comments: true
featured: true
---

Today we are proud to announce the release of the SoftLayer Ruby Client, this client has only two simple goals:

* Support all SoftLayer services
* Consume SoftLayer API in a Ruby style

We still have some [known issues](https://github.com/zertico/softlayer#known-issues) you can check on README, but we are working on fix everything.

The basic usage is

```ruby
Softlayer.configure do |config|
  config.username = '<API_USER>'
  config.api_key = '<API_KEY>'
  config.open_timeout = 30 # if you want specify timeout (default 5)
  config.read_timeout = 30 # if you want specify timeout (default 5)
end

Softlayer::Account.get_object # to get the account itself
Softlayer::Account.get_master_user
Softlayer::Account.get_virtual_guests
```

On next posts we are going to explore the client and see some interesting tricks on how to use it.

Enjoy!
