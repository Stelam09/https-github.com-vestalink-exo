# encoding: UTF-8

class Site < ApplicationRecord
	
  self.table_name = 'sites'
  validates_uniqueness_of(:reference_site)
  has_many :parts, :inverse_of => :reference_site, :class_name => "Part", :foreign_key => "reference_site_id", :dependent => :destroy
  

  def self.return_adress_link_google_maps(adress)
    coords = MultiGeocoder.geocode(adress)

    "http://maps.google.co.uk/maps?q=#{coords.lat},#{coords.lng}"
  end
end
