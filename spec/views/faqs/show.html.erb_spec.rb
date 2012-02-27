require 'spec_helper'

describe "faqs/show" do
  before(:each) do
    @faq = assign(:faq, stub_model(Faq,
      :faq_item => "Faq Item",
      :faq_q => "Faq Q",
      :faq_a => "Faq A"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Faq Item/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Faq Q/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Faq A/)
  end
end
