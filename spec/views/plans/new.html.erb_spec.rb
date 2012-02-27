require 'spec_helper'

describe "plans/new" do
  before(:each) do
    assign(:plan, stub_model(Plan,
      :location => "MyString",
      :version => "MyString",
      :description => "MyText",
      :notes => "MyText"
    ).as_new_record)
  end

  it "renders new plan form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => plans_path, :method => "post" do
      assert_select "input#plan_location", :name => "plan[location]"
      assert_select "input#plan_version", :name => "plan[version]"
      assert_select "textarea#plan_description", :name => "plan[description]"
      assert_select "textarea#plan_notes", :name => "plan[notes]"
    end
  end
end
