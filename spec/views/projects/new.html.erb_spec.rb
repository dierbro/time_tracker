require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :name => "MyString",
      :customer => nil,
      :hourly_rate => "9.99"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", projects_path, "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_customer[name=?]", "project[customer]"
      assert_select "input#project_hourly_rate[name=?]", "project[hourly_rate]"
    end
  end
end
