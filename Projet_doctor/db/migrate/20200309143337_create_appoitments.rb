class CreateAppoitments < ActiveRecord::Migration[6.0]
  def change
    create_table :appoitments do |t|
      t.datetime :date
      t.belongs_to :physician, index:true
      t.belongs_to :patient, index:true

      t.timestamps
    end
  end
end
