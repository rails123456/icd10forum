require 'spec_helper'

describe "faqs/new" do
  before(:each) do
    assign(:faq, stub_model(Faq,
      :faq_item => "MyString",
      :faq_q => "MyString",
      :faq_a => "MyString"
    ).as_new_record)
  end

  it "renders new faq form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => faqs_path, :method => "post" do
      assert_select "input#faq_faq_item", :name => "faq[faq_item]"
      assert_select "input#faq_faq_q", :name => "faq[faq_q]"
      assert_select "input#faq_faq_a", :name => "faq[faq_a]"
    end
  end
end
