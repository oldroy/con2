class AddPlanToAssemblies < ActiveRecord::Migration
  def change
      add_column :assemblies, :plan_id, :integer

    end
end
