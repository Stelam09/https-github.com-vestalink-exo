# encoding: UTF-8

class Site < ApplicationRecord
  self.table_name = 'sites'
  validates_uniqueness_of(:reference_site)
	has_many :parts, :inverse_of => :contrat, :class_name => "Part", :foreign_key => "reference_site", :dependent => :destroy

end
