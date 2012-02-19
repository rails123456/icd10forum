require 'spec_helper'

describe "codes/new" do
  before(:each) do
    assign(:code, stub_model(Code,
      :block_id => 1,
      :code_3 => "MyString",
      :code_6 => "MyString",
      :code_title => "MyString"
    ).as_new_record)
  end

  it "renders new code form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => codes_path, :method => "post" do
      assert_select "input#code_block_id", :name => "code[block_id]"
      assert_select "input#code_code_3", :name => "code[code_3]"
      assert_select "input#code_code_6", :name => "code[code_6]"
      assert_select "input#code_code_title", :name => "code[code_title]"
    end
  end
end
