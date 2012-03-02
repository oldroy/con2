class AddWbsToLineItems < ActiveRecord::Migration
  def change
    add_column :line_items, :wbs_category, :string

  end
end
