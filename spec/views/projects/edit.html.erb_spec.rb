require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :name => "MyString",
      :customer => nil,
      :hourly_rate => "9.99"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_path(@project), "post" do
      assert_select "input#project_name[name=?]", "project[name]"
      assert_select "input#project_customer[name=?]", "project[customer]"
      assert_select "input#project_hourly_rate[name=?]", "project[hourly_rate]"
    end
  end
end
