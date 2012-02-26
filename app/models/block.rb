class Block < ActiveRecord::Base
  belongs_to :chapter
  has_many :codes

  validates_presence_of :block_no, :message => 'is required'
  validates_presence_of :block_title, :message => 'is required'

  def to_s
    block_title
  end
end
