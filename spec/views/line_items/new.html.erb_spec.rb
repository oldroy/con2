require 'spec_helper'

describe "line_items/new" do
  before(:each) do
    assign(:line_item, stub_model(LineItem,
      :assembly_id => 1,
      :component_id => 1,
      :quantity => "9.99"
    ).as_new_record)
  end

  it "renders new line_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => line_items_path, :method => "post" do
      assert_select "input#line_item_assembly_id", :name => "line_item[assembly_id]"
      assert_select "input#line_item_component_id", :name => "line_item[component_id]"
      assert_select "input#line_item_quantity", :name => "line_item[quantity]"
    end
  end
end
