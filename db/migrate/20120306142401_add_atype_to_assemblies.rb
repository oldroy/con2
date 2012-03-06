class AddAtypeToAssemblies < ActiveRecord::Migration
  def change
    add_column :assemblies, :atype, :string

  end
end
