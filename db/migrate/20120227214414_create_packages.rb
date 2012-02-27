class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.integer :plan_id

      t.timestamps
    end
  end
end
