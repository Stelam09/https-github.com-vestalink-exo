# encoding: UTF-8

class Site < ApplicationRecord
	
  self.table_name = 'sites'
  validates_uniqueness_of(:reference_site)
  has_many :parts, :inverse_of => :reference_site, :class_name => "Part", :foreign_key => "reference_site_id", :dependent => :destroy
  
end
