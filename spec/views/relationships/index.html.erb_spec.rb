require 'spec_helper'

describe "relationships/index" do
  before(:each) do
    assign(:relationships, [
      stub_model(Relationship,
        :assembly_id => 1,
        :child_id => 1
      ),
      stub_model(Relationship,
        :assembly_id => 1,
        :child_id => 1
      )
    ])
  end

  it "renders a list of relationships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
