class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.integer :package_id
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
