class CreateJoinTableGossipsTags < ActiveRecord::Migration[6.0]
  def change
  	create_table :gossips_tags, id:false do |t|
  		t.belongs_to :gossip
  		t.belongs_to :tag
	end
  end
end
