require 'spec_helper'

describe Code do
  it "must have a 3 chars code" do
    code = Code.create
    code.errors[:code_3].should_not be_empty
    code.errors[:code_3].should be_present
  end

  it "must have a 3-6 chars code" do
    code = Code.create
    code.errors[:code_6].should_not be_empty
    code.errors[:code_6].should be_present
  end

  it "must have a code_title" do
    code = Code.create
    code.errors[:code_title].should_not be_empty
    code.errors[:code_title].should be_present
  end

  it "should pass validations if code_3, code_6 and code_title are present" do
    code = Code.create(:code_3 => 'Z99',:code_6 => 'Z99999', :code_title => 'title')
    code.errors.should be_empty
    code.errors.should_not be_present
  end
end
