require 'spec_helper'

describe "blocks/new" do
  before(:each) do
    assign(:block, stub_model(Block,
      :chapter_id => 1,
      :block_no => "MyString",
      :block_title => "MyString"
    ).as_new_record)
  end

  it "renders new block form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blocks_path, :method => "post" do
      assert_select "input#block_chapter_id", :name => "block[chapter_id]"
      assert_select "input#block_block_no", :name => "block[block_no]"
      assert_select "input#block_block_title", :name => "block[block_title]"
    end
  end
end
