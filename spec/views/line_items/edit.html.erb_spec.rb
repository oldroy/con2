require 'spec_helper'

describe "line_items/edit" do
  before(:each) do
    @line_item = assign(:line_item, stub_model(LineItem,
      :assembly_id => 1,
      :component_id => 1,
      :quantity => "9.99"
    ))
  end

  it "renders the edit line_item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => line_items_path(@line_item), :method => "post" do
      assert_select "input#line_item_assembly_id", :name => "line_item[assembly_id]"
      assert_select "input#line_item_component_id", :name => "line_item[component_id]"
      assert_select "input#line_item_quantity", :name => "line_item[quantity]"
    end
  end
end
