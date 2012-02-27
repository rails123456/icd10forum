require 'spec_helper'

describe "faqs/index" do
  before(:each) do
    assign(:faqs, [
      stub_model(Faq,
        :faq_item => "Faq Item",
        :faq_q => "Faq Q",
        :faq_a => "Faq A"
      ),
      stub_model(Faq,
        :faq_item => "Faq Item",
        :faq_q => "Faq Q",
        :faq_a => "Faq A"
      )
    ])
  end

  it "renders a list of faqs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Faq Item".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Faq Q".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Faq A".to_s, :count => 2
  end
end
