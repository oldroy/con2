class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :plan_id
      t.string :part_number
      t.string :description
      t.string :supplier
      t.string :manufacturer
      t.string :model_number
      t.decimal :unit_cost
      t.decimal :loading_rate
      t.decimal :power_draw
      t.integer :lead_time
      t.decimal :tax
      t.string :wbs_category
      t.text :notes

      t.timestamps
    end
  end
end
