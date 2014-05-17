require 'spec_helper'

describe "activities/new" do
  before(:each) do
    assign(:activity, stub_model(Activity,
      :project => nil,
      :duration => "9.99"
    ).as_new_record)
  end

  it "renders new activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activities_path, "post" do
      assert_select "input#activity_project[name=?]", "activity[project]"
      assert_select "input#activity_duration[name=?]", "activity[duration]"
    end
  end
end
