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

When you need to pass a parameter to a method, you can pass the Softlayer object, and the client handles eveything behind the curtains, if you generate a order template to virtual guest, then you wanna send this template to verifyOrder you can easily like this:

```ruby
template = {
  hostname: 'anyhost',
  domain: 'anydomain.com',
  startCpus: 1,
  maxMemory: 1024,
  datacenter: {
    name: 'wdc01'
  },
  operatingSystemReferenceCode: 'DEBIAN_8_64',
  localDiskFlag: true
}
order_template = Softlayer::Virtual::Guest.generate_order_template(template_object: template)
Softlayer::Product::Order.verify_order(order_data: order_template)
# don't know why we are passing `order_data` here?
# You can always check the parameters for a method, in this case you can check on this page
# http://sldn.softlayer.com/reference/services/SoftLayer_Product_Order/verifyOrder
```

### Masks

If you'd like to get relational properties, you can use masks to get more information in a single request, lets consider the example below

Consider an example where we want to get datacenters, but not only their `id`, `longName`, `name` and `statusId` (default returned information), we want to get their groups too, instead of make one request per datacenter, we can get all the information with just one request

```ruby
location_object_mask = "mask[groups]"
Softlayer::Location::Datacenter.mask(location_object_mask).get_datacenters
```

And _voilá_, we have all datacenters and its groups, pretty neat and cool, no?

Check the [Object Mask Article](https://sldn.softlayer.com/article/object-masks) on SoftLayer for more information.

### Filters

Lets consider an example where we want to find a datacenter based on its name, we can create a filter and do the request as following:

```ruby
location_object_filter = {
  'name': {'operation': 'wdc01'}
}
Softlayer::Location::Datacenter.filter(location_object_filter)
```

For an `in` operation you must add the array inside an array because the client known issue, let's search for wdc01 and wdc04

```ruby
location_object_filter = {
    'name': {
      'operation': "in",
      "options": [[
        {
          "name": "data",
          "value": [['wdc01', 'wdc04']]
        }
      ]]
    }
}
Softlayer::Location::Datacenter.filter(location_object_filter).get_datacenters
```

Check the [Object Filter Article](https://sldn.softlayer.com/article/object-filters) on SoftLayer for more information and operations.

### Limits

To use limits, let's search for groups of a datacenter, first we get a specific one

```ruby
location_object_filter = {
    'name': {'operation': 'sao01'}
}
sao01 = Softlayer::Location::Datacenter.filter(location_object_filter).get_datacenters.first
```

Then we can call the limits passing first the quantity, then the offset

```ruby
sao01.limit(2, 0).get_groups # 2 elements, offset 0 (page 1)
sao01.limit(2, 2).get_groups # 2 elements, offset 2 (page 2)
sao01.limit(2, 4).get_groups # 2 elements, offset 4 (page 3)
```

### Complex Operations

What if you want to use a mask, filtering just what you want and limiting the request, can we do this? Sure!

```ruby
location_object_filter = {
    'name': {
      'operation': "in",
      "options": [[
        {
          "name": "data",
          "value": [['wdc01', 'wdc04']]
        }
      ]]
    }
}
location_object_mask = "mask[groups]"
Softlayer::Location::Datacenter.filter(location_object_filter).mask(location_object_mask).limit(1, 0).get_datacenters
```

ps: `getDatacenters` message does not accept a `resultLimit` header, just using on the call above as an example, to check if the message accepts a `resultLimit` or not you need to check the WSDL file for the service.

## README Driven Development

* No feature on roadmap

## Known Issues

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

hope to fix this _really soon_, in the meanwhile you can check the progress of this bug on this [issue](https://github.com/savonrb/savon/issues/752)

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
