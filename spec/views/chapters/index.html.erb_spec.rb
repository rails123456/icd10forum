require 'spec_helper'

describe "chapters/index" do
  before(:each) do
    assign(:chapters, [
      stub_model(Chapter,
        :chap_no => "Chap No",
        :chap_title => "Chap Title"
      ),
      stub_model(Chapter,
        :chap_no => "Chap No",
        :chap_title => "Chap Title"
      )
    ])
  end

  it "renders a list of chapters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Chap No".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Chap Title".to_s, :count => 2
  end
end
