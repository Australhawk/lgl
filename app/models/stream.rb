class Stream < ActiveRecord::Base
  attr_accessible :description, :account, :image, :title, :oficial
  validates_presence_of :description, :account, :title
end
