# encoding: UTF-8

class Site < ApplicationRecord
  self.table_name = 'sites'
  validates_uniqueness_of(:reference_site)
  has_many :parts, :inverse_of => :contrat, :class_name => "Part", :foreign_key => "reference_site", :dependent => :destroy
  

  def self.return_adress_link_google_maps(adress)
  	require 'geokit'
    include GeoKit::Geocoders

    coords = MultiGeocoder.geocode(adress)

    link_google_maps = "http://maps.google.co.uk/maps?q=#{coords.lat},#{coords.lng}"
  end
end
