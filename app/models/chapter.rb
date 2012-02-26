class Chapter < ActiveRecord::Base
  has_many :blocks
  has_many :codes, :through => :blocks

  validates_presence_of :chap_no, :message => 'is required'
  validates_presence_of :chap_title, :message => 'is required'

  def to_s
    chap_title
  end
end
