# frozen_string_literal: true

Geocoder.configure(
  ip_lookup: :geoip2,
  geoip2: {
    file: './libs/GeoLite2-City.mmdb'
  }
)
