require 'spec_helper'

describe "chapters/new" do
  before(:each) do
    assign(:chapter, stub_model(Chapter,
      :chap_no => "MyString",
      :chap_title => "MyString"
    ).as_new_record)
  end

  it "renders new chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chapters_path, :method => "post" do
      assert_select "input#chapter_chap_no", :name => "chapter[chap_no]"
      assert_select "input#chapter_chap_title", :name => "chapter[chap_title]"
    end
  end
end
