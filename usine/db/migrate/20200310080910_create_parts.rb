class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do |t|
      t.string :part_number

      t.timestamps
    end
  end
end
