require 'csv'

namespace :import_sites_csv do
	desc "Import sites from CSV file"

  task site: :environment do
    CSV.foreach('data/sites.csv', headers: true, skip_blanks: true) do |row|
      Site.create(row.to_h)
    end
  end

  task part: :environment do
    CSV.foreach('data/parts.csv', headers: true, skip_blanks: true) do |row|
      site = Site.where(reference_site: row['reference_site']).first_or_create
      attr_part = {
        reference_site_id: site.id,
        reference_part: row['reference_part'],
        part_type_designation: row['part_type_designation']
      }
      part = Part.create(attr_part)
    end
  end
end
