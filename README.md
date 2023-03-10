# IPregion

this simple gem has the objective of geolocating an IPv4 or IPv6. It brings the follo
wing information: country, city. region, latitude, longitude, org.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ipregion

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ipregion

## Usage

```ruby
ip_new = IPregion::Geolocate.new 
ip_new.ip_address "8.8.8.8" # select IP

puts ip_new.locate

# Result 
    # IP: 8.8.8.8
    # Country: United States
    # City: Mountain View
    # Region: California
    # Latitude: 37.3860517
    # Longitude: -122.0838511
    # Org: Google LLC

# to receive unformatted JSON:
puts ip_new.lookup

# result 
{"ip"=>"8.8.8.8", "success"=>true, "type"=>"IPv4", "continent"=>"North America", "continent_code"=>"NA", "country"=>"United States", "country_code"=>"US", "country_flag"=>"https://cdn.ipwhois.io/flags/us.svg", "country_capital"=>"Washington D.C.", "country_phone"=>"+1", "country_neighbours"=>"CA,MX", "region"=>"California", "city"=>"Mountain View", "latitude"=>37.3860517, "longitude"=>-122.0838511, "asn"=>"AS15169", "org"=>"Google LLC", "isp"=>"Google LLC", "timezone"=>"America/Los_Angeles", "timezone_name"=>"PST", "timezone_dstOffset"=>0, "timezone_gmtOffset"=>-28800, "timezone_gmt"=>"-08:00", "currency"=>"US Dollar", "currency_code"=>"USD", "currency_symbol"=>"$", "currency_rates"=>1, "currency_plural"=>"US dollars"}
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/m00w/ipregion.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
# ipregion
