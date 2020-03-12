class CreatePhysicians < ActiveRecord::Migration[6.0]
  def change
    create_table :physicians do |t|
      t.string :first_name
      t.string :last_name
      t.integer :postal_code

      t.timestamps
    end
  end
end
