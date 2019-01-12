require 'rake'
namespace :import_sites_csv do
	desc "Import sites from CSV file"

  task site: :environment do
    CSV.foreach('data/sites.csv', headers: true) do |row|
      Site.create(row.to_h)
    end
  end

  task part: :environment do
    CSV.foreach('data/parts.csv', headers: true) do |row|
      Part.create(row.to_h)
    end
  end
end
