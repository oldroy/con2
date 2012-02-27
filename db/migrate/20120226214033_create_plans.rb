class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :location
      t.string :version
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
