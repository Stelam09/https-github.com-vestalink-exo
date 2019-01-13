# encoding: UTF-8

class Part < ApplicationRecord

	self.table_name = 'parts'
    validates_uniqueness_of(:reference_part)

	belongs_to :reference_site, :inverse_of => :parts, :class_name => "Site", :foreign_key => "reference_site_id"
end
