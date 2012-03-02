require 'spec_helper'

describe "relationships/new" do
  before(:each) do
    assign(:relationship, stub_model(Relationship,
      :assembly_id => 1,
      :child_id => 1
    ).as_new_record)
  end

  it "renders new relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => relationships_path, :method => "post" do
      assert_select "input#relationship_assembly_id", :name => "relationship[assembly_id]"
      assert_select "input#relationship_child_id", :name => "relationship[child_id]"
    end
  end
end
