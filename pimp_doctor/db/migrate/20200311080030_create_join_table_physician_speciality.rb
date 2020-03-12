class CreateJoinTablePhysicianSpeciality < ActiveRecord::Migration[6.0]
  def change
    create_join_table :physicians_specialities, id:false do |t|
     	t.belongs_to :physician
     	t.belongs_to :speciality
     	# t.index [:physician_id, :speciality_id]
      # t.index [:speciality_id, :physician_id]
    end
  end
end
