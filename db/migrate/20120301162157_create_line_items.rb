class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :assembly_id
      t.integer :component_id
      t.decimal :quantity

      t.timestamps
    end
  end
end
