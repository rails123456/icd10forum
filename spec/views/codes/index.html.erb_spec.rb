require 'spec_helper'

describe "codes/index" do
  before(:each) do
    assign(:codes, [
      stub_model(Code,
        :block_id => 1,
        :code_3 => "Code 3",
        :code_6 => "Code 6",
        :code_title => "Code Title"
      ),
      stub_model(Code,
        :block_id => 1,
        :code_3 => "Code 3",
        :code_6 => "Code 6",
        :code_title => "Code Title"
      )
    ])
  end

  it "renders a list of codes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code 3".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code 6".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code Title".to_s, :count => 2
  end
end
