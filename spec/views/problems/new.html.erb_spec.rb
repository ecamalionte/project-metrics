require 'spec_helper'

describe "problems/new" do
  before(:each) do
    assign(:problem, stub_model(Problem,
      :title => "MyString",
      :desc => "MyString"
    ).as_new_record)
  end

  it "renders new problem form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", problems_path, "post" do
      assert_select "input#problem_title[name=?]", "problem[title]"
      assert_select "input#problem_desc[name=?]", "problem[desc]"
    end
  end
end
