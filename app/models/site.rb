class Site < ApplicationRecord
  self.table_name = 'sites'
	has_many :parts, :inverse_of => :contrat, :class_name => "Part", :foreign_key => "reference_site", :dependent => :destroy

end
