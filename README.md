cookbook-geoip
==============

Install MaxMind GeoLite2 Lite databases
For more database information see: http://dev.maxmind.com/geoip/geoip2/geolite2/

Attributes
==========

* node['geoip']['country']['url'] - GeoLite2 Country database source URL
* node['geoip']['country']['file'] - Local country database file
* node['geoip']['city']['url'] - GeoLite2 City database source URL
* node['geoip']['city']['file'] - Local city database file

Resource/Provider
=================
This cookbook contains LWRPs for managing GeoIP databases

## Actions
- :install: Installs a database
- :uninstall: Removes a database
- :update: Updates (or installs if needed) a database

## Attribute Parameters
- database_name: Database to manage: "city" or "country"

## Example
```ruby
# Update (or install if needed) a GeoLite2 country database
geoip 'country' do
	action :update
end
```

Recipes
=======

## default

Installs both MaxMind GeoLite2 Country and City databases

## country

Installs MaxMind GeoLite2 Country database

## city 

Installs MaxMind GeoLite2 City database
