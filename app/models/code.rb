class Code < ActiveRecord::Base
  belongs_to :block

  validates_presence_of :code_3, :message => 'is required'
  validates_presence_of :code_6, :message => 'is required'
  validates_presence_of :code_title, :message => 'is required'
end
