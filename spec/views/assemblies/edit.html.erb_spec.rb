require 'spec_helper'

describe "assemblies/edit" do
  before(:each) do
    @assembly = assign(:assembly, stub_model(Assembly,
      :package_id => 1,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit assembly form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assemblies_path(@assembly), :method => "post" do
      assert_select "input#assembly_package_id", :name => "assembly[package_id]"
      assert_select "input#assembly_name", :name => "assembly[name]"
      assert_select "textarea#assembly_description", :name => "assembly[description]"
    end
  end
end
