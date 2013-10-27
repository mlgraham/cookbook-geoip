name              "geoip"
maintainer        "István Szénási"
maintainer_email  "szeist@gmail.com"
license           "MIT"
description       "Install MaxMind GeoLite2 Lite databases"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0"
recipe            "geoip", "Installs MaxMind GeoLite2 City and GeoLite2 Country databases"
recipe            "geoip::country", "Installs MaxMind GeoLite2 Country database"
recipe            "geoip::city", "Installs MaxMind GeoLite2 Country database"

attribute "geoip/country/url",
  :display_name => "Country database url",
  :description => "GeoLite2 Country database source URL",
  :default => "http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country.mmdb.gz"

attribute "geoip/country/file",
  :display_name => "Country database file",
  :description => "Local country database file",
  :default => "/usr/local/share/GeoIP/GeoLite2-Country.mmdb"

attribute "geoip/city/url",
  :display_name => "City database url",
  :description => "GeoLite2 City database source URL",
  :default => "http://geolite.maxmind.com/download/geoip/database/GeoLite2-City.mmdb.gz"

attribute "geoip/city/file",
  :display_name => "City database file",
  :description => "Local City database file",
  :default => "/usr/local/share/GeoIP/GeoLite2-City.mmdb"
