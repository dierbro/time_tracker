require 'spec_helper'

describe "activities/edit" do
  before(:each) do
    @activity = assign(:activity, stub_model(Activity,
      :project => nil,
      :duration => "9.99"
    ))
  end

  it "renders the edit activity form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_path(@activity), "post" do
      assert_select "input#activity_project[name=?]", "activity[project]"
      assert_select "input#activity_duration[name=?]", "activity[duration]"
    end
  end
end
