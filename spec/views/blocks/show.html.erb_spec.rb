require 'spec_helper'

describe "blocks/show" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :chapter_id => 1,
      :block_no => "Block No",
      :block_title => "Block Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Block No/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Block Title/)
  end
end
