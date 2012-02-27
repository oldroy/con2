require 'spec_helper'

describe "components/edit" do
  before(:each) do
    @component = assign(:component, stub_model(Component,
      :plan_id => 1,
      :part_number => "MyString",
      :description => "MyString",
      :supplier => "MyString",
      :manufacturer => "MyString",
      :model_number => "MyString",
      :unit_cost => "9.99",
      :loading_rate => "9.99",
      :power_draw => "9.99",
      :lead_time => 1,
      :tax => "9.99",
      :wbs_category => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit component form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => components_path(@component), :method => "post" do
      assert_select "input#component_plan_id", :name => "component[plan_id]"
      assert_select "input#component_part_number", :name => "component[part_number]"
      assert_select "input#component_description", :name => "component[description]"
      assert_select "input#component_supplier", :name => "component[supplier]"
      assert_select "input#component_manufacturer", :name => "component[manufacturer]"
      assert_select "input#component_model_number", :name => "component[model_number]"
      assert_select "input#component_unit_cost", :name => "component[unit_cost]"
      assert_select "input#component_loading_rate", :name => "component[loading_rate]"
      assert_select "input#component_power_draw", :name => "component[power_draw]"
      assert_select "input#component_lead_time", :name => "component[lead_time]"
      assert_select "input#component_tax", :name => "component[tax]"
      assert_select "input#component_wbs_category", :name => "component[wbs_category]"
      assert_select "textarea#component_notes", :name => "component[notes]"
    end
  end
end
