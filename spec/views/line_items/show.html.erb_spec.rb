require 'spec_helper'

describe "line_items/show" do
  before(:each) do
    @line_item = assign(:line_item, stub_model(LineItem,
      :assembly_id => 1,
      :component_id => 1,
      :quantity => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
  end
end
