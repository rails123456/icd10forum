require 'spec_helper'

describe Block do
  it "must have a block_no" do
    block = Block.create
    block.errors[:block_no].should_not be_empty
    block.errors[:block_no].should be_present
  end

  it "must have a block_title" do
    block = Block.create
    block.errors[:block_title].should_not be_empty
    block.errors[:block_title].should be_present
  end

  it "should pass validations if block_no  and block_title are present" do
    block = Block.create(:block_no => '99', :block_title => 'title')
    block.errors.should be_empty
    block.errors.should_not be_present
  end
end
