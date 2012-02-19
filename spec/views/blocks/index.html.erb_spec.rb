require 'spec_helper'

describe "blocks/index" do
  before(:each) do
    assign(:blocks, [
      stub_model(Block,
        :chapter_id => 1,
        :block_no => "Block No",
        :block_title => "Block Title"
      ),
      stub_model(Block,
        :chapter_id => 1,
        :block_no => "Block No",
        :block_title => "Block Title"
      )
    ])
  end

  it "renders a list of blocks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Block No".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Block Title".to_s, :count => 2
  end
end
