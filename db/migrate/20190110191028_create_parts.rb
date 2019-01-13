class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :reference_part
      t.references :reference_site, foreign_key: true
      t.string :part_type_designation
      t.timestamps
    end
  end
end
