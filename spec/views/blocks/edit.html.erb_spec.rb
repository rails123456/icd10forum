require 'spec_helper'

describe "blocks/edit" do
  before(:each) do
    @block = assign(:block, stub_model(Block,
      :chapter_id => 1,
      :block_no => "MyString",
      :block_title => "MyString"
    ))
  end

  it "renders the edit block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blocks_path(@block), :method => "post" do
      assert_select "input#block_chapter_id", :name => "block[chapter_id]"
      assert_select "input#block_block_no", :name => "block[block_no]"
      assert_select "input#block_block_title", :name => "block[block_title]"
    end
  end
end
