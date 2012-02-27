require 'spec_helper'

describe "components/index" do
  before(:each) do
    assign(:components, [
      stub_model(Component,
        :plan_id => 1,
        :part_number => "Part Number",
        :description => "Description",
        :supplier => "Supplier",
        :manufacturer => "Manufacturer",
        :model_number => "Model Number",
        :unit_cost => "9.99",
        :loading_rate => "9.99",
        :power_draw => "9.99",
        :lead_time => 1,
        :tax => "9.99",
        :wbs_category => "Wbs Category",
        :notes => "MyText"
      ),
      stub_model(Component,
        :plan_id => 1,
        :part_number => "Part Number",
        :description => "Description",
        :supplier => "Supplier",
        :manufacturer => "Manufacturer",
        :model_number => "Model Number",
        :unit_cost => "9.99",
        :loading_rate => "9.99",
        :power_draw => "9.99",
        :lead_time => 1,
        :tax => "9.99",
        :wbs_category => "Wbs Category",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of components" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Part Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Manufacturer".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Wbs Category".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
