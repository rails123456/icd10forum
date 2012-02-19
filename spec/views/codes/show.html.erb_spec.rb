require 'spec_helper'

describe "codes/show" do
  before(:each) do
    @code = assign(:code, stub_model(Code,
      :block_id => 1,
      :code_3 => "Code 3",
      :code_6 => "Code 6",
      :code_title => "Code Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code 3/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code 6/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code Title/)
  end
end
