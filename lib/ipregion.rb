# frozen_string_literal: true

require_relative "ipregion/version"
require "faraday"
require "json"
require "ipaddress"

module IPregion
  class Geolocate 
    def ip_address(ip)
      @ip = ip 
    end 

    def locate 
      raise 'invalid ip' unless IPAddress.valid? @ip
      request = JSON.parse(Faraday.get("https://ipwhois.app/json/#{@ip}").body)

      # formatted answer
      response = %Q(
IP: #{request['ip']} 
Country: #{request['country']}
City: #{request['city']}
Region: #{request['region']}
Latitude: #{request['latitude']}
Longitude: #{request['longitude']}
Org: #{request['org']} )

      # returning response
      return response
    end   

    def lookup
      raise 'invalid ip' unless IPAddress.valid? @ip 
      return JSON.parse(Faraday.get("https://ipwhois.app/json/#{@ip}").body)
    end 
  end
end
