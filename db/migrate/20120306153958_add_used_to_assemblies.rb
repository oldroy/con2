class AddUsedToAssemblies < ActiveRecord::Migration
  def change
    add_column :assemblies, :used, :boolean

  end
end
