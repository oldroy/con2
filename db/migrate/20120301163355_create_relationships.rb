class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :assembly_id
      t.integer :child_id

      t.timestamps
    end
  end
end
