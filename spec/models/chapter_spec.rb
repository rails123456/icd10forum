require 'spec_helper'

Factory.define :chapter do |o|
  o.chap_no '01'
  o.chap_title 'title'
end

Factory.define :block do |o|
  o.block_no '01'
  o.block_title 'title'
end

Factory.define :code do |o|
  o.code_3 'Z99'
  o.code_6 'Z99999'
  o.code_title 'title'
end

describe Chapter do
  it "must have a chap_no" do
    chapter = Chapter.create
    chapter.errors[:chap_no].should_not be_empty
    chapter.errors[:chap_no].should be_present
  end

  it "must have a chap_title" do
    chapter = Chapter.create
    chapter.errors[:chap_title].should_not be_empty
    chapter.errors[:chap_title].should be_present
  end

  it "should pass validations if chap_no and chap_title are present" do
    chapter = Chapter.create(:chap_no => '99', :chap_title => 'title')
    chapter.errors.should be_empty
    chapter.errors.should_not be_present
  end

  describe 'Association' do
    it "a chapter can contain a block(s)" do
      #chapter = Chapter.create(:chap_no => '99', :chap_title => 'title')
      chapter = Factory(:chapter)
      #block = Block.new(:block_no => '99',:block_title => 'title')
      block = Factory(:block)
      chapter.blocks << block
      assert chapter.save
      assert chapter.blocks.size == 1
    end

    it "a chapter can contain a code(s) through blocks" do
      chapter = Factory(:chapter)
      block = Factory(:block)
      code = Factory(:code)
      block.codes << code
      chapter.blocks << block
      assert chapter.save
      assert chapter.blocks.size == 1
      assert chapter.blocks.codes.size == 1
    end
  end
end
