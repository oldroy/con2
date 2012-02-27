require 'spec_helper'

describe "packages/edit" do
  before(:each) do
    @package = assign(:package, stub_model(Package,
      :name => "MyString",
      :description => "MyText",
      :plan_id => 1
    ))
  end

  it "renders the edit package form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => packages_path(@package), :method => "post" do
      assert_select "input#package_name", :name => "package[name]"
      assert_select "textarea#package_description", :name => "package[description]"
      assert_select "input#package_plan_id", :name => "package[plan_id]"
    end
  end
end
