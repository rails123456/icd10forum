require 'spec_helper'

describe "chapters/show" do
  before(:each) do
    @chapter = assign(:chapter, stub_model(Chapter,
      :chap_no => "Chap No",
      :chap_title => "Chap Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Chap No/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Chap Title/)
  end
end
