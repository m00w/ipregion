# IPregion

this simple gem has the objective of geolocating an IPv4 or IPv6. It brings the follo
wing information: country, city. region, latitude, longitude, org.

**Disclaimer: I have not published this gem as it is for educational purposes only.** 

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

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/m00w/ipregion.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
# ipregion
