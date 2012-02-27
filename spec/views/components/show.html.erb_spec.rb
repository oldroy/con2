require 'spec_helper'

describe "components/show" do
  before(:each) do
    @component = assign(:component, stub_model(Component,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Part Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Supplier/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Manufacturer/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Wbs Category/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
