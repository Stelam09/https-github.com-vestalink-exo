class Part < ApplicationRecord
    validates_uniqueness_of(:reference_part)

    
	belongs_to :site, :inverse_of => :propositions, :class_name => "Site", :foreign_key => "reference_site"
end
