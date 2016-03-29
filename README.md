# Softlayer

This is the (unofficial) SoftLayer API Client in Ruby

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'softlayer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install softlayer

## Usage

First step is configure your client with your credentials

```
Softlayer.configure do |config|
  config.username = '<API_USER>'
  config.api_key = '<API_KEY>'
  config.open_timeout = 30 # if you want specify timeout (default 5)
  config.read_timeout = 30 # if you want specify timeout (default 5)
end
```

then you are able to access any SoftLayer service, get some information from your account using:

```ruby
Softlayer::Account.get_object # to get the account itself
Softlayer::Account.get_master_user
Softlayer::Account.get_virtual_guests
```

## README Driven Development

* Improve support for masks and filters (parse a better format instead of using ruby hash)

## Known Issues

* Mask and Filter not working correctly with `SoftLayer_Account` calls
* Using Savon master until a version is released containing the commit to support rpc/encoded XML
* Actually arrays are being wrongly mapped, so when we pass an argument containing **one** array, we need to pass inside another array, like this:

```ruby
# instead of
parameters = {
  list_of_something: ["arg1", "arg2"]
}

# use
parameters = {
  list_of_something: [["arg1", "arg2"]]
}
```

hope to fix this _really soon_

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

Actually we write two kind of tests, one hitting the __real API__ (we save VCR cassetes to replay) and using __mocks__. This is really useful because of if we need to debug we just hit the real API and check if everything is ok and keeping mocks we enable new users to test the SoftLayer API without needing an account.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/zertico/softlayer.

## Trademark

SoftLayer and logo are trademarks of SoftLayer, an IBM Company. This gem was just released to make easier for other clients to consume SoftLayer API.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
