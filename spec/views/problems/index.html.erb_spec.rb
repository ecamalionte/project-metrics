require 'spec_helper'

describe "problems/index" do
  before(:each) do
    assign(:problems, [
      stub_model(Problem,
        :title => "Title",
        :desc => "Desc"
      ),
      stub_model(Problem,
        :title => "Title",
        :desc => "Desc"
      )
    ])
  end

  it "renders a list of problems" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Desc".to_s, :count => 2
  end
end
