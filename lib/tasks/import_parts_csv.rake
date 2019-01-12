namespace :import_parts_csv do
	desc "Import parts from CSV file"

  task part: :environment do
    CSV.foreach('data/parts.csv', headers: true) do |row|
      Part.create(row.to_h)
    end
  end
end
